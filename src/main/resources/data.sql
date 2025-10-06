--1件目のデータ登録
INSERT INTO todos(todo, detail, created_at, updated_at)
VALUES ('買い物', 'スーパーで食材を購入する', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
--2件目のデータ登録
INSERT INTO todos(todo, detail, created_at, updated_at)
VALUES ('図書館に行く', '本を借りる', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
--3件目のデータ登録
INSERT INTO todos(todo, detail, created_at, updated_at)
VALUES ('ジムに行く', '運動する', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
--認証テーブルへのダミーデータの追加
	--パスワード:adminpass
INSERT INTO authentications(username, password, authority, displayname)
VALUES ('admin', '$2a$10$XWO0U3zU/qF.tr/Va5urie6wRH4lscnVYHtttmdFbwPuR52qSmtOu', 'ADMIN', '管理太郎');
	--パスワード:userpass
--認証テーブルへのダミーデータの追加
INSERT INTO authentications(username, password, authority, displayname)
VALUES ('user', '$2a$10$TNh8Fy3m67bBraLj.873VuvmCtPKPumcsqPKfSmxejNpSNubFtdhG', 'USER', '一般花子');	