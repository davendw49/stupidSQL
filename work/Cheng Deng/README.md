# stupidSQL
This is a tiny and stupid DataBase implemented by our team.
>I am one of the editor Cheng Deng, the captain


#### Detailed Specification
stupidSQL consists of seven components:
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