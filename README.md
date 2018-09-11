# stupidSQL
This is a tiny and stupid DataBase implemented by our team.

我们基于浙江大学数据库实践课程的大设计miniSQL的buffer和catalog代码，重构了record机制、interpreter机制和去除了我们认为冗余的api机制，添加了基于倒排索引的关键词查询功能，基于字符语义分析的审计回滚机制，简单的实现了一个可以使用关键词搜索的关系型数据库。