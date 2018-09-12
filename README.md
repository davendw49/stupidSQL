# stupidSQL
This is a tiny and stupid DataBase implemented by our team.

我们基于浙江大学数据库实践课程的大设计miniSQL的buffer和catalog代码，重构了record机制、interpreter机制和去除了我们认为冗余的api机制，添加了基于倒排索引的关键词查询功能，基于字符语义分析的审计回滚机制，简单的实现了一个可以使用关键词搜索的关系型数据库。

#Introduction
stupidSQL支持属性的以下数据类型：

* int
* float
* char(n),1<=n<=255

stupidSQL支持以下标准SQL语句。
请注意，所有SQL语句都应该**END WITH";"**和**所有字符都应该是小写**。

* create / drop table
```sql
create table tableName (attrA int, attrB float unique, attrC char(20), primary key(attrX));
drop table tableName;
```

* create / drop index
```sql
create index indexName on tableName(attrName);
drop index indexName;
```

* select
```sql
select attrA, attrB from tableName where attrC = X;
select * from tableName;
```

* insert
```sql
insert into tableName values (valueA, valueB, valueC);
```

* delete
```sql
delete from tableName where attrA >= X and attrB < Y;
```
* quit

* import SQL file
```sql
exec fileName.sql
```

#### Detailed Specification
stupidSQL基本组成部分：

* `interpreter`
解释SQL语句，调用API并返回结果,并提供执行SQL语句的API，将`Interpreter`与其他组件连接起来。

* `record`
创建/删除文件，插入/删除/选择元组。

* `BPlusTree`
创建/删除B +树，插入/删除/选择键。

* `Catalog`
访问和操作表，属性和索引的元数据。

* `buffer`
读/写块，缓冲区替换，记录状态和锁定。

* `Date`
目录/数据/索引文件。

* `keyword`
关键词查询组建，包含倒排索引的构建，关键词语义解析。

* `audit`
审计模块与回滚机制的运行。




在此感谢浙江大学[郭爽](https://github.com/sbj1234567892010)同学的鼎力相助！


#Reference
* [MiniSQL](https://github.com/davendw49/Awwwesome-MiniSQL "MiniSQL")

* [《MySQL核心内幕》](https://book.douban.com/subject/4219798/)
* [《深入理解MySQL》](https://book.douban.com/subject/4022870/)
* [how does a relational database work](http://coding-geek.com/how-databases-work/ "guidebook")