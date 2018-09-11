import pymysql
import jieba


# 打开数据库连接
db = pymysql.connect("localhost", "root", "kellydc", "stupidSQL")

# 使用cursor()方法获取操作游标
cursor = db.cursor()

id_set = []
name_set = []
text_set = []

# SQL 查询语句
sql = "SELECT * FROM test2;"
try:
    # 执行SQL语句
    cursor.execute(sql)
    # 获取所有记录列表
    results = cursor.fetchall()
    for row in results:
        id_set.append(row[0])
        name_set.append(row[1])
        text_set.append(row[2])
        # 打印结果
        # print("id=%d,name=%s,text=%s" % (id, name, text))
except:
   print ("Error: unable to fetch data")

candidate_set = []

# b = jieba.lcut_for_search(input_order, HMM=True)
# time=0
for sentence in text_set:
    str = jieba.lcut(sentence, cut_all=False)
    # print(str)
    not_str = []
    for byte in range(0,len(str)):
        # print(len(str[byte]))
        if len(str[byte])==1:
            # str.remove(byte)
            not_str.append(byte)

    # print(len(not_str))
    for i in reversed(not_str):
        # print(i)
        str.pop(i)

    candidate_set.append(str)
    

invert_index = {}

print(candidate_set)

fw=open('test2.index','w+')

for index in range(0,len(candidate_set)):
    one_list = candidate_set[index]
    this_id = id_set[index]
    for word in one_list:
        if word in invert_index.keys():
            invert_index[word].append(this_id)
        else:
            tmp = []
            invert_index[word] = tmp
            invert_index[word].append(this_id)


for key in invert_index.keys():
    print(key, file = fw, end = " ")
    for item in invert_index[key]:
        print(item, file = fw, end = ",")
    print(file = fw)

# 关闭数据库连接
db.close()
fw.close()