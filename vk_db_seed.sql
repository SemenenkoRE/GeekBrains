DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;
USE vk;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    firstname VARCHAR(50),
    lastname VARCHAR(50) COMMENT 'Фамиль',
    email VARCHAR(120) UNIQUE,
    phone BIGINT, 
    INDEX users_phone_idx(phone),
    INDEX users_firstname_lastname_idx(firstname, lastname)
);


DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT NOW(),
    INDEX messages_from_user_id (from_user_id),
    INDEX messages_to_user_id (to_user_id),
    FOREIGN KEY (from_user_id) REFERENCES users(id),
    FOREIGN KEY (to_user_id) REFERENCES users(id)
);


DROP TABLE IF EXISTS friend_requests;
CREATE TABLE friend_requests (
	-- id SERIAL PRIMARY KEY, -- changed to combined primary key (initiator_user_id, target_user_id)
	initiator_user_id BIGINT UNSIGNED NOT NULL,
    target_user_id BIGINT UNSIGNED NOT NULL,
    -- `status` TINYINT UNSIGNED,
    `status` ENUM('requested', 'approved', 'unfriended', 'declined'),
	requested_at DATETIME DEFAULT NOW(),
	confirmed_at DATETIME,
	INDEX (initiator_user_id),
    INDEX (target_user_id),
    PRIMARY KEY (initiator_user_id, target_user_id),
    FOREIGN KEY (initiator_user_id) REFERENCES users(id),
    FOREIGN KEY (target_user_id) REFERENCES users(id)
);



DROP TABLE IF EXISTS communities;
CREATE TABLE communities(
	id SERIAL PRIMARY KEY,
	name VARCHAR(150),
    INDEX communities_name_idx(name)
);
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (2,'atque'),(1,'beatae'),(9,'est'),(5,'eum'),(7,'hic'),(6,'nemo'),(8,'quis'),(4,'rerum'),(10,'tempora'),(3,'voluptas');
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;

DROP TABLE IF EXISTS users_communities;
CREATE TABLE users_communities(
	user_id BIGINT UNSIGNED NOT NULL,
	community_id BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY (user_id, community_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (community_id) REFERENCES communities(id)
);


DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    created_at DATETIME DEFAULT NOW()
);

/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES 
	(1,'Photo','2003-07-09 10:08:05'),
	(2,'Music','2009-06-19 20:08:09'),
	(3,'Video','1984-04-18 01:55:09'),
	(4,'Post','2001-04-17 06:47:52');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;

DROP TABLE IF EXISTS media;
CREATE TABLE media(
	id SERIAL PRIMARY KEY,
    media_type_id BIGINT UNSIGNED NOT NULL,
    user_id BIGINT UNSIGNED NOT NULL,
  	body text,
    filename VARCHAR(255),
    size INT,
	metadata JSON,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	INDEX (user_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
);


DROP TABLE IF EXISTS likes;
CREATE TABLE likes(
	id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW()
    , FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE restrict
    , FOREIGN KEY (media_id) REFERENCES media(id)
);




DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
	user_id SERIAL PRIMARY KEY,
    gender CHAR(1),
    birthday DATE,
	photo_id BIGINT UNSIGNED NULL,
    created_at DATETIME DEFAULT NOW(),
    hometown VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE restrict,
    FOREIGN KEY (photo_id) REFERENCES media(id)
);


INSERT INTO `likes` VALUES 
('16','78','1', now()),
('17','45','1', now()),
('18','94','1', now()),
('19','57','2', now()),
('20','69','2', now()),
('21','17','2', now()),
('22','7','8', now()),
('23','85','9', now()),
('24','63','10', now()),
('25','7','11', now()),
('26','57','12', now()),
('27','85','13', now()),
('28','84','14', now()),
('29','84','14', now()),
('30','84','14', now()),
('31','84','14', now()),
('32','84','14', now())
;


insert into messages values
	('101', '1', '3', 'ghdj hfhj', now()),
    ('102', '2', '1', 'gdcjk fdlkvj dioffk', now()),
    ('103', '1', '10', 'xczd dsczdfv', now()),
    ('104', '1', '3', 'sdcs 9889 098 sd', now()),
    ('105', '3', '1', 'scd hello sdkj', now()),
    ('106', '3', '1', 'scd zdcs lo sdkj', now());



-- Поиск наиболее активного переписчика с user ID #1 (наиболее активным считается тот, кто чаще ему писал).

SELECT
	COUNT(id) AS 'Количество сообщений',
	from_user_id AS 'ID отправителя',
	(SELECT CONCAT(firstname, " ", lastname) FROM users WHERE from_user_id = users.id) AS 'Имя отправителя'
FROM messages WHERE  to_user_id =1 GROUP BY  from_user_id ORDER BY COUNT(id) DESC LIMIT 1;
       


-- Выведено на экран 10 самых молодых User и количество их лайков;

SELECT
	user_id,
	COUNT(user_id) AS 'Количество лайков',
	(SELECT birthday FROM `profiles` WHERE user_id = likes.user_id) AS 'Дата рождения'
FROM likes GROUP BY user_id ORDER BY 'Дата рождения' DESC LIMIT 10;


-- Пол тех юзеров, которые делали лайки;
-- Не смог указать кого больше


(SELECT
	gender,
	count(gender)
FROM `profiles` WHERE gender = 'f' AND user_id IN (SELECT user_id FROM likes))
UNION
(SELECT
	gender,
	count(gender)
FROM `profiles` WHERE gender = 'm' AND user_id IN (SELECT user_id FROM likes))
