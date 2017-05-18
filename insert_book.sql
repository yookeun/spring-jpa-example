CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '고유키',
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '계정명',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '이름',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `pub` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '출판사_고유키',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '출판사명',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '고유키',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제목',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '설명',
  `pub_id` bigint(20) NOT NULL COMMENT '출판사_고유키',
  `user_id` bigint(20) NOT NULL COMMENT '사용자_고유키',
  `reg_date` datetime NOT NULL COMMENT '등록일',
  PRIMARY KEY (`id`),
  KEY `user_fk_idx` (`pub_id`),
  KEY `user_fk_idx1` (`user_id`),
  CONSTRAINT `pub_fk` FOREIGN KEY (`pub_id`) REFERENCES `pub` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO user(username, name) VALUES('hong','홍길동');
INSERT INTO user(username, name) VALUES('lee','이순신');
INSERT INTO user(username, name) VALUES('kang','강감찬');

INSERT INTO pub(name) VALUES('A출판사');
INSERT INTO pub(name) VALUES('B출판사');
INSERT INTO pub(name) VALUES('C출판사');

INSERT INTO book(title, description, pub_id, user_id, reg_date) VALUES('A-1 BOOK', 'A-1 BOOK DESC', 1, 1, NOW());
INSERT INTO book(title, description, pub_id, user_id, reg_date) VALUES('A-2 BOOK', 'A-2 BOOK DESC', 2, 1, NOW());
INSERT INTO book(title, description, pub_id, user_id, reg_date) VALUES('A-3 BOOK', 'A-3 BOOK DESC', 3, 1, NOW());                                                                                                     
INSERT INTO book(title, description, pub_id, user_id, reg_date) VALUES('B-1 BOOK', 'B-1 BOOK DESC', 1, 2, NOW());
INSERT INTO book(title, description, pub_id, user_id, reg_date) VALUES('B-2 BOOK', 'B-2 BOOK DESC', 2, 2, NOW());
INSERT INTO book(title, description, pub_id, user_id, reg_date) VALUES('B-3 BOOK', 'B-3 BOOK DESC', 3, 2, NOW());                                                                                                     
INSERT INTO book(title, description, pub_id, user_id, reg_date) VALUES('C-1 BOOK', 'C-1 BOOK DESC', 1, 3, NOW());
INSERT INTO book(title, description, pub_id, user_id, reg_date) VALUES('C-2 BOOK', 'C-2 BOOK DESC', 2, 3, NOW());
INSERT INTO book(title, description, pub_id, user_id, reg_date) VALUES('C-3 BOOK', 'C-3 BOOK DESC', 3, 3, NOW());





