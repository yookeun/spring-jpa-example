CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reg_date` datetime NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



INSERT INTO test_db.book(author, title, description, reg_date) VALUES('kim', 'Who are you', 'novel', NOW());
INSERT INTO test_db.book(author, title, description, reg_date) VALUES('홍길동', '누구냐 넌?', '소설', NOW());