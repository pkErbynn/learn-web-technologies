# Intro to Databases with PostgreSQL

## Presentation
* Core topics includes
    * Database concepts
    * Primary DBMS languages
    * Relational modelling
    * Database design views
    * SQL

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
    * address
    
    ```roomsql
      CREATE TABLE students (
          student_id smallint NOT NULL,
          student_first_name character varying(20) NOT NULL,
          student_last_name character varying(20) NOT NULL,
          student_email character varying(20) NOT NULL,
          student_address character varying(40) NOT NULL
      );
    ```
  
* With DML, INSERT, insert 5 records into the relation. Sample: 
    ```roomsql
     INSERT INTO students VALUES(1, 'pk', 'erbynn', 'john.erbynn@turntabl.io', 'taifa, accra, ghana');
    ```
* Fetch all records with SELECT query.
    ```roomsql
      SELECT * FROM students;
    ```
* Show only the first names and emails of all student.
* Show only the first names and emails of the first three students.
* Show a student with a particular first name using WHERE clause.