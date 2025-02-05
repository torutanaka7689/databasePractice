-- 問題1. postgresqlでpracticeデータベースを生成するSQL文を記述してください。
CREATE DATABASE practice;
-- 問題2. postgresqlでpracticeデータベースのusersテーブルを生成するSQL文を記述してください。
CREATE TYPE genders As ENUM('Man','Woman','Other');
CREATE TABLE users
(id SERIAL NOT NULL,
name char(255) NOT NULL DEFAULT '氏名',
age integer NOT NULL DEFAULT 0,
gender genders NOT NULL DEFAULT 'Other', 
PRIMARY KEY(id));
COMMENT ON COLUMN users.name IS '氏名';
COMMENT ON COLUMN users.gender IS '性別';

-- 問題3. postgresqlでpracticeデータベースのjobsテーブルを生成するSQL文を記述してください。
CREATE TABLE jobs
(id SERIAL NOT NULL,
user_id integer NOT NULL,
name char(255) NOT NULL DEFAULT '会社員',
PRIMARY KEY(id),
FOREIGN KEY (user_id) REFERENCES users(id));
COMMENT ON COLUMN jobs.name IS '仕事名';