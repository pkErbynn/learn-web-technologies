# Intro to Databases with PostgreSQL

## Presentation
* Hands-on practice introduction
    * Create table
    * Select and Insert queries
* Core topics includes
    * Database concepts
    * Primary DBMS languages
    * Relational modelling
    * Database design views
    * SQL(Create, Select, Insert, Aggregation & grouping, Joins)

* Slides available [here](https://docs.google.com/presentation/d/1CuvzXJ5ebdV-zoUfpcPn4WNDjiJBp4CEcWFD5lAeUiw/edit?usp=sharing).

## Labs - 02
* In case you've not setup a local Postgres yet, follow a quick step-by-step guide [here](https://www.postgresqltutorial.com/install-postgresql/). 
* You might need to add paths, ``.../bin`` and ``.../lib``, to the windows system environment variables.
* In short, for linux;
    ```aidl
    sudo apt-get install postgresql
    ``` 
* With DDL, CREATE, a table called *students* with the attributes:
    * student_id
    * first_name
    * last_name
    * email
    * score
    
    ```roomsql
      CREATE TABLE students (
          student_id smallint NOT NULL,
          student_first_name character varying(20) NOT NULL,
          student_last_name character varying(20) NOT NULL,
          student_email character varying(20) NOT NULL,
          student_score real NOT NULL
      );
    ```
  
* With DML, INSERT, insert 5 records into the relation. Sample: 
    ```roomsql
     INSERT INTO students VALUES(1, 'pk', 'erbynn', 'john.erbynn@turntabl.io', 82.5);
    ```
* Fetch all records with SELECT query.
    ```roomsql
      SELECT * FROM students;
    ```
* Show only the first names and emails of all students.
* Show only the first names and emails of all students order by name.
* Show only the last names and emails of the first three students.
* Show a student with a particular first name using the WHERE clause.
* Display the student with the high score.
* What is the total score of all the studSQLs?
 JDBC driver is needed.
 
### Connecting DB to Java using JDBC
We'll learn how to use a database from a Java Application. We can achieve that using the JDBC - Java Database Connectivity.
Using JDBC, we can not only work with databases, but also spreadsheets and flat files.

JDBC acts as the middleman between a Java application and a data source. Also, a particular data source from an application, a JDBC driver for that data source is needed.
For example, to access a postres database from a an application (with Java), we need an Postgres JDBC driver. Similarly, for sqlite database, an SQLite JDBC driver is needed.

The *driver* is simply a Java library containing classes that implement the JDBC API. 
Special and key advantage of using JDBC drivers is that since all JDBC drivers (sqliteJDBC, postgresJDBC) have to implement the same interfaces of the JDBC API, it's not difficult to change the data source an application uses (not that simple in reality :)).  

Now, let's setup guide...
* Download JDBC driver for Postgres. Select 'PostgreSQL JDBC 4.2 Driver, 42.2.20' from the link - https://jdbc.postgresql.org/download.html 
* Create a new Java project. I used IntelliJ IDEA in my case.
* Add the JDBC driver to the java project. Go to *File > Project Structure > Libraries > + > Java > <the_downloaded_jdbc_jar_file> > OK > OK*. Now, the driver library is accessible in our application and can be connected using a Connectiong String (format *jdbc:<driver_type>:<database_path>*)
* Connect to the database from the application. Sample format: `JDBC_URL = "jdbc:postgresql://localhost:5432/<DB_NAME>?user=<USER_NAME>&password=<YOUR_PASSWORD>";`
```java
    public static final String CONNECTION_STRING = "jdbc:postgresql://localhost:5432/learnwebdb-play?user=postgres&password=turntabl";
```
* Sample complete java code.
---
* Stretch 
    * Below an illustration of entity relation join
    
    <p align="center">
    <img src="er-join.png" width="500">
    </p>
    
    * Create another possible table(say courses) and make a reference to it from the student table using a foreign key.
    * Query a full detail of student in relation to the new table(courses) using INNER JOIN. 
    * > Hint: [sample here.](https://github.com/pkErbynn/learn-web/blob/master/presentations%20and%20labs/Module%202%20-%20Intro%20to%20Databases%20with%20Postgres/relation-joins.sql)
    

NB:
> * table names should be plural(example, *students*)
> * lower casing(with underscore '_' separation, if two words or more) for attributes
> * use single quote marks(' ') for simple literal strings in SQL 
> * for relation joins, consider creating dependency relation first
 
 ### Other Lookups & Resources
 - [W3 schools dbms](https://www.w3schools.in/dbms/)
 - [PostgreSQL tutorial](https://www.postgresqltutorial.com/)
 - [Tutorialpoint - Learn PostgreSQL](https://www.tutorialspoint.com/postgresql/postgresql_group_by.htm)
 - [YouTube - Entity Relationship Diagram (ERD) Tutorial](https://www.youtube.com/watch?v=QpdhBUYk7Kk)
 - [ER diagram tutorial](https://www.guru99.com/er-diagram-tutorial-dbms.html) 
 - [ERD - Database(ER) design tool](https://erdplus.com/) 

<br>
Please, kindly don't hesitate to hit me up for any question, concern, or clarification on the slides or on the deliverables. 
<br>
Thanks. 

Cheers.
