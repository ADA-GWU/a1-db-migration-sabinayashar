# README

The file is intended to cover the necessary steps to be followed to run the application.

The application was written in Ruby(2.7.2) on Rails(6.1.2.1) and PostgreSQL(13.1) DB were used; therefore, make sure you have downloaded and installed all beforehand.

1. Have 2 tables ready in PostgreSQL DB
   a. STUDENTS (ST_ID int, ST_NAME(varchar(15), ST_LAST(varchar(15)) where ST_ID will be PK
   b. INTERESTS (STUDENT_ID int, INTEREST(varchar(15)) where STUDENT_ID will be FK referencing STUDENTS.ST_ID
   c. insert some values to see the effect 

2. Connect the application to your Postgres server
   a. open database.yml file under config folder
   b. replace database, username, password, and schema_search_path (sym) fields with your credentials

FYI: there are 2 files under db/migrate folder which include migration and rollback scripts for both tables.

3. Open GIT Bash
   a. go inside of an application folder 
   b. type rails db:migrate
   c (optional). check the changes using psql shell
   d. to get back to the structure you have created in step 1 => type rails db:rollback STEP=2 (rolling back last 2 migrations)
   e (optional). check the changes using psql shell
