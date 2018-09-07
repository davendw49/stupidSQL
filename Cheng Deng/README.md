# stupidSQL
This is a tiny and stupid DataBase implemented by our team.
>I am one of the editor Cheng Deng, the captain

select * from person where age = 380;
quit
```

#### Overview
stupidSQL supports the following data types for an attribute:
* int
* float
* char(n), 1 <= n <= 255

stupidSQL supports the following standard SQL statements.
Note that all SQL statements should **END WITH `;`** and **key words should be lowercase**.
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
stupidSQL consists of seven components:
* `Interpreter`
Interpret SQL statements, invoke API and return results.

* `API`
Provide APIs that execute SQL statements, connect `Interpreter` with other components.

* `Record Manager`
Create / delete files, insert / delete / select tuples.

* `Index Manager`
Create / delete B+ trees, insert / delete / select keys.

* `Catalog Manager`
Access and manipulate meta-data of tables, attributes and indexes.

* `Buffer Manager`
Read / write blocks, buffer replacement, record status and locks.

* `DB Files`
Catalog / data / index files.
