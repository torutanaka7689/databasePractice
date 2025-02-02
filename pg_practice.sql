-- 問題1. postgresqlでpracticeデータベースを生成するSQL文を記述してください。
CREATE DATABASE practice;
-- 問題2. postgresqlでpracticeデータベースのusersテーブルを生成するSQL文を記述してください。
# CREATE TABLE users
# (id SERIAL NOT NULL,
# name char(255) NOT NULL DEFAULT '' Comment '氏名'
# age int NOT NULL DEFAULT 0 
# gender enum('Man','Woman','Other') NOT NULL DEFAULT 'Other' Comment '性別',
# PRIMARY KEY(id));

-- 問題3. postgresqlでpracticeデータベースのjobsテーブルを生成するSQL文を記述してください。
# CREATE TABLE jobs
# (id SERIAL NOT NULL,
# user_id int NOT NULL,
# name char(255) NOT NULL DEFAULT '会社員' Comment '仕事名',
# gender enum('Man','Woman','Other') NOT NULL DEFAULT 'Other' Comment '性別',
# PRIMARY KEY(id)
# FOREIGN KEY (user_id) REFERENCES users(id)
);