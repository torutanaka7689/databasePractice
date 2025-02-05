-- 問題1. postgresqlでpracticeデータベースを生成するSQL文を記述してください。
CREATE DATABASE practice;
-- 問題2. postgresqlでpracticeデータベースのusersテーブルを生成するSQL文を記述してください。
CREATE TABLE users
(id SERIAL NOT NULL,
name char(255) NOT NULL DEFAULT COMMENT ON COLUMN users.name IS '氏名',
age integer NOT NULL DEFAULT 0,
gender enum('Man','Woman','Other') NOT NULL DEFAULT 'Other' COMMENT ON COLUMN users.gender IS '性別',
PRIMARY KEY(id));

-- 問題3. postgresqlでpracticeデータベースのjobsテーブルを生成するSQL文を記述してください。
CREATE TABLE jobs
(id SERIAL NOT NULL,
user_id integer NOT NULL,
name char(255) NOT NULL DEFAULT '会社員' COMMENT ON COLUMN jobs.name IS '仕事名',
gender enum ('Man','Woman','Other') NOT NULL DEFAULT COMMENT ON COLUMN jobs.gender IS '性別',
PRIMARY KEY(id),
FOREIGN KEY (user_id) REFERENCES users(id)
);