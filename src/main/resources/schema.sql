--テーブルが存在したら削除する
DROP TABLE IF EXISTS todos;
DROP TABLE IF EXISTS authentications;
DROP TYPE IF EXISTS role;

--テーブルの作成
CREATE TABLE todos(
	--id(することID)：主キー
	id serial PRIMARY KEY,
	--todo(すること)：NULL不許可
	todo VARCHAR(255) NOT NULL,
	--detail(説明)
	detail text,
	--created_at(作成日)
	created_at timestamp without time zone,
	--updated_at(更新日)
	updated_at timestamp without time zone
);

--権限用のENUM型z
CREATE TYPE role AS ENUM('ADMIN', 'USER');

--認証情報を格納するテーブル
CREATE TABLE authentications(
	--ユーザー名:主キー
	username VARCHAR(255) PRIMARY KEY,
	--パスワード
	password VARCHAR(255) NOT NULL,
	--権限
	authority role NOT NULL,
	--表示名
	displayname VARCHAR(255) NOT NULL
)