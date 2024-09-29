CREATE TABLE `book` (
	`book_seq`	INT	NOT NULL,
	`book_id`	VARCHAR(50)	NOT NULL,
	`book_nm`	VARCHAR(100)	NOT NULL,
	`book_count`	INT	NOT NULL,
	`ins_dt`	TIMESTAMP	NULL,
	`upd_dt`	TIMESTAMP	NULL
);

CREATE TABLE `rent` (
	`rent_seq`	INT	NOT NULL,
	`rent_id`	VARCHAR(50)	NOT NULL,
	`rent_state`	VARCHAR(50)	NOT NULL,
	`ins_dt`	TIMESTAMP	NULL,
	`upd_dt`	TIMESTAMP	NULL,
	`user_seq`	INT	NOT NULL,
	`book_seq`	INT	NOT NULL
);

CREATE TABLE `user` (
	`user_seq`	INT	NOT NULL,
	`user_id`	VARCHAR(100)	NOT NULL,
	`user_nm`	VARCHAR(50)	NOT NULL,
	`user_pw`	VARCHAR(100)	NOT NULL,
	`ins_dt`	TIMESTAMP	NULL,
	`upd_dt`	TIMESTAMP	NULL
);

ALTER TABLE `book` ADD CONSTRAINT `PK_BOOK` PRIMARY KEY (
	`book_seq`
);

ALTER TABLE `rent` ADD CONSTRAINT `PK_RENT` PRIMARY KEY (
	`rent_seq`
);

ALTER TABLE `user` ADD CONSTRAINT `PK_USER` PRIMARY KEY (
	`user_seq`
);