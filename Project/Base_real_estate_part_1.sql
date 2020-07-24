		DROP DATABASE IF EXISTS Base_of_real_estate;
		CREATE DATABASE Base_of_real_estate;
		USE Base_of_real_estate;


-- В данную таблицу вносяться агентства недвижимости, собственники объектов, с которыми компания будет взаимодействовать далее.
-- В дальнейшем мы будем их обзванивать, чтобы предложить сотрудничество в области оценки для их клиентов или проведении ценового анализа или др. услуг
-- Не всех агентов или собственников на данный момент мы знаем имя или название компании, но они будут отличаться телефонами


		DROP TABLE IF EXISTS Agent;
		CREATE TABLE Agent (
			ID_ag SERIAL PRIMARY KEY,
			Name_ag VARCHAR(100) NULL,
			Status_ag VARCHAR(30) NOT NULL,
			first_Phone_ag VARCHAR(50) NULL,
			second_Phone_ag VARCHAR(50) NULL,
			Function_ag VARCHAR(30),
			INDEX ind_Name_ag(Name_ag),
			INDEX ind_first_Phone_ag(first_Phone_ag),
			INDEX ind_second_Phone_ag(second_Phone_ag),
			INDEX ind_Function_ag(Function_ag)
		);


-- Внесение информации в данную таблицу

		INSERT INTO Agent VALUES ('1', 'Неинтерисуемое агенство', 'Агенство', 'н/д', '', 'н/д');
		INSERT INTO Agent VALUES ('2', 'A NOTA BENE', 'Агенство', '+7 901 129-04-00', '', 'Оценка');
		INSERT INTO Agent VALUES ('3', 'EuroDoma', 'Агенство', '+7 901 129-32-01', '', 'Оценка');
		INSERT INTO Agent VALUES ('4', 'golden city', 'Агенство', '+7 901 129-71-41', '', 'Оценка');
		INSERT INTO Agent VALUES ('5', 'king estate', 'Агенство', '+7 901 129-92-91', '', 'Оценка');
		INSERT INTO Agent VALUES ('6', 'Magazin.Group', 'Агенство', '+7 981 666-13-27', '', 'Оценка');
		INSERT INTO Agent VALUES ('7', 'Malina Property', 'Агенство', '+7 901 221-01-91', '+7 981 666-11-54', 'Оценка');
		INSERT INTO Agent VALUES ('8', 'New Life group', 'Потенциальный собственник', '+7 981 666-05-62', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('9', 'Pan Capital Realty', 'Агенство', '+7 981 666-50-07', '+7 901 129-83-87', 'Оценка');
		INSERT INTO Agent VALUES ('10', 'RUSSIERTY', 'Агенство', '+7 901 129-50-51', '', 'Оценка');
		INSERT INTO Agent VALUES ('11', 'SM2', 'Агенство', '+7 983 666-79-35', '', 'Оценка');
		INSERT INTO Agent VALUES ('12', 'АБ Риэлти', 'Агенство', '+7 914 370-70-78', '', 'Оценка');
		INSERT INTO Agent VALUES ('13', 'Аврора пропети', 'Агенство', '+7 901 129-94-91', '', 'Оценка');
		INSERT INTO Agent VALUES ('14', 'Академ консалт', 'Агенство', '+7 981 666-82-63', '+7 983 666-85-16', 'Оценка');
		INSERT INTO Agent VALUES ('15', 'Акинита-Недвижимость', 'Агенство', '+7 981 666-22-06', '', 'Оценка');
		INSERT INTO Agent VALUES ('16', 'Алексей Черняков', 'Потенциальный собственник', '+7 901 477-08-76', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('17', 'АНЭКС', 'Агенство', '+7 901 129-87-07', '', 'Оценка');
		INSERT INTO Agent VALUES ('18', 'АрендаДА', 'Потенциальный собственник', '+7 901 129-73-03', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('19', 'Аркадия', 'Агенство', '+7 901 129-88-28', '', 'Оценка');
		INSERT INTO Agent VALUES ('20', 'АС-Риэлти', 'Агенство', '+7 901 129-71-41', '', 'Оценка');
		INSERT INTO Agent VALUES ('21', 'Бизнес-парк Орджоникидзе 11', 'Потенциальный собственник', '+7 981 666-13-51', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('22', 'Виктор Выпор', 'Агент', '+7 901 221-21-33', '', 'Оценка');
		INSERT INTO Agent VALUES ('23', 'Влако', 'Агенство', '+7 901 129-76-54', '', 'Оценка');
		INSERT INTO Agent VALUES ('24', 'Гарант', 'Агенство', '+7 901 129-84-00', '', 'Оценка');
		INSERT INTO Agent VALUES ('25', 'Геометрия', 'Агенство', '+7 901 221-55-01', '', 'Оценка');
		INSERT INTO Agent VALUES ('26', 'Давид Голдман', 'Потенциальный собственник', '+7 901 221-13-73', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('27', 'Иван Васильевич Стерлингов', 'Агент', '+7 968 826-40-44', '', 'Оценка');
		INSERT INTO Agent VALUES ('28', 'Космос Недвижимость Групп', 'Агенство', '+7 901 129-75-43', '+7 981 666-09-26', 'Оценка');
		INSERT INTO Agent VALUES ('29', 'Марина Галкина', 'Агент', '+7 981 666-11-54', '', 'Оценка');
		INSERT INTO Agent VALUES ('30', 'МЕТА', 'Агенство', '+7 981 666-30-59', '', 'Оценка');
		INSERT INTO Agent VALUES ('31', 'Мигдаль Недвижимость', 'Агенство', '+7 983 666-42-63', '', 'Оценка');
		INSERT INTO Agent VALUES ('32', 'МИРА', 'Агенство', '+7 981 333-93-76', '', 'Оценка');
		INSERT INTO Agent VALUES ('33', 'н/д', 'Агент', '+7 981 666-05-60', '', 'Оценка');
		INSERT INTO Agent VALUES ('34', '3R Consulting', 'Агенство', '+7 901 129-75-72', '', 'Оценка');
		INSERT INTO Agent VALUES ('35', 'Новая жизнь', 'Агенство', '+7 909 269-73-04', '', 'Оценка');
		INSERT INTO Agent VALUES ('36', 'Павел Подбуцкий', 'Потенциальный собственник', '+7 983 666-06-72', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('37', 'Полезная площадь', 'Агенство', '+7 981 666-43-83', '', 'Оценка');
		INSERT INTO Agent VALUES ('38', 'РеГрад', 'Агенство', '+7 994 222-35-71', '', 'Оценка');
		INSERT INTO Agent VALUES ('39', 'Ригла', 'Потенциальный собственник', '+7 981 666-17-23', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('40', 'Роман Гришин (ИП Гришин Р. Г.)', 'Агент', '+7 901 129-89-87', '', 'Оценка');
		INSERT INTO Agent VALUES ('41', 'Сергей', 'Агент', '+7 981 666-06-85', '', 'Оценка');
		INSERT INTO Agent VALUES ('42', 'Сергей Алехин', 'Агент', '+7 901 129-78-98', '', 'Оценка');
		INSERT INTO Agent VALUES ('43', 'Сердце столицы', 'Агенство', '+7 901 129-76-78', '', 'Оценка');
		INSERT INTO Agent VALUES ('44', 'Смоленка', 'Агенство', '+7 983 666-11-03', '', 'Оценка');
		INSERT INTO Agent VALUES ('45', 'Стальной Град', 'Агенство', '+7 981 666-13-97', '+7 981 666-13-97', 'Оценка');
		INSERT INTO Agent VALUES ('46', 'н/д', 'Потенциальный собственник', ' +7 903 792-25-03; +7 925 333-80-60', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('47', 'н/д', 'Агент', '+7 901 129-15-25', '', 'Оценка');
		INSERT INTO Agent VALUES ('48', 'н/д', 'Агент', '+7 901 129-26-25', '', 'Оценка');
		INSERT INTO Agent VALUES ('49', 'н/д', 'Потенциальный собственник', '+7 901 129-75-01', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('50', 'н/д', 'Агент', '+7 901 129-80-82', '', 'Оценка');
		INSERT INTO Agent VALUES ('51', 'н/д', 'Потенциальный собственник', '+7 901 221-06-16', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('52', 'н/д', 'Потенциальный собственник', '+7 901 221-06-21', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('53', 'н/д', 'Агент', '+7 901 221-45-95', '', 'Оценка');
		INSERT INTO Agent VALUES ('54', 'н/д', 'Агенство', '+7 901 221-75-25', '', 'Оценка');
		INSERT INTO Agent VALUES ('55', 'н/д', 'Потенциальный собственник', '+7 905 590-02-09', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('56', 'н/д', 'Агент', '+7 912 099-34-03', '', 'Оценка');
		INSERT INTO Agent VALUES ('57', 'н/д', 'Потенциальный собственник', '+7 912 099-41-82', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('58', 'н/д', 'Потенциальный собственник', '+7 981 333-97-83', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('59', 'н/д', 'Агент', '+7 981 666-05-60', '', 'Оценка');
		INSERT INTO Agent VALUES ('60', 'н/д', 'Потенциальный собственник', '+7 981 666-29-31', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('61', 'н/д', 'Потенциальный собственник', '+7 981 666-71-83', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('62', 'н/д', 'Потенциальный собственник', '+7 981 666-79-94', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('63', 'н/д', 'Потенциальный собственник', '+7 981 666-81-61', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('64', 'н/д', 'Потенциальный собственник', '+7 981 666-85-31', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('65', 'н/д', 'Потенциальный собственник', '+7 981 666-87-01', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('66', 'н/д', 'Потенциальный собственник', '+7 981 666-91-80', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('67', 'н/д', 'Потенциальный собственник', '+7 983 666-23-77', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('68', 'н/д', 'Потенциальный собственник', '+7 983 666-25-57', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('69', 'н/д', 'Потенциальный собственник', '+7 983 666-26-37', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('70', 'н/д', 'Агент', '+7 983 666-27-15', '', 'Оценка');
		INSERT INTO Agent VALUES ('71', 'н/д', 'Потенциальный собственник', '+7 983 666-49-05', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('72', 'н/д', 'Потенциальный собственник', '+7 983 666-70-76', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('73', 'н/д', 'Потенциальный собственник', '+7 983 666-75-58', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('74', 'н/д', 'Потенциальный собственник', '+7 983 666-80-38', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('75', 'н/д', 'Потенциальный собственник', '+7 983 666-84-99', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('76', 'н/д', 'Потенциальный собственник', '+7 983 666-85-54', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('77', 'н/д', 'Потенциальный собственник', '+7 983 666-88-97', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('78', 'н/д', 'Потенциальный собственник', '+7 983 666-89-30', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('79', 'н/д', 'Потенциальный собственник', '+7 983 666-90-06', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('80', 'н/д', 'Потенциальный собственник', '+7 983 666-91-42', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('81', 'н/д', 'Потенциальный собственник', '+7 994 222-05-29', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('82', 'н/д', 'Потенциальный собственник', '+7 994 222-13-83', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('83', 'н/д', 'Агент', '+7 994 222-16-74', '', 'Оценка');
		INSERT INTO Agent VALUES ('84', 'н/д', 'Потенциальный собственник', '+7 994 222-17-97', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('85', 'н/д', 'Потенциальный собственник', '+7 994 222-18-28', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('86', 'н/д', 'Агент', '+7 994 222-34-19', '', 'Оценка');
		INSERT INTO Agent VALUES ('87', 'Gladston', 'Агенство', '+7 983 666-05-21', '', 'Оценка');
		INSERT INTO Agent VALUES ('88', 'Bridgeford Capital', 'Агенство', '+7 981 666-26-87', '', 'Оценка');
		INSERT INTO Agent VALUES ('89', 'OXE CAPITAL', 'Агенство', '+7 994 222-09-93', '', 'Оценка');
		INSERT INTO Agent VALUES ('90', 'RED', 'Агенство', '+7 994 222-41-19', '', 'Оценка');
		INSERT INTO Agent VALUES ('91', 'Herzen Capital', 'Потенциальный собственник', '+7 981 666-13-05', '', 'Оценка');
		INSERT INTO Agent VALUES ('92', 'КиК недвижимость', 'Агенство', '+7 981 666-91-28', '', 'Оценка');
		INSERT INTO Agent VALUES ('93', 'Марианна', 'Агент', '+7 994 222-14-71', '', 'Оценка');
		INSERT INTO Agent VALUES ('94', 'Университет Мегаполис', 'Агенство', '+7 495 180-32-05', '', 'Оценка');
		INSERT INTO Agent VALUES ('95', 'Якиманка 24', 'Агенство', '+7 994 222-46-02', '', 'Оценка');
		INSERT INTO Agent VALUES ('96', 'Эталон', 'Агенство', '+7 985 211-01-56', '', 'Оценка');
		INSERT INTO Agent VALUES ('97', 'н/д', 'Агент', '+7 981 666-17-53', '', 'Оценка');
		INSERT INTO Agent VALUES ('98', 'н/д', 'Потенциальный собственник', '+7 966 359-67-50', '+7 968 324-77-99', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('99', 'Неинтерисуемое агенство', 'Агенство', 'repeat', '', 'н/д');
		INSERT INTO Agent VALUES ('100', 'IQ ESTATE', 'Агенство', '+7 983 666-49-30', '', 'Оценка');
		INSERT INTO Agent VALUES ('101', 'н/д', 'Агенство', 'н/д', '', 'н/д');
		INSERT INTO Agent VALUES ('102', 'IQ ESTATE', 'Агенство', '+7 983 666-49-30', '', 'Оценка');
		INSERT INTO Agent VALUES ('103', 'Петр Жарков', 'Агент', '+7 968 404-14-43', '', 'Оценка');
		INSERT INTO Agent VALUES ('104', 'BeProfessional-Realty', 'Агенство', '+7 983 666-33-45', '', 'Оценка');
		INSERT INTO Agent VALUES ('105', 'МВБ-Недвижимость', 'Агенство', '+7 901 129-71-91', '', 'Оценка');
		INSERT INTO Agent VALUES ('106', 'МосКом-недвижимость', 'Агенство', '+7 981 666-32-20', '', 'Оценка');
		INSERT INTO Agent VALUES ('107', 'Реком', 'Агенство', '+7 901 129-79-39', '', 'Оценка');
		INSERT INTO Agent VALUES ('108', 'Анна Иваченкова', 'Агент', '+7 983 666-05-64', '', 'Оценка');
		INSERT INTO Agent VALUES ('109', 'н/д', 'Агенство', '+7 901 129-26-25', '', 'Оценка');
		INSERT INTO Agent VALUES ('110', 'Александр Юшутин', 'Агент', '+7 981 666-89-13', '', 'Оценка');
		INSERT INTO Agent VALUES ('111', 'Елена Казилина (ИП Казилина Е. А.)', 'Агент', '+7 994 222-44-30', '', 'Оценка');
		INSERT INTO Agent VALUES ('112', 'Клеар', 'Агенство', '+7 981 666-13-53', '', 'Оценка');
		INSERT INTO Agent VALUES ('113', 'Euro Trade Realty Group', 'Агенство', '+7 994 222-41-65', '', 'Оценка');
		INSERT INTO Agent VALUES ('114', 'Red Square-Real Estate', 'Агенство', '+7 981 666-09-81', '', 'Оценка');
		INSERT INTO Agent VALUES ('115', 'н/д', 'Агент', '+7 981 666-95-38', '', 'Оценка');
		INSERT INTO Agent VALUES ('116', 'Burbon Partners', 'Агенство', '+7 981 333-88-10', '', 'Оценка');
		INSERT INTO Agent VALUES ('117', 'buro-realty Семенов', 'Агенство', '+7 901 129-79-75', '', 'Оценка');
		INSERT INTO Agent VALUES ('118', 'Crystal C.G.', 'Агенство', '+7 981 666-58-92', '', 'Оценка');
		INSERT INTO Agent VALUES ('119', 'Леонид Екимов', 'Агент', '+7 983 666-49-88', '', 'Оценка');
		INSERT INTO Agent VALUES ('120', 'н/д', 'Потенциальный собственник', '+7 981 333-84-51', '', 'Покупка, оценка');
		INSERT INTO Agent VALUES ('121', 'н/д', 'Потенциальный собственник', '+7 981 666-38-82', '', 'Покупка, оценка');


-- Это главная информация по рынку недвижимости. Наша компания в первую очередь оценочная, но она собирает данные по рынку недвижимости для проведения исследований и анализов рынка.
-- Данная таблица одна из четырех посвещена объектам недвижимости. Включает главную информацию.

		DROP TABLE IF EXISTS First_data;
		CREATE TABLE First_data (
			ID SERIAL PRIMARY KEY,
			Kind_deal VARCHAR(20) NOT NULL,
			ID_offer INT UNSIGNED NOT NULL,
			REF VARCHAR(255) NOT NULL,
			Time_make DATETIME DEFAULT NOW(),
			Adres VARCHAR(100) NOT NULL,
			Street VARCHAR(500) NOT NULL,
			Price INT UNSIGNED NOT NULL,
			udel_Price INT UNSIGNED NOT NULL,
			Purpose VARCHAR(30) NOT NULL,
			second_Purpose VARCHAR(30),
			ID_ag_First_data BIGINT UNSIGNED NOT NULL,
			INDEX ind_Kind_deal(Kind_deal),
			INDEX ind_Street(Street),
			INDEX ind_Kind_deal_Street(Street, Kind_deal),
			INDEX ind_Price(Price),
			INDEX ind_Udel_price(udel_price),
			INDEX ind_Purpose(Purpose),
			INDEX ind_second_Purpose(second_Purpose),
			INDEX ind_Purpose_second_Purpose(Purpose, second_Purpose),
			FOREIGN KEY (ID_ag_First_data) REFERENCES Agent(ID_ag)
			ON UPDATE CASCADE
			ON DELETE RESTRICT
		);


-- Внесение информации в данную таблицу

		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('1', 'аренда', '224151167', 'https://www.cian.ru/rent/commercial/224151167/', '2020-03-28', 'Москва, ЦАО, р-н Мещанский, ул. Рождественка, 5/7С1', 'ул. Рождественка', '275000', '412500', 'торговое', 'общепит', '33');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('2', 'аренда', '228384956', 'https://www.cian.ru/rent/commercial/228384956/', '2020-03-28', 'Москва, ЦАО, р-н Мещанский, ул. Кузнецкий Мост, 19С1', 'ул. Кузнецкий Мост', '1850000', '21216', 'торговое', 'общепит', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('3', 'аренда', '228103158', 'https://www.cian.ru/rent/commercial/228103158/', '2020-03-28', 'Москва, ЦАО, р-н Мещанский, ул. Рождественка, 6/9/20С1', 'ул. Рождественка', '700000', '242076', 'ПСН', 'общепит', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('4', 'аренда', '224458447', 'https://www.cian.ru/rent/commercial/224458447/', '2020-03-28', 'Москва, ЦАО, р-н Мещанский, Варсонофьевский пер., 6', 'Варсонофьевский пер.', '382500', '30600', 'ПСН', 'ПСН', '42');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('5', 'аренда', '208472944', 'https://www.cian.ru/rent/commercial/208472944/', '2020-03-28', 'Москва, ЦАО, р-н Мещанский, ул. Большая Лубянка, 13/16С1', ' ул. Большая Лубянка', '589050', '91800', 'торговое', 'торговое', '80');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('6', 'аренда', '228206859', 'https://www.cian.ru/rent/commercial/228206859/', '2020-03-28', 'Москва, ЦАО, р-н Мещанский, Рождественский бул., 5/7С1', 'Рождественский бул.', '400000', '53328', 'ПСН', 'торговое', '74');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('7', 'аренда', '228103319', 'https://www.cian.ru/rent/commercial/228103319/', '2020-03-28', 'Москва, ЦАО, р-н Мещанский, ул. Сретенка, 9', 'ул. Сретенка', '450000', '123852', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('8', 'аренда', '226137222', 'https://www.cian.ru/rent/commercial/226137222/', '2020-03-28', 'Москва, ЦАО, р-н Красносельский, ул. Сретенка, 24/2С1', 'ул. Сретенка', '293580', '41940', 'ПСН', 'офис С', '28');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('9', 'аренда', '228288074', 'https://www.cian.ru/rent/commercial/228288074/', '2020-03-28', 'Москва, ЦАО, р-н Мещанский, ул. Сретенка, 21/28С1', 'ул. Сретенка', '235000', '93996', 'торговое', 'ПСН', '48');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('10', 'аренда', '225990574', 'https://www.cian.ru/rent/commercial/225990574/', '2020-03-28', 'Москва, ЦАО, р-н Мещанский, Малая Сухаревская пл., 12', 'Малая Сухаревская пл.', '658586', '35064', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('11', 'аренда', '228262076', 'https://www.cian.ru/rent/commercial/228262076/', '2020-03-28', 'Москва, ЦАО, р-н Тверской, Цветной бул., 17', 'Цветной бул.', '85000', '113328', 'торговое', 'торговое', '48');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('12', 'аренда', '223025000', 'https://www.cian.ru/rent/commercial/223025000/', '2020-03-28', 'Москва, ЦАО, р-н Тверской, Садовая-Каретная ул., 20С1', 'Садовая-Каретная ул.', '399000', '84000', 'торговое', 'ПСН', '12');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('13', 'аренда', '227049836', 'https://www.cian.ru/rent/commercial/227049836/', '2020-03-28', 'Москва, ЦАО, р-н Тверской, 2-й Колобовский пер., 9/2С1', '2-й Колобовский пер.', '869850', '46392', 'ПСН', 'ПСН', '41');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('14', 'аренда', '226094268', 'https://www.cian.ru/rent/commercial/226094268/', '2020-03-28', 'Москва, ЦАО, р-н Мещанский, Цветной бул., 20/1', 'Цветной бул.', '349998', '42420', 'ПСН', 'ПСН', '45');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('15', 'аренда', '225970374', 'https://www.cian.ru/rent/commercial/225970374/', '2020-03-28', 'Москва, ЦАО, р-н Мещанский, Цветной бул., 20/1', 'Цветной бул.', '900000', '101892', 'торговое', 'ПСН', '44');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('16', 'аренда', '228438934', 'https://www.cian.ru/rent/commercial/228438934/', '2020-03-28', 'Москва, ЦАО, р-н Тверской, 1-й Колобовский пер., 18', '1-й Колобовский пер.', '225000', '91836', 'торговое', 'торговое', '39');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('17', 'аренда', '228103281', 'https://www.cian.ru/rent/commercial/228103281/', '2020-03-28', 'Москва, ЦАО, р-н Мещанский, Трубная пл., 2', 'Трубная пл.', '1500000', '21984', 'ПСН', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('18', 'аренда', '227631445', 'https://www.cian.ru/rent/commercial/227631445/', '2020-03-28', 'Москва, ЦАО, р-н Тверской, пер. Столешников, 7С3', 'пер. Столешников', '105000', '30000', 'ПСН', 'офис С', '10');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('19', 'аренда', '224283481', 'https://www.cian.ru/rent/commercial/224283481/', '2020-03-28', 'Москва, ЦАО, р-н Тверской, пер. Столешников, 7С1', 'пер. Столешников', '110250', '37800', 'ПСН', 'ПСН', '57');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('20', 'аренда', '195050676', 'https://www.cian.ru/rent/commercial/195050676/', '2020-03-28', 'Москва, ЦАО, р-н Тверской, Тверская ул., 6С1', 'Тверская ул.', '119988', '39996', 'торговое', 'торговое', '40');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('21', 'аренда', '188637544', 'https://www.cian.ru/rent/commercial/188637544/', '2020-03-28', 'Москва, ЦАО, р-н Тверской, Тверская ул., 6С1', 'Тверская ул.', '800000', '173280', 'торговое', 'торговое', '40');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('22', 'аренда', '228489971', 'https://www.cian.ru/rent/commercial/228489971/', '2020-03-29', 'Москва, ЦАО, р-н Тверской, Тверская ул., 28к1', 'Тверская ул.', '2515000', '110148', 'торговое', 'торговое', '27');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('23', 'аренда', '221324916', 'https://www.cian.ru/rent/commercial/221324916/', '2020-03-29', 'Москва, ЦАО, р-н Тверской, Садовая-Каретная ул., 8С1', 'Садовая-Каретная ул.', '430000', '103200', 'торговое', 'торговое', '53');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('24', 'аренда', '221324916', 'https://www.cian.ru/rent/commercial/221324916/', '2020-03-29', 'Москва, ЦАО, р-н Тверской, Садовая-Каретная ул., 8С1', 'Садовая-Каретная ул.', '470000', '101076', 'торговое', 'торговое', '53');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('25', 'аренда', '221324916', 'https://www.cian.ru/rent/commercial/221324916/', '2020-03-29', 'Москва, ЦАО, р-н Тверской, Садовая-Каретная ул., 8С1', 'Садовая-Каретная ул.', '900000', '102084', 'торговое', 'торговое', '53');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('26', 'аренда', '227485989', 'https://www.cian.ru/rent/commercial/227485989/', '2020-03-29', 'Москва, ЦАО, р-н Тверской, Оружейный пер., 15А', 'Оружейный пер.', '1600000', '34284', 'торговое, общепит', 'ПСН', '31');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('27', 'аренда', '227326684', 'https://www.cian.ru/rent/commercial/227326684/', '2020-03-29', 'Москва, ЦАО, р-н Тверской, Краснопролетарская ул., 4', 'Краснопролетарская ул.', '835667', '43596', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('28', 'аренда', '202638301', 'https://www.cian.ru/rent/commercial/202638301/', '2020-03-29', 'Москва, ЦАО, р-н Тверской, Большая Бронная ул., 29', 'Большая Бронная ул.', '689400', '459600', 'торговое', 'торговое', '81');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('29', 'аренда', '227851401', 'https://www.cian.ru/rent/commercial/227851401/', '2020-03-29', 'Москва, ЦАО, р-н Тверской, Тверская ул., 25/12', 'Тверская ул.', '650000', '153240', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('30', 'аренда', '222932635', 'https://www.cian.ru/rent/commercial/222932635/', '2020-03-29', 'Москва, ЦАО, р-н Пресненский, Садовая-Кудринская ул., 32С2', 'Садовая-Кудринская ул.', '290002', '127008', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('31', 'аренда', '222029489', 'https://www.cian.ru/rent/commercial/222029489/', '2020-03-29', 'Москва, ЦАО, р-н Пресненский, Малый Козихинский пер., 12', 'Малый Козихинский пер.', '900000', '90000', 'торговое', 'ПСН', '58');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('32', 'аренда', '228103124', 'https://www.cian.ru/rent/commercial/228103124/', '2020-03-29', 'Москва, ЦАО, р-н Пресненский, Малая Бронная ул., 25', 'Малая Бронная ул.', '1750000', '98964', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('33', 'аренда', '211861127', 'https://www.cian.ru/rent/commercial/211861127/', '2020-03-29', 'Москва, ЦАО, р-н Тверской, Большая Бронная ул., 27/4', 'Большая Бронная ул.', '900000', '117900', 'торговое', 'торговое', '30');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('34', 'аренда', '228191302', 'https://www.cian.ru/rent/commercial/228191302/', '2020-03-29', 'Москва, ЦАО, р-н Тверской, Большая Бронная ул., 27/4', 'Большая Бронная ул.', '550000', '44004', 'торговое, общепит', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('35', 'аренда', '228201350', 'https://www.cian.ru/rent/commercial/228201350/', '2020-03-29', 'Москва, ЦАО, р-н Пресненский, Большая Бронная ул., 17', 'Большая Бронная ул.', '257400', '132000', 'торговое', 'ПСН', '37');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('36', 'аренда', '169900594', 'https://www.cian.ru/rent/commercial/169900594/', '2020-03-29', 'Москва, ЦАО, р-н Пресненский, Богословский пер., 5', 'Богословский пер.', '300000', '90456', 'ПСН', 'торговое', '30');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('37', 'аренда', '228103333', 'https://www.cian.ru/rent/commercial/228103333/', '2020-03-29', 'Москва, ЦАО, р-н Пресненский, ул. Спиридоновка, 24/1', 'ул. Спиридоновка', '499000', '36072', 'ПСН', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('38', 'аренда', '213723351', 'https://www.cian.ru/rent/commercial/213723351/', '2020-03-29', 'Москва, ЦАО, р-н Пресненский, Малая Бронная ул., 15Б', 'Малая Бронная ул.', '1850000', '150000', 'ПСН', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('39', 'аренда', '227903916', 'https://www.cian.ru/rent/commercial/227903916/', '2020-03-29', 'Москва, ЦАО, р-н Пресненский, Малая Бронная ул., 15Б', 'Малая Бронная ул.', '1200000', '200004', 'ПСН', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('40', 'аренда', '227903915', 'https://www.cian.ru/rent/commercial/227903915/', '2020-03-29', 'Москва, ЦАО, р-н Пресненский, Малая Бронная ул., 15Б', 'Малая Бронная ул.', '2500000', '149628', 'ПСН', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('41', 'аренда', '227636730', 'https://www.cian.ru/rent/commercial/227636730/', '2020-03-30', 'Москва, ЦАО, р-н Пресненский, Малая Бронная ул., 4', 'Малая Бронная ул.', '550002', '92964', 'ПСН', 'торговое, общепит', '2');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('42', 'аренда', '226161553', 'https://www.cian.ru/rent/commercial/226161553/', '2020-03-30', 'Москва, ЦАО, р-н Тверской, Тверская ул., 9', 'Тверская ул.', '400000', '48000', 'торговое', 'ПСН', '9');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('43', 'аренда', '225990405', 'https://www.cian.ru/rent/commercial/225990405/', '2020-03-30', 'Москва, ЦАО, р-н Арбат, пер. Романов, 4', 'пер. Романов', '700000', '26832', 'торговое', 'торговое, общепит', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('44', 'аренда', '226422044', 'https://www.cian.ru/rent/commercial/226422044/', '2020-03-30', 'Москва, ЦАО, р-н Пресненский, Никитский бул., 8', 'Никитский бул.', '250000', '106008', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('45', 'аренда', '194571753', 'https://www.cian.ru/rent/commercial/194571753/', '2020-03-30', 'Москва, ЦАО, р-н Пресненский, Никитский бул., 12', 'Никитский бул.', '699948', '77772', 'торговое', 'торговое, общепит', '70');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('46', 'аренда', '221187023', 'https://www.cian.ru/rent/commercial/221187023/', '2020-03-30', 'Москва, ЦАО, р-н Арбат, Поварская ул., 8/1С1', 'Поварская ул.', '568125', '45000', 'ПСН', 'торговое', '79');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('47', 'аренда', '224114457', 'https://www.cian.ru/rent/commercial/224114457/', '2020-03-30', 'Москва, ЦАО, р-н Арбат, ул. Новый Арбат, 6', 'ул. Новый Арбат', '1200000', '66948', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('48', 'аренда', '228274148', 'https://www.cian.ru/rent/commercial/228274148/', '2020-03-30', 'Москва, ЦАО, р-н Арбат, ул. Большая Молчановка, 18', 'ул. Большая Молчановка', '400000', '48000', 'ПСН', 'торговое', '76');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('49', 'аренда', '228202988', 'https://www.cian.ru/rent/commercial/228202988/', '2020-03-30', 'Москва, ЦАО, р-н Арбат, Новинский бул., 12', 'Новинский бул.', '390076', '48108', 'торговое', 'торговое', '73');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('50', 'аренда', '226473022', 'https://www.cian.ru/rent/commercial/226473022/', '2020-03-30', 'Москва, ЦАО, р-н Арбат, Новинский бул., 8', 'Новинский бул.', '532350', '54000', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('51', 'аренда', '226473023', 'https://www.cian.ru/rent/commercial/226473023/', '2020-03-30', 'Москва, ЦАО, р-н Арбат, Новинский бул., 8', 'Новинский бул.', '1249200', '54000', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('52', 'аренда', '226483715', 'https://www.cian.ru/rent/commercial/226483715/', '2020-03-30', 'Москва, ЦАО, р-н Арбат, Новинский бул., 8', 'Новинский бул.', '1537650', '54000', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('53', 'аренда', '228544822', 'https://www.cian.ru/rent/commercial/228544822/', '2020-03-30', 'Москва, ЦАО, р-н Арбат, ул. Новый Арбат, 13', 'ул. Новый Арбат', '700000', '518520', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('54', 'аренда', '227211018', 'https://www.cian.ru/rent/commercial/227211018/', '2020-03-30', 'Москва, ЦАО, р-н Арбат, Карманицкий пер., 9', 'Карманицкий пер.', '216300', '42000', 'торговое', 'торговое', '64');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('55', 'аренда', '227211018', 'https://www.cian.ru/rent/commercial/227211018/', '2020-03-30', 'Москва, ЦАО, р-н Арбат, Карманицкий пер., 9', 'Карманицкий пер.', '294100', '40800', 'торговое', 'торговое', '64');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('56', 'аренда', '226884605', 'https://www.cian.ru/rent/commercial/226884605/', '2020-03-30', 'Москва, ЦАО, р-н Арбат, ул. Арбат, 51С1', 'ул. Арбат', '2675000', '54540', 'торговое', 'торговое, общепит', '65');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('57', 'аренда', '226079472', 'https://www.cian.ru/rent/commercial/226079472/', '2020-03-30', 'Москва, ЦАО, р-н Арбат, ул. Арбат, 39', 'ул. Арбат', '839960', '110400', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('58', 'аренда', '226045535', 'https://www.cian.ru/rent/commercial/226045535/', '2020-03-30', 'Москва, ЦАО, р-н Арбат, ул. Арбат, 39', 'ул. Арбат', '2683204', '72096', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('59', 'аренда', '228415040', 'https://www.cian.ru/rent/commercial/228415040/', '2020-03-30', 'Москва, ЦАО, р-н Арбат, ул. Арбат, 32', 'ул. Арбат', '1100000', '113592', 'торговое, общепит', 'торговое', '18');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('60', 'аренда', '224151160', 'https://www.cian.ru/rent/commercial/224151160/', '2020-03-30', 'Москва, ЦАО, р-н Арбат, ул. Арбат, 18С1', 'ул. Арбат', '90000', '180000', 'торговое', 'торговое', '33');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('61', 'аренда', '222970651', 'https://www.cian.ru/rent/commercial/222970651/', '2020-03-30', 'Москва, ЦАО, р-н Арбат, ул. Арбат, 25/36', 'ул. Арбат', '1900008', '126036', 'торговое', 'торговое, общепит', '63');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('62', 'аренда', '208958456', 'https://www.cian.ru/rent/commercial/208958456/', '2020-03-30', 'Москва, ЦАО, р-н Арбат, Филипповский пер., 15/5', 'Филипповский пер.', '180000', '40752', 'торговое', 'офисное', '29');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('63', 'аренда', '225673085', 'https://www.cian.ru/rent/commercial/225673085/', '2020-03-30', 'Москва, ЦАО, р-н Арбат, Гоголевский бул., 27', 'Гоголевский бул.', '368910', '49188', 'торговое', 'ПСН', '41');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('64', 'аренда', '228103275', 'https://www.cian.ru/rent/commercial/228103275/', '2020-03-30', 'Москва, ЦАО, р-н Хамовники, ул. Волхонка, 9С1', 'ул. Волхонка', '760000', '116928', 'торговое', 'торговое, общепит', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('65', 'аренда', '227464176', 'https://www.cian.ru/rent/commercial/227464176/', '2020-03-30', 'Москва, ЦАО, р-н Хамовники, Курсовой пер., 10/1', 'Курсовой пер.', '430000', '104880', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('66', 'аренда', '226860884', 'https://www.cian.ru/rent/commercial/226860884/', '2020-03-30', 'Москва, ЦАО, р-н Хамовники, ул. Остоженка, 11', 'ул. Остоженка', '970000', '77604', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('67', 'аренда', '228197679', 'https://www.cian.ru/rent/commercial/228197679/', '2020-03-30', 'Москва, ЦАО, р-н Хамовники, пер. Коробейников, 1', 'пер. Коробейников', '700000', '15852', 'ПСН', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('68', 'аренда', '228103337', 'https://www.cian.ru/rent/commercial/228103337/', '2020-03-30', 'Москва, ЦАО, р-н Хамовники, ул. Остоженка, 25', 'ул. Остоженка', '2995200', '73200', 'торговое', 'офисное', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('69', 'аренда', '228449209', 'https://www.cian.ru/rent/commercial/228449209/', '2020-03-30', 'Москва, ЦАО, р-н Хамовники, ул. Остоженка, 25', 'ул. Остоженка', '800000', '40512', 'ПСН', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('70', 'аренда', '228157276', 'https://www.cian.ru/rent/commercial/228157276/', '2020-03-30', 'Москва, ЦАО, р-н Хамовники, ул. Остоженка, 27К1', 'ул. Остоженка', '700000', '65112', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('71', 'аренда', '228103316', 'https://www.cian.ru/rent/commercial/228103316/', '2020-03-30', 'Москва, ЦАО, р-н Хамовники, ул. Остоженка, 27К1', 'ул. Остоженка', '800000', '103008', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('72', 'аренда', '224953298', 'https://www.cian.ru/rent/commercial/224953298/', '2020-03-30', 'Москва, ЦАО, р-н Хамовники, ул. Пречистенка, 24/1', 'ул. Пречистенка', '699995', '61224', 'торговое', 'торговое, общепит', '60');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('73', 'аренда', '228103548', 'https://www.cian.ru/rent/commercial/228103548/', '2020-03-30', 'Москва, ЦАО, р-н Хамовники, Смоленский бул., 6-8', 'Смоленский бул.', '118500', '36000', 'торговое', 'ПСН', '72');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('74', 'аренда', '228103259', 'https://www.cian.ru/rent/commercial/228103259/', '2020-03-30', 'Москва, ЦАО, р-н Хамовники, ул. Пречистенка, 38', 'ул. Пречистенка', '2000000', '33204', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('75', 'аренда', '226687566', 'https://www.cian.ru/rent/commercial/226687566/', '2020-03-30', 'Москва, ЦАО, р-н Хамовники, Зубовский бул., 16-20С1', 'Зубовский бул.', '541417', '89244', 'торговое', 'ПСН', '50');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('76', 'аренда', '216163358', 'https://www.cian.ru/rent/commercial/216163358/', '2020-04-01', 'Москва, ЦАО, р-н Якиманка, ул. Серафимовича, 5/16', 'ул. Серафимовича', '357500', '65004', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('77', 'аренда', '225252218', 'https://www.cian.ru/rent/commercial/225252218/', '2020-04-01', 'Москва, ЦАО, р-н Якиманка, Софийская наб., 34С4', 'Софийская наб.', '200000', '77292', 'ПСН', 'торговое', '61');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('78', 'аренда', '227464184', 'https://www.cian.ru/rent/commercial/227464184/', '2020-04-01', 'Москва, ЦАО, р-н Якиманка, Софийская наб., 34С5', 'Софийская наб.', '800000', '43044', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('79', 'аренда', '225991188', 'https://www.cian.ru/rent/commercial/225991188/', '2020-04-01', 'Москва, ЦАО, р-н Якиманка, ул. Большая Якиманка, 19', 'ул. Большая Якиманка', '290000', '94824', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('80', 'аренда', '222445265', 'https://www.cian.ru/rent/commercial/222445265/', '2020-04-01', 'Москва, ЦАО, р-н Якиманка, пер. Бродников, 10к2', 'пер. Бродников', '300096', '34560', 'торговое', 'ПСН', '16');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('81', 'аренда', '227199594', 'https://www.cian.ru/rent/commercial/227199594/', '2020-04-01', 'Москва, ЦАО, р-н Якиманка, ул. Большая Якиманка, 52', 'ул. Большая Якиманка', '350020', '95460', 'торговое', 'торговое', '14');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('82', 'аренда', '228538210', 'https://www.cian.ru/rent/commercial/228538210/', '2020-04-01', 'Москва, ЦАО, р-н Якиманка, ул. Большая Полянка, 44/2', 'ул. Большая Полянка', '400000', '111624', 'торговое', 'торговое', '7');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('83', 'аренда', '226687333', 'https://www.cian.ru/rent/commercial/226687333/', '2020-04-01', 'Москва, ЦАО, р-н Якиманка, Лаврушинский пер., 17С2', 'Лаврушинский пер.', '1200000', '91140', 'торговое', 'торговое', '56');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('84', 'аренда', '178126486', 'https://www.cian.ru/rent/commercial/178126486/', '2020-04-01', 'Москва, ЦАО, р-н Замоскворечье, Пятницкая ул., 2/38С1', 'Пятницкая ул.', '308000', '84000', 'торговое', 'торговое', '46');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('85', 'аренда', '223824068', 'https://www.cian.ru/rent/commercial/223824068/', '2020-04-01', 'Москва, ЦАО, р-н Замоскворечье, Большой Овчинниковский пер., 16', 'Большой Овчинниковский пер.', '240000', '57600', 'торговое', 'торговое', '19');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('86', 'аренда', '224470844', 'https://www.cian.ru/rent/commercial/224470844/', '2020-04-01', 'Москва, ЦАО, р-н Замоскворечье, Большой Овчинниковский пер., 16', 'Большой Овчинниковский пер.', '1012000', '52800', 'торговое', 'торговое', '19');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('87', 'аренда', '223813776', 'https://www.cian.ru/rent/commercial/223813776/', '2020-04-01', 'Москва, ЦАО, р-н Замоскворечье, Большой Овчинниковский пер., 16', 'Большой Овчинниковский пер.', '1260000', '50400', 'торговое', 'торговое', '19');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('88', 'аренда', '210281711', 'https://www.cian.ru/rent/commercial/210281711/', '2020-04-01', 'Москва, ЦАО, р-н Замоскворечье, Большой Овчинниковский пер., 12С1', 'Большой Овчинниковский пер.', '194967', '31200', 'ПСН', 'офисное', '67');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('89', 'аренда', '217407929', 'https://www.cian.ru/rent/commercial/217407929/', '2020-04-01', 'Москва, ЦАО, р-н Замоскворечье, Руновский пер., 5С1', 'Руновский пер.', '449167', '48996', 'торговое, общепит', 'ПСН', '6');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('90', 'аренда', '228538202', 'https://www.cian.ru/rent/commercial/228538202/', '2020-04-01', 'Москва, ЦАО, р-н Замоскворечье, Садовническая ул., 54С2', 'Садовническая ул.', '800000', '30000', 'торговое, общепит', 'торговое', '7');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('91', 'аренда', '225568861', 'https://www.cian.ru/rent/commercial/225568861/', '2020-04-01', 'Москва, ЦАО, р-н Замоскворечье, Пятницкая ул., 33-35С2', 'Пятницкая ул.', '1499984', '49788', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('92', 'аренда', '225567628', 'https://www.cian.ru/rent/commercial/225567628/', '2020-04-01', 'Москва, ЦАО, р-н Замоскворечье, Пятницкая ул., 33-35С2', 'Пятницкая ул.', '1099987', '58224', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('93', 'аренда', '227328325', 'https://www.cian.ru/rent/commercial/227328325/', '2020-04-01', 'Москва, ЦАО, р-н Замоскворечье, Новокузнецкая ул., 6', 'Новокузнецкая ул.', '600185', '46056', 'торговое', 'ПСН', '36');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('94', 'аренда', '225008979', 'https://www.cian.ru/rent/commercial/225008979/', '2020-04-01', 'Москва, ЦАО, р-н Замоскворечье, Пятницкая ул., 45', 'Пятницкая ул.', '1100000', '66000', 'торговое, общепит', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('95', 'аренда', '224510871', 'https://www.cian.ru/rent/commercial/224510871/', '2020-04-01', 'Москва, ЦАО, р-н Замоскворечье, Пятницкая ул., 54С1', 'Пятницкая ул.', '900011', '74532', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('96', 'аренда', '222137198', 'https://www.cian.ru/rent/commercial/222137198/', '2020-04-01', 'Москва, ЦАО, р-н Замоскворечье, Пятницкая ул., 54', 'Пятницкая ул.', '420001', '83724', 'ПСН', 'офисное', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('97', 'аренда', '225108267', 'https://www.cian.ru/rent/commercial/225108267/', '2020-04-01', 'Москва, ЦАО, р-н Замоскворечье, ул. Малая Ордынка, 19', 'ул. Малая Ордынка', '389500', '57000', 'торговое', 'ПСН', '66');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('98', 'аренда', '197821673', 'https://www.cian.ru/rent/commercial/197821673/', '2020-04-01', 'Москва, ЦАО, р-н Замоскворечье, Пятницкая ул., 54С2', 'Пятницкая ул.', '44800', '38400', 'торговое', 'ПСН', '28');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('99', 'аренда', '228585462', 'https://www.cian.ru/rent/commercial/228585462/', '2020-04-01', 'Москва, ЦАО, р-н Замоскворечье, Пятницкая ул., 57С2', 'Пятницкая ул.', '419000', '54480', 'торговое, общепит', 'ПСН', '23');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('100', 'аренда', '227886129', 'https://www.cian.ru/rent/commercial/227886129/', '2020-04-01', 'Москва, ЦАО, р-н Замоскворечье, Пятницкая ул., 41С1', 'Пятницкая ул.', '255000', '30000', 'ПСН', 'офисное', '43');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('101', 'аренда', '224401961', 'https://www.cian.ru/rent/commercial/224401961/', '2020-04-01', 'Москва, ЦАО, р-н Замоскворечье, Садовническая ул., 74С1', 'Садовническая ул.', '107986', '20244', 'ПСН', 'торговое', '24');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('102', 'аренда', '224329933', 'https://www.cian.ru/rent/commercial/224329933/', '2020-04-01', 'Москва, ЦАО, р-н Якиманка, ул. Большая Якиманка, 15', 'ул. Большая Якиманка', '270000', '54360', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('103', 'аренда', '228200886', 'https://www.cian.ru/rent/commercial/228200886/', '2020-04-01', 'Москва, ЦАО, р-н Якиманка, ул. Большая Якиманка, 26', 'ул. Большая Якиманка', '250000', '60000', 'торговое', 'ПСН', '32');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('104', 'аренда', '228200886', 'https://www.cian.ru/rent/commercial/228200886/', '2020-04-01', 'Москва, ЦАО, р-н Якиманка, ул. Большая Якиманка, 26', 'ул. Большая Якиманка', '7000000', '60000', 'торговое', 'ПСН', '32');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('105', 'аренда', '220201888', 'https://www.cian.ru/rent/commercial/220201888/', '2020-04-01', 'Москва, ЦАО, р-н Якиманка, Житная ул., 10', 'Житная ул.', '250600', '8400', 'ПСН', 'офисное', '52');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('106', 'аренда', '228622281', 'https://www.cian.ru/rent/commercial/228622281/', '2020-04-02', 'Москва, ЦАО, р-н Якиманка, ул. Большая Якиманка, 50', 'ул. Большая Якиманка', '598999', '75660', 'торговое', 'торговое', '3');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('107', 'аренда', '227349424', 'https://www.cian.ru/rent/commercial/227349424/', '2020-04-02', 'Москва, ЦАО, р-н Якиманка, ул. Крымский Вал, 8', 'ул. Крымский Вал', '520000', '87888', 'ПСН', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('108', 'аренда', '227754796', 'https://www.cian.ru/rent/commercial/227754796/', '2020-04-02', 'Москва, ЦАО, р-н Якиманка, ул. Серафимовича, 2', 'ул. Серафимовича', '120000', '20568', 'ПСН', 'офисное', '69');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('109', 'аренда', '228387065', 'https://www.cian.ru/rent/commercial/228387065/', '2020-04-02', 'Москва, ЦАО, р-н Замоскворечье, Садовническая ул., 80', 'Садовническая ул.', '270000', '44268', 'торговое', 'ПСН', '25');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('110', 'аренда', '206973374', 'https://www.cian.ru/rent/commercial/206973374/', '2020-04-02', 'Москва, ЦАО, р-н Замоскворечье, Садовническая ул., 80', 'Садовническая ул.', '300000', '49452', 'торговое', 'ПСН', '13');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('111', 'аренда', '207711130', 'https://www.cian.ru/rent/commercial/207711130/', '2020-04-02', 'Москва, ЦАО, р-н Замоскворечье, Садовническая ул., 80', 'Садовническая ул.', '400000', '46152', 'торговое', 'ПСН', '13');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('112', 'аренда', '206973376', 'https://www.cian.ru/rent/commercial/206973376/', '2020-04-02', 'Москва, ЦАО, р-н Замоскворечье, Садовническая ул., 80', 'Садовническая ул.', '400000', '58464', 'торговое', 'ПСН', '25');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('113', 'аренда', '226436407', 'https://www.cian.ru/rent/commercial/226436407/', '2020-04-02', 'Москва, ЦАО, р-н Замоскворечье, ул. Зацепский Вал, 4С2', 'ул. Зацепский Вал', '519999', '165960', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('114', 'аренда', '226435895', 'https://www.cian.ru/rent/commercial/226435895/', '2020-04-02', 'Москва, ЦАО, р-н Замоскворечье, ул. Зацепский Вал, 4С2', 'ул. Зацепский Вал', '400000', '163260', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('115', 'аренда', '226436285', 'https://www.cian.ru/rent/commercial/226436285/', '2020-04-02', 'Москва, ЦАО, р-н Замоскворечье, ул. Зацепский Вал, 4С2', 'ул. Зацепский Вал', '475000', '162852', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('116', 'аренда', '226436302', 'https://www.cian.ru/rent/commercial/226436302/', '2020-04-02', 'Москва, ЦАО, р-н Замоскворечье, ул. Зацепский Вал, 4С2', 'ул. Зацепский Вал', '474999', '165216', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('117', 'аренда', '226435740', 'https://www.cian.ru/rent/commercial/226435740/', '2020-04-02', 'Москва, ЦАО, р-н Замоскворечье, ул. Зацепский Вал, 4С2', 'ул. Зацепский Вал', '599999', '220188', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('118', 'аренда', '226435809', 'https://www.cian.ru/rent/commercial/226435809/', '2020-04-02', 'Москва, ЦАО, р-н Замоскворечье, ул. Зацепский Вал, 4С2', 'ул. Зацепский Вал', '999997', '85224', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('119', 'аренда', '227295624', 'https://www.cian.ru/rent/commercial/227295624/', '2020-04-02', 'Москва, ЦАО, р-н Замоскворечье, ул. Зацепский Вал, 5', 'ул. Зацепский Вал', '89999', '154284', 'торговое', 'ПСН', '28');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('120', 'аренда', '195053566', 'https://www.cian.ru/rent/commercial/195053566/', '2020-04-02', 'Москва, ЦАО, р-н Замоскворечье, ул. Зацепский Вал, 5', 'ул. Зацепский Вал', '385000', '95856', 'торговое', 'торговое', '62');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('121', 'аренда', '195053566', 'https://www.cian.ru/rent/commercial/195053566/', '2020-04-02', 'Москва, ЦАО, р-н Замоскворечье, ул. Зацепский Вал, 5', 'ул. Зацепский Вал', '850000', '92220', 'торговое', 'торговое', '62');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('122', 'аренда', '205170570', 'https://www.cian.ru/rent/commercial/205170570/', '2020-04-02', 'Москва, ЦАО, р-н Хамовники, Пречистенская наб., 5', 'Пречистенская наб.', '399996', '58536', 'ПСН', 'торговое, общепит', '5');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('123', 'аренда', '227729137', 'https://www.cian.ru/rent/commercial/227729137/', '2020-04-02', 'Москва, ЦАО, р-н Хамовники, ул. Пречистенка, 33/19С1', 'ул. Пречистенка', '450000', '112500', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('124', 'аренда', '228472275', 'https://www.cian.ru/rent/commercial/228472275/', '2020-04-02', 'Москва, ЦАО, р-н Хамовники, пер. Сивцев Вражек, 15/25', 'пер. Сивцев Вражек', '154000', '16800', 'ПСН', 'офисное', '35');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('125', 'аренда', '228415040', 'https://www.cian.ru/rent/commercial/228415040/', '2020-04-02', 'Москва, ЦАО, р-н Арбат, ул. Арбат, 32', 'ул. Арбат', '550000', '56796', 'торговое, общепит', 'торговое', '18');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('126', 'аренда', '225639481', 'https://www.cian.ru/rent/commercial/225639481/', '2020-04-02', 'Москва, ЦАО, р-н Арбат, Малый Афанасьевский пер., 14/34С2', 'Малый Афанасьевский пер.', '800417', '56496', 'ПСН', 'офисное', '82');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('127', 'аренда', '228044723', 'https://www.cian.ru/rent/commercial/228044723/', '2020-04-02', 'Москва, ЦАО, р-н Арбат, ул. Арбат, 6/2', 'ул. Арбат', '600005', '75792', 'торговое, общепит', 'торговое', '34');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('128', 'аренда', '177036629', 'https://www.cian.ru/rent/commercial/177036629/', '2020-04-02', 'Москва, ЦАО, р-н Арбат, ул. Новый Арбат, 3С1', 'ул. Новый Арбат', '515000', '250200', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('129', 'аренда', '228134620', 'https://www.cian.ru/rent/commercial/228134620/', '2020-04-02', 'Москва, ЦАО, р-н Арбат, ул. Большая Молчановка, 15/12', 'ул. Большая Молчановка', '395250', '30600', 'торговое, общепит', 'ПСН', '51');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('130', 'аренда', '196154171', 'https://www.cian.ru/rent/commercial/196154171/', '2020-04-02', 'Москва, ЦАО, р-н Пресненский, Никитский бул., 25', 'Никитский бул.', '899975', '72000', 'торговое, общепит', 'ПСН', '4');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('131', 'аренда', '203372394', 'https://www.cian.ru/rent/commercial/203372394/', '2020-04-02', 'Москва, ЦАО, р-н Тверской, Тверская ул., 25/9', 'Тверская ул.', '650000', '153240', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('132', 'аренда', '227633952', 'https://www.cian.ru/rent/commercial/227633952/', '2020-04-02', 'Москва, ЦАО, р-н Пресненский, Малая Бронная ул., 42/14', 'Малая Бронная ул.', '999908', '32964', 'ПСН', 'офисное', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('133', 'аренда', '228297540', 'https://www.cian.ru/rent/commercial/228297540/', '2020-04-02', 'Москва, ЦАО, р-н Тверской, Страстной бул., 7С3', 'Страстной бул.', '320000', '40980', 'торговое, общепит', 'ПСН', '78');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('134', 'аренда', '208718011', 'https://www.cian.ru/rent/commercial/208718011/', '2020-04-02', 'Москва, ЦАО, р-н Тверской, Большая Бронная ул., вл27/4с1', 'Большая Бронная ул.', '899993', '117900', 'торговое', 'торговое', '4');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('135', 'аренда', '221247050', 'https://www.cian.ru/rent/commercial/221247050/', '2020-04-02', 'Москва, ЦАО, р-н Тверской, Петровский бул., 1С1', 'Петровский бул.', '1999965', '52176', 'торговое, общепит', 'торговое', '4');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('136', 'аренда', '225165881', 'https://www.cian.ru/rent/commercial/225165881/', '2020-04-02', 'Москва, ЦАО, р-н Тверской, 2-й Колобовский пер., 9/2', '2-й Колобовский пер.', '870000', '41760', 'ПСН', 'офисное', '4');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('137', 'аренда', '224325464', 'https://www.cian.ru/rent/commercial/224325464/', '2020-04-03', 'Москва, ЦАО, р-н Тверской, ул. Петровка, 19С3', 'ул. Петровка', '173334', '26004', 'ПСН', 'офисное', '49');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('138', 'аренда', '202122224', 'https://www.cian.ru/rent/commercial/202122224/', '2020-04-03', 'Москва, ЦАО, р-н Тверской, ул. Петровка, 17С1', 'ул. Петровка', '400001', '27912', 'ПСН', 'офисное', '71');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('139', 'аренда', '214706736', 'https://www.cian.ru/rent/commercial/214706736/', '2020-04-03', 'Москва, ЦАО, р-н Красносельский, Мясницкая ул., 17С1', 'Мясницкая ул.', '670000', '227124', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('140', 'аренда', '225632320', 'https://www.cian.ru/rent/commercial/225632320/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, Мясницкая ул., 22С1', 'Мясницкая ул.', '2000010', '138012', 'торговое', 'ПСН', '21');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('141', 'аренда', '225961195', 'https://www.cian.ru/rent/commercial/225961195/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, Мясницкая ул., 24/7С3', 'Мясницкая ул.', '1068959', '35004', 'офисное', 'ПСН', '68');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('142', 'аренда', '226329608', 'https://www.cian.ru/rent/commercial/226329608/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, Кривоколенный пер., 11/13С1', 'Кривоколенный пер.', '400000', '18180', 'офисное', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('143', 'аренда', '204649992', 'https://www.cian.ru/rent/commercial/204649992/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, Мясницкий проезд, 2/1', 'Мясницкий проезд', '950000', '59160', 'торговое, общепит', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('144', 'аренда', '227728063', 'https://www.cian.ru/rent/commercial/227728063/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, Хоромный туп., 2/6', 'Хоромный туп.', '600000', '106512', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('145', 'аренда', '228724085', 'https://www.cian.ru/rent/commercial/228724085/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, Садовая-Черногрязская ул., 8С1', 'Садовая-Черногрязская ул.', '100000', '66672', 'ПСН', 'торговое', '17');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('146', 'аренда', '216372470', 'https://www.cian.ru/rent/commercial/216372470/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, Большой Харитоньевский пер., 24С2', 'Большой Харитоньевский пер.', '234492', '18996', 'офисное', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('147', 'аренда', '227638628', 'https://www.cian.ru/rent/commercial/227638628/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, Садовая-Черногрязская ул., 16-18С1', 'Садовая-Черногрязская ул.', '405000', '32400', 'торговое', 'ПСН', '37');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('148', 'аренда', '228191440', 'https://www.cian.ru/rent/commercial/228191440/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, Садовая-Черногрязская ул., 16-18С1', 'Садовая-Черногрязская ул.', '20000', '80004', 'торговое', 'торговое', '29');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('149', 'аренда', '226391418', 'https://www.cian.ru/rent/commercial/226391418/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, Садовая-Черногрязская ул., 16-18С1', 'Садовая-Черногрязская ул.', '80000', '61152', 'торговое', 'торговое', '29');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('150', 'аренда', '228083752', 'https://www.cian.ru/rent/commercial/228083752/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, Садовая-Черногрязская ул., 16-18С1', 'Садовая-Черногрязская ул.', '150000', '30000', 'торговое', 'торговое', '29');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('151', 'аренда', '228690742', 'https://www.cian.ru/rent/commercial/228690742/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, ул. Земляной Вал, 2', 'ул. Земляной Вал', '50000', '120000', 'торговое', 'торговое', '84');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('152', 'аренда', '228698086', 'https://www.cian.ru/rent/commercial/228698086/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, ул. Земляной Вал, 2', 'ул. Земляной Вал', '240000', '72000', 'торговое', 'торговое', '85');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('153', 'аренда', '227345026', 'https://www.cian.ru/rent/commercial/227345026/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, ул. Покровка, 38', 'ул. Покровка', '130000', '51996', 'торговое', 'ПСН', '29');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('154', 'аренда', '226837565', 'https://www.cian.ru/rent/commercial/226837565/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, ул. Покровка, 38', 'ул. Покровка', '180000', '55380', 'торговое', 'ПСН', '29');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('155', 'аренда', '227345476', 'https://www.cian.ru/rent/commercial/227345476/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, ул. Покровка, 38', 'ул. Покровка', '200000', '55812', 'торговое', 'ПСН', '29');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('156', 'аренда', '205653592', 'https://www.cian.ru/rent/commercial/205653592/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, ул. Покровка, 8', 'ул. Покровка', '1000000', '105444', 'торговое', 'ПСН', '75');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('157', 'аренда', '224308606', 'https://www.cian.ru/rent/commercial/224308606/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, Потаповский пер., 12', 'Потаповский пер.', '200900', '17220', 'ПСН', 'офисное', '55');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('158', 'аренда', '228720940', 'https://www.cian.ru/rent/commercial/228720940/', '2020-04-03', 'Москва, ЦАО, р-н Мещанский, пер. Колокольников, 22С5', 'пер. Колокольников', '350000', '29580', 'торговое, общепит', 'ПСН', '29');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('159', 'аренда', '228815661', 'https://www.cian.ru/rent/commercial/228815661/', '2020-04-03', 'Москва, ЦАО, р-н Красносельский, Тургеневская пл., 2', 'Тургеневская пл.', '1400000', '115860', 'торговое', 'ПСН', '29');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('160', 'аренда', '208716954', 'https://www.cian.ru/rent/commercial/208716954/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, ул. Покровка, 4', 'ул. Покровка', '699997', '98820', 'торговое', 'ПСН', '4');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('161', 'аренда', '227636282', 'https://www.cian.ru/rent/commercial/227636282/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, ул. Маросейка, 15', 'ул. Маросейка', '1100000', '106200', 'торговое, общепит', 'торговое', '18');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('162', 'аренда', '228813857', 'https://www.cian.ru/rent/commercial/228813857/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, ул. Маросейка, 15', 'ул. Маросейка', '1299000', '106764', 'торговое, общепит', 'торговое', '29');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('163', 'аренда', '228616031', 'https://www.cian.ru/rent/commercial/228616031/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, ул. Маросейка, 4/2С1', 'ул. Маросейка', '800000', '75588', 'торговое, общепит', 'торговое', '29');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('164', 'аренда', '228651150', 'https://www.cian.ru/rent/commercial/228651150/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, ул. Маросейка, 4/2С1', 'ул. Маросейка', '1390000', '154440', 'торговое, общепит', 'торговое', '29');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('165', 'аренда', '228272297', 'https://www.cian.ru/rent/commercial/228272297/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, ул. Маросейка, 4/2С1', 'ул. Маросейка', '400001', '208692', 'торговое', 'торговое', '29');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('166', 'аренда', '227534953', 'https://www.cian.ru/rent/commercial/227534953/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, Большой Златоустинский пер., 9С1', 'Большой Златоустинский пер.', '2800000', '44796', 'торговое, общепит', 'торговое', '9');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('167', 'аренда', '228807667', 'https://www.cian.ru/rent/commercial/228807667/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, Лубянский проезд, 27/1С1', 'Лубянский проезд', '1744459', '35004', 'торговое', 'ПСН', '8');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('168', 'аренда', '228499202', 'https://www.cian.ru/rent/commercial/228499202/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, Подкопаевский пер., 9С2', 'Подкопаевский пер.', '90000', '36000', 'офисное', 'ПСН', '22');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('169', 'аренда', '228819359', 'https://www.cian.ru/rent/commercial/228819359/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, Покровский бул., 5', 'Покровский бул.', '600000', '80004', 'торговое', 'ПСН', '86');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('170', 'аренда', '228188121', 'https://www.cian.ru/rent/commercial/228188121/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, Покровский бул., 5', 'Покровский бул.', '935000', '60000', 'торговое', 'ПСН', '86');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('171', 'аренда', '226854104', 'https://www.cian.ru/rent/commercial/226854104/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, Подсосенский пер., 17', 'Подсосенский пер.', '345000', '12540', 'ПСН', 'офисное', '18');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('172', 'аренда', '226543689', 'https://www.cian.ru/rent/commercial/226543689/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, ул. Земляной Вал, 18-22С1', 'ул. Земляной Вал', '800000', '98964', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('173', 'аренда', '228296213', 'https://www.cian.ru/rent/commercial/228296213/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, ул. Земляной Вал, 34С3а', 'ул. Земляной Вал', '300000', '58068', 'торговое', 'ПСН', '77');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('174', 'аренда', '225689143', 'https://www.cian.ru/rent/commercial/225689143/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, ул. Земляной Вал, 34С4', 'ул. Земляной Вал', '229990', '45996', 'ПСН', 'офисное', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('175', 'аренда', '225996210', 'https://www.cian.ru/rent/commercial/225996210/', '2020-04-03', 'Москва, ЦАО, р-н Таганский, ул. Земляной Вал, 48Б', 'ул. Земляной Вал', '249936', '24384', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('176', 'аренда', '220564554', 'https://www.cian.ru/rent/commercial/220564554/', '2020-04-03', 'Москва, ЦАО, р-н Таганский, ул. Земляной Вал, 54С1', 'ул. Земляной Вал', '340000', '51708', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('177', 'аренда', '228673854', 'https://www.cian.ru/rent/commercial/228673854/', '2020-04-03', 'Москва, ЦАО, р-н Таганский, Котельническая наб., 1/15', 'Котельническая наб.', '170000', '20400', 'ПСН', 'офисное', '83');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('178', 'аренда', '223719622', 'https://www.cian.ru/rent/commercial/223719622/', '2020-04-03', 'Москва, ЦАО, р-н Таганский, ул. Нижняя Радищевская, 5с3', 'ул. Нижняя Радищевская', '1801600', '67560', 'торговое, общепит', 'торговое', '14');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('179', 'аренда', '170114641', 'https://www.cian.ru/rent/commercial/170114641/', '2020-04-03', 'Москва, ЦАО, р-н Таганский, Таганская пл., 86/1С1', 'Таганская пл.', '129998', '82104', 'ПСН', 'торговое', '26');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('180', 'аренда', '224507064', 'https://www.cian.ru/rent/commercial/224507064/', '2020-04-03', 'Москва, ЦАО, р-н Тверской, ул. Петровка, 21С1', 'ул. Петровка', '2133334', '32004', 'торговое, общепит', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('181', 'аренда', '218242629', 'https://www.cian.ru/rent/commercial/218242629/', '2020-04-03', 'Москва, ЦАО, р-н Тверской, ул. Петровка, 15', 'ул. Петровка', '2250000', '57204', 'торговое, общепит', 'торговое', '38');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('182', 'аренда', '227210477', 'https://www.cian.ru/rent/commercial/227210477/', '2020-04-03', 'Москва, ЦАО, р-н Тверской, Тверская ул., 28к1', 'Тверская ул.', '15499824', '59928', 'торговое, общепит', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('183', 'аренда', '227898780', 'https://www.cian.ru/rent/commercial/227898780/', '2020-04-03', 'Москва, ЦАО, р-н Тверской, ул. Большая Дмитровка, 11с1А', 'ул. Большая Дмитровка', '2500000', '85476', 'торговое, общепит', 'торговое', '29');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('184', 'аренда', '224366805', 'https://www.cian.ru/rent/commercial/224366805/', '2020-04-03', 'Москва, ЦАО, р-н Тверской, ул. Большая Дмитровка, 10', 'ул. Большая Дмитровка', '2672988', '124320', 'торговое', 'ПСН', '4');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('185', 'аренда', '228813858', 'https://www.cian.ru/rent/commercial/228813858/', '2020-04-03', 'Москва, ЦАО, р-н Тверской, Камергерский пер., 6/5с3', 'Камергерский пер.', '2900000', '106428', 'торговое, общепит', 'торговое', '29');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('186', 'аренда', '225965068', 'https://www.cian.ru/rent/commercial/225965068/', '2020-04-03', 'Москва, ЦАО, р-н Тверской, Тверская ул., 9', 'Тверская ул.', '2500188', '56184', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('187', 'аренда', '227564670', 'https://www.cian.ru/rent/commercial/227564670/', '2020-04-03', 'Москва, ЦАО, р-н Тверской, Тверская ул., 5/6', 'Тверская ул.', '1800000', '67500', 'торговое, общепит', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('188', 'аренда', '227895093', 'https://www.cian.ru/rent/commercial/227895093/', '2020-04-03', 'Москва, ЦАО, р-н Пресненский, пер. Брюсов, 2/14С9', 'пер. Брюсов', '668000', '20040', 'ПСН', 'торговое', '11');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('189', 'аренда', '224531040', 'https://www.cian.ru/rent/commercial/224531040/', '2020-04-03', 'Москва, ЦАО, р-н Пресненский, Большая Никитская ул., 37С1', 'Большая Никитская ул.', '1397659', '36696', 'ПСН', 'офисное', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('190', 'аренда', '228815653', 'https://www.cian.ru/rent/commercial/228815653/', '2020-04-03', 'Москва, ЦАО, р-н Арбат, ул. Арбат, 4С1', 'ул. Арбат', '1500000', '60000', 'торговое', 'ПСН', '29');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('191', 'аренда', '223451031', 'https://www.cian.ru/rent/commercial/223451031/', '2020-04-03', 'Москва, ЦАО, р-н Арбат, ул. Новый Арбат, 22', 'ул. Новый Арбат', '1899441', '36408', 'торговое, общепит', 'торговое', '4');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('192', 'аренда', '223451031', 'https://www.cian.ru/rent/commercial/223451031/', '2020-04-03', 'Москва, ЦАО, р-н Арбат, ул. Новый Арбат, 22', 'ул. Новый Арбат', '1599780', '65520', 'торговое, общепит', 'торговое', '4');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('193', 'аренда', '225028120', 'https://www.cian.ru/rent/commercial/225028120/', '2020-04-03', 'Москва, ЦАО, р-н Арбат, ул. Арбат, 25/36', 'ул. Арбат', '1900000', '47928', 'торговое, общепит', 'торговое', '15');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('194', 'аренда', '213009480', 'https://www.cian.ru/rent/commercial/213009480/', '2020-04-03', 'Москва, ЦАО, р-н Хамовники, ул. Пречистенка, 38', 'ул. Пречистенка, 38', '1900034', '32568', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('195', 'аренда', '185170113', 'https://www.cian.ru/rent/commercial/185170113/', '2020-04-03', 'Москва, ЦАО, р-н Хамовники, Пречистенская наб., 5', 'Пречистенская наб.', '1577917', '35004', 'ПСН', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('196', 'аренда', '224403606', 'https://www.cian.ru/rent/commercial/224403606/', '2020-04-03', 'Москва, ЦАО, р-н Якиманка, Якиманская наб., 2к1', 'Якиманская наб.', '3966000', '72000', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('197', 'аренда', '203444721', 'https://www.cian.ru/rent/commercial/203444721/', '2020-04-03', 'Москва, ЦАО, р-н Якиманка, ул. Большая Полянка, 3/9', 'ул. Большая Полянка', '999000', '24672', 'торговое', 'ПСН', '38');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('198', 'аренда', '226514784', 'https://www.cian.ru/rent/commercial/226514784/', '2020-04-03', 'Москва, ЦАО, р-н Замоскворечье, Пятницкая ул., 57С1', 'Пятницкая ул.', '1141834', '33996', 'ПСН', 'торговое', '54');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('199', 'аренда', '227734150', 'https://www.cian.ru/rent/commercial/227734150/', '2020-04-03', 'Москва, ЦАО, р-н Мещанский, Малая Сухаревская пл., 12', 'Малая Сухаревская пл.', '1595100', '36000', 'торговое, общепит', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('200', 'аренда', '227625546', 'https://www.cian.ru/rent/commercial/227625546/', '2020-04-03', 'Москва, ЦАО, р-н Басманный, Мясницкая ул., 22/2С1', 'Мясницкая ул.', '890000', '36828', 'торговое', 'ПСН', '47');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('201', 'аренда', '229000269', 'https://www.cian.ru/rent/commercial/229000269/', '2020-04-06', 'Москва, ЦАО, р-н Мещанский, ул. Кузнецкий Мост, 21/5', 'ул. Кузнецкий Мост', '1979291', '55044', 'торговое', 'торговое, общепит', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('202', 'аренда', '229003579', 'https://www.cian.ru/rent/commercial/229003579/', '2020-04-06', 'Москва, ЦАО, р-н Мещанский, ул. Кузнецкий Мост, 21/5', 'ул. Кузнецкий Мост', '3099495', '50604', 'торговое', 'торговое, общепит', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('203', 'аренда', '229119455', 'https://www.cian.ru/rent/commercial/229119455/', '2020-04-06', 'Москва, ЦАО, р-н Красносельский, Мясницкая ул., 13С20', 'Мясницкая ул.', '650009', '14184', 'торговое, общепит', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('204', 'аренда', '225753108', 'https://www.cian.ru/rent/commercial/225753108/', '2020-04-06', 'Москва, ЦАО, р-н Красносельский, Мясницкая ул., 11', 'Мясницкая ул.', '1550000', '61872', 'торговое, общепит', 'торговое', '38');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('205', 'аренда', '228934228', 'https://www.cian.ru/rent/commercial/228934228/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, Мясницкая ул., 8/2', 'Мясницкая ул.', '1900000', '64776', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('206', 'аренда', '229121534', 'https://www.cian.ru/rent/commercial/229121534/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, Кривоколенный пер., 10С6', 'Кривоколенный пер.', '960000', '32916', 'торговое, общепит', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('207', 'аренда', '229010565', 'https://www.cian.ru/rent/commercial/229010565/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, ул. Маросейка, 7/8', 'ул. Маросейка', '3240007', '62244', 'торговое', 'ПСН', '87');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('208', 'аренда', '229165430', 'https://www.cian.ru/rent/commercial/229165430/', '2020-04-06', 'Москва, ЦАО, р-н Красносельский, пер. Селиверстов, 2/24', 'пер. Селиверстов', '950000', '30000', 'офисное', 'офисное', '7');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('209', 'аренда', '229184095', 'https://www.cian.ru/rent/commercial/229184095/', '2020-04-06', 'Москва, ЦАО, р-н Красносельский, Садовая-Спасская ул., 18С1', 'Садовая-Спасская ул.', '1152000', '32760', 'торговое', 'ПСН', '7');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('210', 'аренда', '228915986', 'https://www.cian.ru/rent/commercial/228915986/', '2020-04-06', 'Москва, ЦАО, р-н Красносельский, Садовая-Спасская ул., 12/23С2', 'Садовая-Спасская ул.', '850000', '44544', 'торговое', 'торговое', '89');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('211', 'аренда', '228941284', 'https://www.cian.ru/rent/commercial/228941284/', '2020-04-06', 'Москва, ЦАО, р-н Красносельский, Большая Сухаревская пл., 16/18С2', 'Большая Сухаревская пл.', '440000', '52800', 'торговое', 'ПСН', '90');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('212', 'аренда', '229119626', 'https://www.cian.ru/rent/commercial/229119626/', '2020-04-06', 'Москва, ЦАО, р-н Красносельский, Большая Сухаревская пл., 16/18С1', 'Большая Сухаревская пл.', '420000', '12732', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('213', 'аренда', '229169032', 'https://www.cian.ru/rent/commercial/229169032/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, Мясницкий проезд, 4С1', 'Мясницкий проезд', '399960', '47520', 'торговое, общепит', 'ПСН', '91');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('214', 'аренда', '229152503', 'https://www.cian.ru/rent/commercial/229152503/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, Большой Козловский пер., 3', 'Большой Козловский пер.', '750000', '42996', 'торговое, общепит', 'торговое', '7');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('215', 'аренда', '229005601', 'https://www.cian.ru/rent/commercial/229005601/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, Хоромный туп., 6', 'Хоромный туп.', '2000000', '240000', 'торговое', 'торговое', '92');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('216', 'аренда', '228938716', 'https://www.cian.ru/rent/commercial/228938716/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, Боярский пер., 6', 'Боярский пер.', '60000', '36000', 'торговое', 'ПСН', '93');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('217', 'аренда', '228874112', 'https://www.cian.ru/rent/commercial/228874112/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, Большой Козловский пер., 10С1', 'Большой Козловский пер.', '209988', '33156', 'офисное', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('218', 'аренда', '228874072', 'https://www.cian.ru/rent/commercial/228874072/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, Мясницкая ул., 32/2с2', 'Мясницкая ул.', '451943', '79872', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('219', 'аренда', '228940539', 'https://www.cian.ru/rent/commercial/228940539/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, ул. Чаплыгина, 8С1', 'ул. Чаплыгина', '200063', '32016', 'офисное', 'ПСН', '94');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('220', 'аренда', '229183719', 'https://www.cian.ru/rent/commercial/229183719/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, Чистопрудный бул., 10С1', 'Чистопрудный бул.', '450000', '67500', 'ПСН', 'торговое', '7');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('221', 'аренда', '228931674', 'https://www.cian.ru/rent/commercial/228931674/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, ул. Макаренко, 5С1а', 'ул. Макаренко', '273334', '20004', 'торговое', 'ПСН', '94');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('222', 'аренда', '229218900', 'https://www.cian.ru/rent/commercial/229218900/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, ул. Макаренко, 5С1а', 'ул. Макаренко', '120000', '20004', 'офисное', 'ПСН', '95');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('223', 'аренда', '229016169', 'https://www.cian.ru/rent/commercial/229016169/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, ул. Макаренко, 2/21С1', 'ул. Макаренко', '1500004', '75312', 'торговое', 'ПСН', '87');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('224', 'аренда', '228932941', 'https://www.cian.ru/rent/commercial/228932941/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, ул. Покровка, 11', 'ул. Покровка', '230000', '13800', 'ПСН', 'торговое', '94');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('225', 'аренда', '228939106', 'https://www.cian.ru/rent/commercial/228939106/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, ул. Покровка, 21-23/25С1', 'ул. Покровка', '950000', '31236', 'торговое', 'ПСН', '90');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('226', 'аренда', '228939941', 'https://www.cian.ru/rent/commercial/228939941/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, ул. Покровка, 27С1', 'ул. Покровка', '1140000', '49968', 'ПСН', 'торговое', '90');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('227', 'аренда', '225578956', 'https://www.cian.ru/rent/commercial/225578956/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, пер. Лялин, 1/36С2', 'пер. Лялин', '249521', '20652', 'торговое, общепит', 'ПСН', '96');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('228', 'аренда', '229183741', 'https://www.cian.ru/rent/commercial/229183741/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, ул. Покровка, 34', 'ул. Покровка', '1200000', '71640', 'торговое, общепит', 'ПСН', '7');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('229', 'аренда', '229119408', 'https://www.cian.ru/rent/commercial/229119408/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, ул. Покровка, 38А', 'ул. Покровка', '2125968', '18720', 'торговое, общепит', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('230', 'аренда', '226719614', 'https://www.cian.ru/rent/commercial/226719614/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, ул. Машкова, 28/20С1', 'ул. Машкова', '649920', '32496', 'торговое, общепит', 'торговое', '97');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('231', 'аренда', '229184662', 'https://www.cian.ru/rent/commercial/229184662/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, ул. Покровка, 48', 'ул. Покровка', '800000', '48000', 'торговое, общепит', 'торговое', '7');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('232', 'аренда', '229120532', 'https://www.cian.ru/rent/commercial/229120532/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, ул. Земляной Вал, 4С1', 'ул. Земляной Вал', '960000', '91068', 'торговое', 'ПСН', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('233', 'аренда', '229152022', 'https://www.cian.ru/rent/commercial/229152022/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, ул. Земляной Вал, 6С1', 'ул. Земляной Вал', '284000', '17040', 'ПСН', 'торговое', '7');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('234', 'аренда', '229119467', 'https://www.cian.ru/rent/commercial/229119467/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, ул. Земляной Вал, 6С1', 'ул. Земляной Вал', '1990350', '54000', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('235', 'аренда', '228933856', 'https://www.cian.ru/rent/commercial/228933856/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, ул. Земляной Вал, 6С1', 'ул. Земляной Вал', '249998', '33336', 'ПСН', 'торговое', '94');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('236', 'аренда', '229119400', 'https://www.cian.ru/rent/commercial/229119400/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, ул. Земляной Вал, 8', 'ул. Земляной Вал', '540000', '92436', 'торговое', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('237', 'аренда', '229120612', 'https://www.cian.ru/rent/commercial/229120612/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, пер. Лялин, 5С1', 'пер. Лялин', '960000', '28800', 'ПСН', 'торговое', '1');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('238', 'аренда', '228915977', 'https://www.cian.ru/rent/commercial/228915977/', '2020-04-06', 'Москва, ЦАО, р-н Басманный, пер. Лялин, 5С1', 'пер. Лялин', '1600000', '42576', 'офисное', 'торговое', '89');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('239', 'аренда', '228937000', 'https://www.cian.ru/rent/commercial/228937000/', '2020-04-07', 'Москва, ЦАО, р-н Басманный, ул. Маросейка, 9/13/2С7', 'ул. Маросейка', '300003', '18180', 'офисное', 'ПСН', '94');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('240', 'аренда', '228939389', 'https://www.cian.ru/rent/commercial/228939389/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, Солянский туп., 1', 'Солянский туп.', '600000', '207492', 'торговое', 'торговое', '90');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('241', 'аренда', '228939392', 'https://www.cian.ru/rent/commercial/228939392/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, Солянский туп., 1', 'Солянский туп.', '1700000', '86772', 'торговое, общепит', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('242', 'аренда', '229196087', 'https://www.cian.ru/rent/commercial/229196087/', '2020-04-07', 'Москва, ЦАО, р-н Басманный, ул. Маросейка, 2/15С1', 'ул. Маросейка', '499900', '119976', 'торговое, общепит', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('243', 'аренда', '229165306', 'https://www.cian.ru/rent/commercial/229165306/', '2020-04-07', 'Москва, ЦАО, р-н Басманный, Лубянский проезд, 15С2', 'Лубянский проезд', '550000', '29724', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('244', 'аренда', '225794550', 'https://www.cian.ru/rent/commercial/225794550/', '2020-04-07', 'Москва, ЦАО, р-н Басманный, ул. Маросейка, 9', 'ул. Маросейка', '1220250', '90000', 'торговое', 'ПСН', '98');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('245', 'аренда', '228939505', 'https://www.cian.ru/rent/commercial/228939505/', '2020-04-07', 'Москва, ЦАО, р-н Басманный, ул. Маросейка, 9', 'ул. Маросейка', '1500000', '72000', 'торговое, общепит', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('246', 'аренда', '229289575', 'https://www.cian.ru/rent/commercial/229289575/', '2020-04-07', 'Москва, ЦАО, р-н Басманный, ул. Маросейка, 9/2С1', 'ул. Маросейка', '1700000', '125148', 'торговое', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('247', 'аренда', '229120225', 'https://www.cian.ru/rent/commercial/229120225/', '2020-04-07', 'Москва, ЦАО, р-н Басманный, ул. Маросейка, 10/1С3', 'ул. Маросейка', '600000', '72000', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('248', 'аренда', '229184061', 'https://www.cian.ru/rent/commercial/229184061/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, ул. Солянка, 2/6С1', 'ул. Солянка', '400000', '42480', 'ПСН', 'офисное', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('249', 'аренда', '216808268', 'https://www.cian.ru/rent/commercial/216808268/', '2020-04-07', 'Москва, ЦАО, р-н Басманный, ул. Солянка, 1/2с1', 'ул. Солянка', '1397500', '42996', 'торговое, общепит', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('250', 'аренда', '228938928', 'https://www.cian.ru/rent/commercial/228938928/', '2020-04-07', 'Москва, ЦАО, р-н Басманный, ул. Солянка, 1/2', 'ул. Солянка', '2000000', '48096', 'торговое, общепит', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('251', 'аренда', '229184132', 'https://www.cian.ru/rent/commercial/229184132/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, ул. Солянка, 4С1-1а', 'ул. Солянка', '2500000', '26856', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('252', 'аренда', '212653530', 'https://www.cian.ru/rent/commercial/212653530/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, ул. Солянка, 4С1-1а', 'ул. Солянка', '1499400', '29988', 'ПСН', 'офисное', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('253', 'аренда', '227726668', 'https://www.cian.ru/rent/commercial/227726668/', '2020-04-07', 'Москва, ЦАО, р-н Басманный, ул. Солянка, 1/2к2', 'ул. Солянка', '350000', '44208', 'торговое', 'торговое', '107');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('254', 'аренда', '226405983', 'https://www.cian.ru/rent/commercial/226405983/', '2020-04-07', 'Москва, ЦАО, р-н Басманный, ул. Солянка, 1/2к2', 'ул. Солянка', '978750', '29004', 'ПСН', 'торговое', '107');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('255', 'аренда', '229233964', 'https://www.cian.ru/rent/commercial/229233964/', '2020-04-07', 'Москва, ЦАО, р-н Басманный, Подкопаевский пер., 11С1', 'Подкопаевский пер.', '1500000', '116880', 'торговое', 'ПСН', '100');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('256', 'аренда', '229152732', 'https://www.cian.ru/rent/commercial/229152732/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, ул. Солянка, 11/6С1', 'ул. Солянка', '600000', '28800', 'торговое', 'офисное', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('257', 'аренда', '229152718', 'https://www.cian.ru/rent/commercial/229152718/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, Яузская ул., 1/15С1', 'Яузская ул.', '420000', '20160', 'торговое, общепит', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('258', 'аренда', '214702447', 'https://www.cian.ru/rent/commercial/214702447/', '2020-04-07', 'Москва, ЦАО, р-н Басманный, Казарменный пер., 3С6', 'Казарменный пер.', '550000', '35652', 'офисное', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('259', 'аренда', '229121380', 'https://www.cian.ru/rent/commercial/229121380/', '2020-04-07', 'Москва, ЦАО, р-н Басманный, Покровский бул., 14/5', 'Покровский бул.', '240000', '48000', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('260', 'аренда', '229120110', 'https://www.cian.ru/rent/commercial/229120110/', '2020-04-07', 'Москва, ЦАО, р-н Басманный, Покровский бул., 5С2', 'Покровский бул.', '480000', '96000', 'торговое, общепит', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('261', 'аренда', '229120566', 'https://www.cian.ru/rent/commercial/229120566/', '2020-04-07', 'Москва, ЦАО, р-н Басманный, Покровский бул., 5С2', 'Покровский бул.', '750000', '90000', 'торговое, общепит', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('262', 'аренда', '229120564', 'https://www.cian.ru/rent/commercial/229120564/', '2020-04-07', 'Москва, ЦАО, р-н Басманный, Покровский бул., 5С2', 'Покровский бул.', '1860000', '90000', 'торговое, общепит', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('263', 'аренда', '228945826', 'https://www.cian.ru/rent/commercial/228945826/', '2020-04-07', 'Москва, ЦАО, р-н Басманный, Покровский бул., 5С2', 'Покровский бул.', '437500', '69996', 'торговое, общепит', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('264', 'аренда', '228940614', 'https://www.cian.ru/rent/commercial/228940614/', '2020-04-07', 'Москва, ЦАО, р-н Басманный, Дурасовский пер., 7', 'Дурасовский пер.', '300000', '45000', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('265', 'аренда', '229120221', 'https://www.cian.ru/rent/commercial/229120221/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, ул. Земляной Вал, 46', 'ул. Земляной Вал', '360000', '17076', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('266', 'аренда', '229165286', 'https://www.cian.ru/rent/commercial/229165286/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, ул. Земляной Вал, 48А', 'ул. Земляной Вал', '250000', '27276', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('267', 'аренда', '194437861', 'https://www.cian.ru/rent/commercial/194437861/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, ул. Земляной Вал, 48А', '', '549840', '27492', 'торговое', 'ПСН', '103');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('268', 'аренда', '226714805', 'https://www.cian.ru/rent/commercial/226714805/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, ул. Земляной Вал, 50АС3', ' ул. Земляной Вал', '260000', '12996', 'ПСН', 'торговое', '104');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('269', 'аренда', '229120437', 'https://www.cian.ru/rent/commercial/229120437/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, ул. Земляной Вал, 50АС3', ' ул. Земляной Вал', '260000', '72564', 'ПСН', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('270', 'аренда', '229289488', 'https://www.cian.ru/rent/commercial/229289488/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, ул. Земляной Вал, 50АС3', ' ул. Земляной Вал', '961065', '85428', 'ПСН', 'торговое', '91');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('271', 'аренда', '226424361', 'https://www.cian.ru/rent/commercial/226424361/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, ул. Земляной Вал, 50АС2', ' ул. Земляной Вал', '250000', '24000', 'офисное', 'ПСН', '105');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('272', 'аренда', '220175159', 'https://www.cian.ru/rent/commercial/220175159/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, Серебряническая наб., 27', 'Серебряническая наб.', '352600', '12900', 'ПСН', 'торговое', '106');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('273', 'аренда', '229016603', 'https://www.cian.ru/rent/commercial/229016603/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, Гончарная ул., 7/4С1', 'Гончарная ул.', '1100000', '20004', 'торговое, общепит', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('274', 'аренда', '228946271', 'https://www.cian.ru/rent/commercial/228946271/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, Котельническая наб., 21', 'Котельническая наб.', '852000', '72000', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('275', 'аренда', '228943176', 'https://www.cian.ru/rent/commercial/228943176/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, Гончарная ул., 11С1', 'Гончарная ул.', '580834', '17004', 'офисное', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('276', 'аренда', '229235561', 'https://www.cian.ru/rent/commercial/229235561/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, Котельническая наб., 31', 'Котельническая наб.', '520300', '39996', 'торговое', 'ПСН', '100');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('277', 'аренда', '229235559', 'https://www.cian.ru/rent/commercial/229235559/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, Котельническая наб., 31', 'Котельническая наб.', '542266', '27996', 'торговое', 'ПСН', '100');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('278', 'аренда', '213317769', 'https://www.cian.ru/rent/commercial/213317769/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, Котельническая наб., 31', 'Котельническая наб.', '460000', '40032', 'торговое', 'ПСН', '100');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('279', 'аренда', '228938318', 'https://www.cian.ru/rent/commercial/228938318/', '2020-04-07', 'Москва, ЦАО, р-н Таганский, Верхняя Радищевская ул., 9С4', 'Верхняя Радищевская ул.', '720000', '45000', 'ПСН', 'офисное', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('280', 'аренда', '228947621', 'https://www.cian.ru/rent/commercial/228947621/', '2020-04-08', 'Москва, ЦАО, р-н Таганский, Верхняя Радищевская ул., 8С2', 'Верхняя Радищевская ул.', '561459', '24504', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('281', 'аренда', '229121067', 'https://www.cian.ru/rent/commercial/229121067/', '2020-04-08', 'Москва, ЦАО, р-н Таганский, Верхняя Радищевская ул., 5', 'Верхняя Радищевская ул.', '360000', '43200', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('282', 'аренда', '229165441', 'https://www.cian.ru/rent/commercial/229165441/', '2020-04-08', 'Москва, ЦАО, р-н Таганский, ул. Нижняя Радищевская, 5с1', 'ул. Нижняя Радищевская', '1600000', '96000', 'офисное', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('283', 'аренда', '220108641', 'https://www.cian.ru/rent/commercial/220108641/', '2020-04-08', 'Москва, ЦАО, р-н Таганский, ул. Нижняя Радищевская, 5с1', 'ул. Нижняя Радищевская', '2916666', '99996', 'ПСН', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('284', 'аренда', '229012418', 'https://www.cian.ru/rent/commercial/229012418/', '2020-04-08', 'Москва, ЦАО, р-н Таганский, Таганская пл., 88', 'Таганская пл.', '2899997', '29508', 'торговое', 'офисное', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('285', 'аренда', '229016508', 'https://www.cian.ru/rent/commercial/229016508/', '2020-04-08', 'Москва, ЦАО, р-н Таганский, Гончарная ул., 38', 'Гончарная ул.', '250000', '24996', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('286', 'аренда', '229016510', 'https://www.cian.ru/rent/commercial/229016510/', '2020-04-08', 'Москва, ЦАО, р-н Таганский, Гончарная ул., 38', 'Гончарная ул.', '379995', '27636', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('287', 'аренда', '228915997', 'https://www.cian.ru/rent/commercial/228915997/', '2020-04-08', 'Москва, ЦАО, р-н Замоскворечье, Садовническая ул., 57АС1', 'Садовническая ул.', '884333', '35004', 'ПСН', 'офисное', '89');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('288', 'аренда', '229003418', 'https://www.cian.ru/rent/commercial/229003418/', '2020-04-08', 'Москва, ЦАО, р-н Замоскворечье, Садовническая ул., 46С4', 'Садовническая ул.', '289850', '22440', 'ПСН', 'офисное', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('289', 'аренда', '229131404', 'https://www.cian.ru/rent/commercial/229131404/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Большая Татарская ул., 35С4', 'Большая Татарская ул.', '4835700', '32400', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('290', 'аренда', '229119612', 'https://www.cian.ru/rent/commercial/229119612/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Татарская ул., 14', 'Татарская ул.', '360000', '29592', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('291', 'аренда', '228947975', 'https://www.cian.ru/rent/commercial/228947975/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, ул. Зацепский Вал, 2С3', ' ул. Зацепский Вал', '400000', '165516', 'торговое', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('292', 'аренда', '228947972', 'https://www.cian.ru/rent/commercial/228947972/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, ул. Зацепский Вал, 2С3', ' ул. Зацепский Вал', '449999', '163632', 'торговое', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('293', 'аренда', '228947969', 'https://www.cian.ru/rent/commercial/228947969/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, ул. Зацепский Вал, 2С3', ' ул. Зацепский Вал', '475000', '162852', 'торговое', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('294', 'аренда', '228947966', 'https://www.cian.ru/rent/commercial/228947966/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, ул. Зацепский Вал, 2С3', ' ул. Зацепский Вал', '700000', '140004', 'торговое', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('295', 'аренда', '219335876', 'https://www.cian.ru/rent/commercial/219335876/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, ул. Бахрушина, 28', 'ул. Бахрушина', '380000', '62124', 'торговое', 'ПСН', '38');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('296', 'аренда', '229555195', 'https://www.cian.ru/rent/commercial/229555195/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Валовая ул., 2-4/44С1', ' Валовая ул.', '299950', '51420', 'ПСН', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('297', 'аренда', '229558198', 'https://www.cian.ru/rent/commercial/229558198/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Валовая ул., 2-4/44С1', ' Валовая ул.', '1009000', '142452', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('298', 'аренда', '229455144', 'https://www.cian.ru/rent/commercial/229455144/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Новокузнецкая ул., 33С1', 'Новокузнецкая ул.', '480000', '33204', 'ПСН', 'офисное', '108');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('299', 'аренда', '229593503', 'https://www.cian.ru/rent/commercial/229593503/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Валовая ул., 8', 'Валовая ул.', '400000', '130440', 'торговое', 'ПСН', '48');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('300', 'аренда', '229121303', 'https://www.cian.ru/rent/commercial/229121303/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Пятницкая ул., 42', 'Пятницкая ул.', '2640000', '35592', 'ПСН', 'офисное', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('301', 'аренда', '229561711', 'https://www.cian.ru/rent/commercial/229561711/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Пятницкая ул., 33-35С1', 'Пятницкая ул.', '549998', '74580', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('302', 'аренда', '229561498', 'https://www.cian.ru/rent/commercial/229561498/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Пятницкая ул., 33-35С1', 'Пятницкая ул.', '1049987', '58176', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('303', 'аренда', '229561429', 'https://www.cian.ru/rent/commercial/229561429/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Пятницкая ул., 33-35С1', 'Пятницкая ул.', '1899984', '63072', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('304', 'аренда', '229458691', 'https://www.cian.ru/rent/commercial/229458691/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Новокузнецкая ул., 1С1', 'Новокузнецкая ул.', '420000', '84000', 'ПСН', 'торговое', '108');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('305', 'аренда', '229458592', 'https://www.cian.ru/rent/commercial/229458592/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Пятницкая ул., 29', 'Пятницкая ул.', '1000000', '5328', 'ПСН', 'торговое', '108');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('306', 'аренда', '227810839', 'https://www.cian.ru/rent/commercial/227810839/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Большая Татарская ул., 13С5', 'Большая Татарская ул.', '33000', '56568', 'торговое', 'ПСН', '110');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('307', 'аренда', '227810693', 'https://www.cian.ru/rent/commercial/227810693/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Большая Татарская ул., 13С5', 'Большая Татарская ул.', '57000', '38004', 'торговое', 'ПСН', '110');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('308', 'аренда', '229165614', 'https://www.cian.ru/rent/commercial/229165614/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Пятницкий пер., 10С1', 'Пятницкий пер.', '670000', '113244', 'торговое, общепит', 'торговое', '7');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('309', 'аренда', '228945633', 'https://www.cian.ru/rent/commercial/228945633/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Большая Татарская ул., вл5', 'Большая Татарская ул.', '400005', '29628', 'офисное', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('310', 'аренда', '228285096', 'https://www.cian.ru/rent/commercial/228285096/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Большая Татарская ул., 5С5', 'Большая Татарская ул.', '49140', '33696', 'ПСН', 'офисное', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('311', 'аренда', '229561730', 'https://www.cian.ru/rent/commercial/229561730/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Озерковская наб., 12', 'Озерковская наб.', '1998959', '24996', 'офисное', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('312', 'аренда', '228960912', 'https://www.cian.ru/rent/commercial/228960912/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Большой Овчинниковский пер., 18', 'Большой Овчинниковский пер.', '92800', '139200', 'торговое', 'ПСН', '111');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('313', 'аренда', '228955050', 'https://www.cian.ru/rent/commercial/228955050/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Большой Овчинниковский пер., 18', 'Большой Овчинниковский пер.', '2349600', '28980', 'торговое', 'ПСН', '111');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('314', 'аренда', '228960659', 'https://www.cian.ru/rent/commercial/228960659/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Большой Овчинниковский пер., 18', 'Большой Овчинниковский пер.', '3216000', '28800', 'торговое', 'ПСН', '111');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('315', 'аренда', '220212324', 'https://www.cian.ru/rent/commercial/220212324/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Пятницкий пер., 2', 'Пятницкий пер.', '69960', '13992', 'торговое', 'ПСН', '112');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('316', 'аренда', '228938183', 'https://www.cian.ru/rent/commercial/228938183/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Пятницкий пер., 2', 'Пятницкий пер.', '54000', '36000', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('317', 'аренда', '226365740', 'https://www.cian.ru/rent/commercial/226365740/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Пятницкая ул., 10С1', 'Пятницкая ул.', '649040', '102480', 'торговое', 'торговое', '113');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('318', 'аренда', '155122241', 'https://www.cian.ru/rent/commercial/155122241/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Пятницкая ул., 5', 'Пятницкая ул.', '30000', '20004', 'торговое', 'ПСН', '114');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('319', 'аренда', '229121771', 'https://www.cian.ru/rent/commercial/229121771/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Пятницкая ул., 2/38С2', 'Пятницкая ул.', '780000', '137652', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('320', 'аренда', '229568549', 'https://www.cian.ru/rent/commercial/229568549/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Пятницкая ул., 3/4С1', 'Пятницкая ул.', '39600', '22632', 'торговое', 'ПСН', '115');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('321', 'аренда', '228947555', 'https://www.cian.ru/rent/commercial/228947555/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Садовническая наб., 7', 'Садовническая наб.', '600000', '39996', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('322', 'аренда', '229121693', 'https://www.cian.ru/rent/commercial/229121693/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Садовническая ул., 11С10', 'Садовническая ул.', '384000', '23544', 'ПСН', 'офисное', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('323', 'аренда', '229012814', 'https://www.cian.ru/rent/commercial/229012814/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Садовническая ул., 29', 'Садовническая ул.', '500000', '60612', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('324', 'аренда', '229168667', 'https://www.cian.ru/rent/commercial/229168667/', '2020-04-09', 'Москва, ЦАО, р-н Замоскворечье, Садовническая ул., 29', 'Садовническая ул.', '799848', '38088', 'торговое', 'ПСН', '91');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('325', 'аренда', '228941792', 'https://www.cian.ru/rent/commercial/228941792/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, Берсеневский пер., 5с2', 'Берсеневский пер.', '565500', '9000', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('326', 'аренда', '229167949', 'https://www.cian.ru/rent/commercial/229167949/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, Берсеневская наб., 6С2', 'Берсеневская наб.', '1766250', '27000', 'торговое', 'ПСН', '91');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('327', 'аренда', '229455288', 'https://www.cian.ru/rent/commercial/229455288/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, Берсеневская наб., 6С2', 'Берсеневская наб.', '213125', '14952', 'торговое', 'ПСН', '108');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('328', 'аренда', '228937145', 'https://www.cian.ru/rent/commercial/228937145/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, Берсеневская наб., 6С2', 'Берсеневская наб.', '144000', '32004', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('329', 'аренда', '229192945', 'https://www.cian.ru/rent/commercial/229192945/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, Болотная наб., 3С2', 'Болотная наб.', '359324', '26292', 'торговое, общепит', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('330', 'аренда', '229168427', 'https://www.cian.ru/rent/commercial/229168427/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, Берсеневский пер., 2С1', 'Берсеневский пер.', '1049000', '12000', 'торговое', 'ПСН', '91');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('331', 'аренда', '228940608', 'https://www.cian.ru/rent/commercial/228940608/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, Берсеневский пер., 2С1', 'Берсеневский пер.', '1301667', '21996', 'ПСН', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('332', 'аренда', '228938445', 'https://www.cian.ru/rent/commercial/228938445/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, Берсеневский пер., 2С1', 'Берсеневский пер.', '3625600', '19200', 'торговое, общепит', 'ПСН', '90');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('333', 'аренда', '228940600', 'https://www.cian.ru/rent/commercial/228940600/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, Берсеневский пер., 2С1', 'Берсеневский пер.', '288092', '19104', 'офисное', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('334', 'аренда', '228940596', 'https://www.cian.ru/rent/commercial/228940596/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, Берсеневский пер., 2С1', 'Берсеневский пер.', '209667', '17004', 'офисное', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('335', 'аренда', '229015241', 'https://www.cian.ru/rent/commercial/229015241/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, Берсеневский пер., 5С4', 'Берсеневский пер.', '589784', '21996', 'торговое, общепит', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('336', 'аренда', '229561724', 'https://www.cian.ru/rent/commercial/229561724/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, Якиманская наб., 4С1', 'Якиманская наб.', '3580500', '42000', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('337', 'аренда', '151415825', 'https://www.cian.ru/rent/commercial/151415825/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, Якиманская наб., 2', 'Якиманская наб.', '2058117', '41304', 'торговое', 'ПСН', '116');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('338', 'аренда', '228936799', 'https://www.cian.ru/rent/commercial/228936799/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, ул. Большая Полянка, 4/10', 'ул. Большая Полянка', '350002', '49416', 'торговое', 'ПСН', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('339', 'аренда', '229584532', 'https://www.cian.ru/rent/commercial/229584532/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, ул. Большая Якиманка, 22К3', 'ул. Большая Якиманка', '879699', '27072', 'ПСН', 'офисное', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('340', 'аренда', '228199385', 'https://www.cian.ru/rent/commercial/228199385/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, ул. Большая Якиманка, 22', 'ул. Большая Якиманка', '216000', '54000', 'торговое', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('341', 'аренда', '228199385', 'https://www.cian.ru/rent/commercial/228199385/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, ул. Большая Якиманка, 22', 'ул. Большая Якиманка', '1066500', '54000', 'торговое', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('342', 'аренда', '226637411', 'https://www.cian.ru/rent/commercial/226637411/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, ул. Большая Якиманка, 22', 'ул. Большая Якиманка', '1837000', '66000', 'торговое', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('343', 'аренда', '229152337', 'https://www.cian.ru/rent/commercial/229152337/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, ул. Большая Якиманка, 22', 'ул. Большая Якиманка', '504000', '86400', 'торговое', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('344', 'аренда', '227825958', 'https://www.cian.ru/rent/commercial/227825958/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, ул. Большая Якиманка, 22', 'ул. Большая Якиманка', '1062000', '54000', 'торговое', 'торговое', '99');
		INSERT INTO First_data(ID, Kind_deal, ID_offer, REF, Time_make, Adres, Street, Price, udel_Price, Purpose, second_Purpose, ID_ag_First_data) VALUES ('345', 'аренда', '229152341', 'https://www.cian.ru/rent/commercial/229152341/', '2020-04-09', 'Москва, ЦАО, р-н Якиманка, ул. Большая Якиманка, 22', 'ул. Большая Якиманка', '1224000', '86400', 'торговое', 'торговое', '99');


-- Вторая таблица, посвещенная объектам недвижимости. Тут представлено детальное описание характеристик расположения объектов.

		DROP TABLE IF EXISTS Place;
		CREATE TABLE Place (
			ID_Place SERIAL PRIMARY KEY,
			Okrug VARCHAR(5) NOT NULL,
			Area VARCHAR(20) NOT NULL,
			Metro VARCHAR(30) NOT NULL,
			Time_to_metro INT NOT NULL,
			Territory ENUM('Внутри СК', 'СК - ТТК', 'ТТК - МКАД'),
			INDEX ind_Area(Area),
			INDEX ind_Metro(Metro),
			INDEX ind_Time_to_metro(Time_to_metro),
			INDEX ind_Okrug_Territory(Okrug, Territory),
			INDEX ind_Territory(Territory),
			FOREIGN KEY (ID_Place) REFERENCES First_data(ID)
			ON UPDATE CASCADE
			ON DELETE RESTRICT
		);


-- Внесение информации в данную таблицу


INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('1', 'ЦАО', 'Мещанский', 'Лубянка', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('2', 'ЦАО', 'Мещанский', 'Кузнецкий мост', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('3', 'ЦАО', 'Мещанский', 'Кузнецкий мост', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('4', 'ЦАО', 'Мещанский', 'Кузнецкий мост', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('5', 'ЦАО', 'Мещанский', 'Кузнецкий мост', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('6', 'ЦАО', 'Мещанский', 'Трубная', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('7', 'ЦАО', 'Мещанский', 'Сретенский бульвар', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('8', 'ЦАО', 'Красносельский', 'Сухаревская', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('9', 'ЦАО', 'Мещанский', 'Сухаревская', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('10', 'ЦАО', 'Мещанский', 'Сухаревская', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('11', 'ЦАО', 'Тверской', 'Цветной бульвар', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('12', 'ЦАО', 'Тверской', 'Цветной бульвар', '11', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('13', 'ЦАО', 'Тверской', 'Цветной бульвар', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('14', 'ЦАО', 'Тверской', 'Цветной бульвар', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('15', 'ЦАО', 'Тверской', 'Цветной бульвар', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('16', 'ЦАО', 'Тверской', 'Трубная', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('17', 'ЦАО', 'Мещанский', 'Трубная', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('18', 'ЦАО', 'Тверской', 'Чеховская', '9', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('19', 'ЦАО', 'Тверской', 'Чеховская', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('20', 'ЦАО', 'Тверской', 'Охотный ряд', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('21', 'ЦАО', 'Тверской', 'Охотный ряд', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('22', 'ЦАО', 'Тверской', 'Маяковская', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('23', 'ЦАО', 'Тверской', 'Маяковская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('24', 'ЦАО', 'Тверской', 'Маяковская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('25', 'ЦАО', 'Тверской', 'Маяковская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('26', 'ЦАО', 'Тверской', 'Маяковская', '6', 'СК - ТТК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('27', 'ЦАО', 'Тверской', 'Новослободская', '7', 'СК - ТТК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('28', 'ЦАО', 'Тверской', 'Пушкинская', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('29', 'ЦАО', 'Тверской', 'Маяковская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('30', 'ЦАО', 'Пресненский', 'Маяковская', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('31', 'ЦАО', 'Пресненский', 'Пушкинская', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('32', 'ЦАО', 'Пресненский', 'Пушкинская', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('33', 'ЦАО', 'Тверской', 'Пушкинская', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('34', 'ЦАО', 'Тверской', 'Тверская', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('35', 'ЦАО', 'Пресненский', 'Пушкинская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('36', 'ЦАО', 'Пресненский', 'Пушкинская', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('37', 'ЦАО', 'Пресненский', 'Пушкинская', '11', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('38', 'ЦАО', 'Пресненский', 'Тверская', '9', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('39', 'ЦАО', 'Пресненский', 'Тверская', '9', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('40', 'ЦАО', 'Пресненский', 'Тверская', '9', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('41', 'ЦАО', 'Пресненский', 'Пушкинская', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('42', 'ЦАО', 'Тверской', 'Охотный ряд', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('43', 'ЦАО', 'Арбат', 'Александровский сад', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('44', 'ЦАО', 'Пресненский', 'Арбатская', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('45', 'ЦАО', 'Пресненский', 'Арбатская', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('46', 'ЦАО', 'Арбат', 'Арбатская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('47', 'ЦАО', 'Арбат', 'Арбатская', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('48', 'ЦАО', 'Арбат', 'Арбатская', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('49', 'ЦАО', 'Арбат', 'Смоленская', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('50', 'ЦАО', 'Арбат', 'Смоленская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('51', 'ЦАО', 'Арбат', 'Смоленская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('52', 'ЦАО', 'Арбат', 'Смоленская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('53', 'ЦАО', 'Арбат', 'Арбатская', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('54', 'ЦАО', 'Арбат', 'Смоленская', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('55', 'ЦАО', 'Арбат', 'Смоленская', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('56', 'ЦАО', 'Арбат', 'Смоленская', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('57', 'ЦАО', 'Арбат', 'Смоленская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('58', 'ЦАО', 'Арбат', 'Смоленская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('59', 'ЦАО', 'Арбат', 'Смоленская', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('60', 'ЦАО', 'Арбат', 'Арбатская', '9', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('61', 'ЦАО', 'Арбат', 'Арбатская', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('62', 'ЦАО', 'Арбат', 'Арбатская', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('63', 'ЦАО', 'Арбат', 'Кропоткинская', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('64', 'ЦАО', 'Арбат', 'Кропоткинская', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('65', 'ЦАО', 'Хамовники', 'Кропоткинская', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('66', 'ЦАО', 'Хамовники', 'Кропоткинская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('67', 'ЦАО', 'Хамовники', 'Парк Культуры', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('68', 'ЦАО', 'Хамовники', 'Парк Культуры', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('69', 'ЦАО', 'Хамовники', 'Парк Культуры', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('70', 'ЦАО', 'Хамовники', 'Парк Культуры', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('71', 'ЦАО', 'Хамовники', 'Парк Культуры', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('72', 'ЦАО', 'Хамовники', 'Кропоткинская', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('73', 'ЦАО', 'Хамовники', 'Парк Культуры', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('74', 'ЦАО', 'Хамовники', 'Парк Культуры', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('75', 'ЦАО', 'Хамовники', 'Парк Культуры', '9', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('76', 'ЦАО', 'Якиманка', 'Боровицкая', '11', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('77', 'ЦАО', 'Якиманка', 'Новокузнецкая', '12', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('78', 'ЦАО', 'Якиманка', 'Третьяковская', '11', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('79', 'ЦАО', 'Якиманка', 'Полянка', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('80', 'ЦАО', 'Якиманка', 'Полянка', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('81', 'ЦАО', 'Якиманка', 'Октябрьская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('82', 'ЦАО', 'Якиманка', 'Полянка', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('83', 'ЦАО', 'Якиманка', 'Третьяковская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('84', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('85', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('86', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('87', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('88', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('89', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('90', 'ЦАО', 'Замоскворечье', 'Третьяковская', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('91', 'ЦАО', 'Замоскворечье', 'Третьяковская', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('92', 'ЦАО', 'Замоскворечье', 'Третьяковская', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('93', 'ЦАО', 'Замоскворечье', 'Третьяковская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('94', 'ЦАО', 'Замоскворечье', 'Третьяковская', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('95', 'ЦАО', 'Замоскворечье', 'Павелецкая', '9', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('96', 'ЦАО', 'Замоскворечье', 'Полянка', '9', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('97', 'ЦАО', 'Замоскворечье', 'Третьяковская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('98', 'ЦАО', 'Замоскворечье', 'Павелецкая', '9', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('99', 'ЦАО', 'Замоскворечье', 'Третьяковская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('100', 'ЦАО', 'Замоскворечье', 'Третьяковская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('101', 'ЦАО', 'Замоскворечье', 'Павелецкая', '11', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('102', 'ЦАО', 'Якиманка', 'Полянка', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('103', 'ЦАО', 'Якиманка', 'Полянка', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('104', 'ЦАО', 'Якиманка', 'Полянка', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('105', 'ЦАО', 'Якиманка', 'Добрынинская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('106', 'ЦАО', 'Якиманка', 'Октябрьская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('107', 'ЦАО', 'Якиманка', 'Октябрьская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('108', 'ЦАО', 'Якиманка', 'Боровицкая', '11', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('109', 'ЦАО', 'Замоскворечье', 'Павелецкая', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('110', 'ЦАО', 'Замоскворечье', 'Павелецкая', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('111', 'ЦАО', 'Замоскворечье', 'Павелецкая', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('112', 'ЦАО', 'Замоскворечье', 'Павелецкая', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('113', 'ЦАО', 'Замоскворечье', 'Павелецкая', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('114', 'ЦАО', 'Замоскворечье', 'Павелецкая', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('115', 'ЦАО', 'Замоскворечье', 'Павелецкая', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('116', 'ЦАО', 'Замоскворечье', 'Павелецкая', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('117', 'ЦАО', 'Замоскворечье', 'Павелецкая', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('118', 'ЦАО', 'Замоскворечье', 'Павелецкая', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('119', 'ЦАО', 'Замоскворечье', 'Павелецкая', '6', 'СК - ТТК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('120', 'ЦАО', 'Замоскворечье', 'Павелецкая', '5', 'СК - ТТК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('121', 'ЦАО', 'Замоскворечье', 'Павелецкая', '5', 'СК - ТТК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('122', 'ЦАО', 'Хамовники', 'Парк Культуры', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('123', 'ЦАО', 'Хамовники', 'Парк Культуры', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('124', 'ЦАО', 'Хамовники', 'Кропоткинская', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('125', 'ЦАО', 'Арбат', 'Смоленская', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('126', 'ЦАО', 'Арбат', 'Арбатская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('127', 'ЦАО', 'Арбат', 'Арбатская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('128', 'ЦАО', 'Арбат', 'Арбатская', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('129', 'ЦАО', 'Арбат', 'Арбатская', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('130', 'ЦАО', 'Пресненский', 'Арбатская', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('131', 'ЦАО', 'Тверской', 'Тверская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('132', 'ЦАО', 'Пресненский', 'Маяковская', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('133', 'ЦАО', 'Тверской', 'Пушкинская', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('134', 'ЦАО', 'Тверской', 'Пушкинская', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('135', 'ЦАО', 'Тверской', 'Чеховская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('136', 'ЦАО', 'Тверской', 'Цветной бульвар', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('137', 'ЦАО', 'Тверской', 'Пушкинская', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('138', 'ЦАО', 'Тверской', 'Трубная', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('139', 'ЦАО', 'Красносельский', 'Тургеневская', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('140', 'ЦАО', 'Басманный', 'Тургеневская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('141', 'ЦАО', 'Басманный', 'Чистые пруды', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('142', 'ЦАО', 'Басманный', 'Чистые пруды', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('143', 'ЦАО', 'Басманный', 'Красные ворота', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('144', 'ЦАО', 'Басманный', 'Красные ворота', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('145', 'ЦАО', 'Басманный', 'Красные ворота', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('146', 'ЦАО', 'Басманный', 'Красные ворота', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('147', 'ЦАО', 'Басманный', 'Красные ворота', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('148', 'ЦАО', 'Басманный', 'Красные ворота', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('149', 'ЦАО', 'Басманный', 'Красные ворота', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('150', 'ЦАО', 'Басманный', 'Красные ворота', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('151', 'ЦАО', 'Басманный', 'Курская', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('152', 'ЦАО', 'Басманный', 'Курская', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('153', 'ЦАО', 'Басманный', 'Курская', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('154', 'ЦАО', 'Басманный', 'Курская', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('155', 'ЦАО', 'Басманный', 'Курская', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('156', 'ЦАО', 'Басманный', 'Китай-город', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('157', 'ЦАО', 'Басманный', 'Чистые пруды', '9', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('158', 'ЦАО', 'Мещанский', 'Сретенский бульвар', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('159', 'ЦАО', 'Красносельский', 'Сретенский бульвар', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('160', 'ЦАО', 'Красносельский', 'Китай-город', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('161', 'ЦАО', 'Басманный', 'Китай-город', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('162', 'ЦАО', 'Басманный', 'Китай-город', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('163', 'ЦАО', 'Басманный', 'Китай-город', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('164', 'ЦАО', 'Басманный', 'Китай-город', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('165', 'ЦАО', 'Басманный', 'Китай-город', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('166', 'ЦАО', 'Басманный', 'Китай-город', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('167', 'ЦАО', 'Басманный', 'Китай-город', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('168', 'ЦАО', 'Басманный', 'Китай-город', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('169', 'ЦАО', 'Басманный', 'Чистые пруды', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('170', 'ЦАО', 'Басманный', 'Чистые пруды', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('171', 'ЦАО', 'Басманный', 'Курская', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('172', 'ЦАО', 'Басманный', 'Курская', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('173', 'ЦАО', 'Басманный', 'Курская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('174', 'ЦАО', 'Басманный', 'Курская', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('175', 'ЦАО', 'Таганский', 'Чкаловская', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('176', 'ЦАО', 'Таганский', 'Таганская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('177', 'ЦАО', 'Таганский', 'Таганская', '12', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('178', 'ЦАО', 'Таганский', 'Таганская', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('179', 'ЦАО', 'Таганский', 'Таганская', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('180', 'ЦАО', 'Тверской', 'Тверская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('181', 'ЦАО', 'Тверской', 'Театральная', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('182', 'ЦАО', 'Тверской', 'Маяковская', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('183', 'ЦАО', 'Тверской', 'Театральная', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('184', 'ЦАО', 'Тверской', 'Театральная', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('185', 'ЦАО', 'Тверской', 'Охотный ряд', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('186', 'ЦАО', 'Тверской', 'Охотный ряд', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('187', 'ЦАО', 'Тверской', 'Охотный ряд', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('188', 'ЦАО', 'Пресненский', 'Арбатская', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('189', 'ЦАО', 'Пресненский', 'Арбатская', '11', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('190', 'ЦАО', 'Арбат', 'Арбатская', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('191', 'ЦАО', 'Арбат', 'Смоленская', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('192', 'ЦАО', 'Арбат', 'Смоленская', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('193', 'ЦАО', 'Арбат', 'Арбатская', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('194', 'ЦАО', 'Хамовники', 'Парк Культуры', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('195', 'ЦАО', 'Хамовники', 'Парк Культуры', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('196', 'ЦАО', 'Якиманка', 'Полянка', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('197', 'ЦАО', 'Якиманка', 'Полянка', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('198', 'ЦАО', 'Замоскворечье', 'Павелецкая', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('199', 'ЦАО', 'Мещанский', 'Сухаревская', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('200', 'ЦАО', 'Басманный', 'Тургеневская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('201', 'ЦАО', 'Мещанский', 'Кузнецкий мост', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('202', 'ЦАО', 'Мещанский', 'Кузнецкий мост', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('203', 'ЦАО', 'Красносельский', 'Тургеневская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('204', 'ЦАО', 'Красносельский', 'Лубянка', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('205', 'ЦАО', 'Басманный', 'Китай-город', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('206', 'ЦАО', 'Басманный', 'Тургеневская', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('207', 'ЦАО', 'Басманный', 'Китай-город', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('208', 'ЦАО', 'Красносельский', 'Сухаревская', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('209', 'ЦАО', 'Красносельский', 'Красные ворота', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('210', 'ЦАО', 'Красносельский', 'Красные ворота', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('211', 'ЦАО', 'Красносельский', 'Сухаревская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('212', 'ЦАО', 'Красносельский', 'Сухаревская', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('213', 'ЦАО', 'Басманный', 'Красные ворота', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('214', 'ЦАО', 'Басманный', 'Красные ворота', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('215', 'ЦАО', 'Басманный', 'Красные ворота', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('216', 'ЦАО', 'Басманный', 'Красные ворота', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('217', 'ЦАО', 'Басманный', 'Красные ворота', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('218', 'ЦАО', 'Басманный', 'Чистые пруды', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('219', 'ЦАО', 'Басманный', 'Чистые пруды', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('220', 'ЦАО', 'Басманный', 'Чистые пруды', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('221', 'ЦАО', 'Басманный', 'Чистые пруды', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('222', 'ЦАО', 'Басманный', 'Чистые пруды', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('223', 'ЦАО', 'Басманный', 'Чистые пруды', '9', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('224', 'ЦАО', 'Басманный', 'Китай-город', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('225', 'ЦАО', 'Басманный', 'Чистые пруды', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('226', 'ЦАО', 'Басманный', 'Чистые пруды', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('227', 'ЦАО', 'Басманный', 'Курская', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('228', 'ЦАО', 'Басманный', 'Курская', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('229', 'ЦАО', 'Басманный', 'Красные ворота', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('230', 'ЦАО', 'Басманный', 'Красные ворота', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('231', 'ЦАО', 'Басманный', 'Курская', '9', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('232', 'ЦАО', 'Басманный', 'Курская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('233', 'ЦАО', 'Басманный', 'Курская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('234', 'ЦАО', 'Басманный', 'Курская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('235', 'ЦАО', 'Басманный', 'Курская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('236', 'ЦАО', 'Басманный', 'Курская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('237', 'ЦАО', 'Басманный', 'Чистые пруды', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('238', 'ЦАО', 'Басманный', 'Чистые пруды', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('239', 'ЦАО', 'Басманный', 'Китай-город', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('240', 'ЦАО', 'Таганский', 'Китай-город', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('241', 'ЦАО', 'Таганский', 'Китай-город', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('242', 'ЦАО', 'Басманный', 'Китай-город', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('243', 'ЦАО', 'Басманный', 'Китай-город', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('244', 'ЦАО', 'Басманный', 'Китай-город', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('245', 'ЦАО', 'Басманный', 'Китай-город', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('246', 'ЦАО', 'Басманный', 'Китай-город', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('247', 'ЦАО', 'Басманный', 'Китай-город', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('248', 'ЦАО', 'Таганский', 'Китай-город', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('249', 'ЦАО', 'Басманный', 'Китай-город', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('250', 'ЦАО', 'Басманный', 'Китай-город', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('251', 'ЦАО', 'Таганский', 'Китай-город', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('252', 'ЦАО', 'Таганский', 'Китай-город', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('253', 'ЦАО', 'Басманный', 'Китай-город', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('254', 'ЦАО', 'Басманный', 'Китай-город', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('255', 'ЦАО', 'Басманный', 'Китай-город', '6', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('256', 'ЦАО', 'Таганский', 'Китай-город', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('257', 'ЦАО', 'Таганский', 'Китай-город', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('258', 'ЦАО', 'Басманный', 'Курская', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('259', 'ЦАО', 'Басманный', 'Китай-город', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('260', 'ЦАО', 'Басманный', 'Чистые пруды', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('261', 'ЦАО', 'Басманный', 'Чистые пруды', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('262', 'ЦАО', 'Басманный', 'Чистые пруды', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('263', 'ЦАО', 'Басманный', 'Чистые пруды', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('264', 'ЦАО', 'Басманный', 'Курская', '12', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('265', 'ЦАО', 'Таганский', 'Чкаловская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('266', 'ЦАО', 'Таганский', 'Чкаловская', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('267', 'ЦАО', 'Таганский', 'Чкаловская', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('268', 'ЦАО', 'Таганский', 'Чкаловская', '9', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('269', 'ЦАО', 'Таганский', 'Чкаловская', '9', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('270', 'ЦАО', 'Таганский', 'Чкаловская', '9', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('271', 'ЦАО', 'Таганский', 'Чкаловская', '9', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('272', 'ЦАО', 'Таганский', 'Чкаловская', '15', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('273', 'ЦАО', 'Таганский', 'Чкаловская', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('274', 'ЦАО', 'Таганский', 'Таганская', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('275', 'ЦАО', 'Таганский', 'Таганская', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('276', 'ЦАО', 'Таганский', 'Таганская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('277', 'ЦАО', 'Таганский', 'Таганская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('278', 'ЦАО', 'Таганский', 'Таганская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('279', 'ЦАО', 'Таганский', 'Таганская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('280', 'ЦАО', 'Таганский', 'Таганская', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('281', 'ЦАО', 'Таганский', 'Таганская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('282', 'ЦАО', 'Таганский', 'Таганская', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('283', 'ЦАО', 'Таганский', 'Таганская', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('284', 'ЦАО', 'Таганский', 'Таганская', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('285', 'ЦАО', 'Таганский', 'Таганская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('286', 'ЦАО', 'Таганский', 'Таганская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('287', 'ЦАО', 'Замоскворечье', 'Павелецкая', '14', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('288', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('289', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('290', 'ЦАО', 'Замоскворечье', 'Павелецкая', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('291', 'ЦАО', 'Замоскворечье', 'Павелецкая', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('292', 'ЦАО', 'Замоскворечье', 'Павелецкая', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('293', 'ЦАО', 'Замоскворечье', 'Павелецкая', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('294', 'ЦАО', 'Замоскворечье', 'Павелецкая', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('295', 'ЦАО', 'Замоскворечье', 'Павелецкая', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('296', 'ЦАО', 'Замоскворечье', 'Павелецкая', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('297', 'ЦАО', 'Замоскворечье', 'Павелецкая', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('298', 'ЦАО', 'Замоскворечье', 'Павелецкая', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('299', 'ЦАО', 'Замоскворечье', 'Павелецкая', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('300', 'ЦАО', 'Замоскворечье', 'Третьяковская', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('301', 'ЦАО', 'Замоскворечье', 'Третьяковская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('302', 'ЦАО', 'Замоскворечье', 'Третьяковская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('303', 'ЦАО', 'Замоскворечье', 'Третьяковская', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('304', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('305', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '2', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('306', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('307', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('308', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('309', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('310', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('311', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('312', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('313', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('314', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '4', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('315', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('316', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '1', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('317', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('318', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('319', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '3', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('320', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('321', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('322', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('323', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('324', 'ЦАО', 'Замоскворечье', 'Новокузнецкая', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('325', 'ЦАО', 'Якиманка', 'Полянка', '16', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('326', 'ЦАО', 'Якиманка', 'Полянка', '16', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('327', 'ЦАО', 'Якиманка', 'Полянка', '16', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('328', 'ЦАО', 'Якиманка', 'Полянка', '16', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('329', 'ЦАО', 'Якиманка', 'Полянка', '16', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('330', 'ЦАО', 'Якиманка', 'Полянка', '16', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('331', 'ЦАО', 'Якиманка', 'Полянка', '16', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('332', 'ЦАО', 'Якиманка', 'Полянка', '16', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('333', 'ЦАО', 'Якиманка', 'Полянка', '16', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('334', 'ЦАО', 'Якиманка', 'Полянка', '16', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('335', 'ЦАО', 'Якиманка', 'Полянка', '16', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('336', 'ЦАО', 'Якиманка', 'Полянка', '10', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('337', 'ЦАО', 'Якиманка', 'Полянка', '8', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('338', 'ЦАО', 'Якиманка', 'Полянка', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('339', 'ЦАО', 'Якиманка', 'Полянка', '7', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('340', 'ЦАО', 'Якиманка', 'Полянка', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('341', 'ЦАО', 'Якиманка', 'Полянка', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('342', 'ЦАО', 'Якиманка', 'Полянка', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('343', 'ЦАО', 'Якиманка', 'Полянка', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('344', 'ЦАО', 'Якиманка', 'Полянка', '5', 'Внутри СК');
INSERT INTO Place(ID_Place, Okrug, Area, Metro, Time_to_metro, Territory) VALUES ('345', 'ЦАО', 'Якиманка', 'Полянка', '5', 'Внутри СК');


-- Третия часть таблицы, посвещенная физическим характеристикам объектов недвижимости.

		DROP TABLE IF EXISTS Fisic_charact;
		CREATE TABLE Fisic_charact (
			ID_Fisic_charact SERIAL PRIMARY KEY,
			Square FLOAT UNSIGNED NOT NULL,
			Decor ENUM('среднее', 'улучшенное', 'требует частичного ремонта', 'требует капитального ремонта', 'чистовая отделка', 'черновая отделка'),
			Red_line ENUM('по красной линии улицы', 'внутри квартала (двора)'),
			Separate_entrance ENUM('есть', 'отсутствует', 'общий', 'два входа'),
			Type_obj ENUM('встроенное помещение', 'ОСЗ'),
			Floor ENUM('подвал', 'цоколь', '1', '2', '3 и выше', '1, антресоль', 'ОСЗ', '1, подвал', '1-2', '1, 2, подвал', '1, антресоль, подвал', '1, цоколь', '2, 3 и выше'),
			Type_build ENUM('жилое', 'нежилое', 'БЦ', 'ТЦ', 'БЦ, ТЦ', 'Клубный дом', 'пристройка к дому'),
			Outside_condition ENUM('новое', 'среднее', 'требует ремонта', 'требует капитального ремонта'),
			Vitrina ENUM('есть', 'нет', 'объявление - есть, в натуре -нет', 'окон нет'),
			INDEX ind_Square(Square),
			INDEX ind_Decor(Decor),
			INDEX ind_Red_line(Red_line),
			INDEX ind_Separate_entrance(Separate_entrance),
			INDEX ind_Type_obj(Type_obj),
			INDEX ind_Floor(Floor),
			INDEX ind_Type_build(Type_build),
			INDEX ind_Vitrina(Vitrina),
			FOREIGN KEY (ID_Fisic_charact) REFERENCES First_data(ID)
			ON UPDATE CASCADE
			ON DELETE RESTRICT
		);


-- Внесение информации в данную таблицу


INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('1', '8', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('2', '1046.6', 'подвал', 'улучшенное', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('3', '34.7', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('4', '150', '1', 'улучшенное', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('5', '77', '1', 'улучшенное', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('6', '90', '1', 'улучшенное', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('7', '43.6', '1', 'улучшенное', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'объявление - есть, в натуре -нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('8', '84', 'цоколь', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('9', '30', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'жилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('10', '225.4', '2', 'среднее', 'по красной линии улицы', 'отсутствует', 'встроенное помещение', 'БЦ, ТЦ', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('11', '9', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('12', '57', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('13', '225', 'цоколь', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('14', '99', '1', 'улучшенное', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'жилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('15', '106', '1', 'черновая отделка', 'по красной линии улицы', 'общий', 'встроенное помещение', 'жилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('16', '29.4', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('17', '819', 'подвал', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('18', '42', 'подвал', 'среднее', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('19', '35', '2', 'улучшенное', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('20', '36', 'подвал', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'жилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('21', '55.4', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'жилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('22', '274', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('23', '50', '1', 'среднее', 'по красной линии улицы', 'отсутствует', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('24', '55.8', '1', 'среднее', 'по красной линии улицы', 'отсутствует', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('25', '105.8', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('26', '560', '2', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'БЦ, ТЦ', 'новое', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('27', '230', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'БЦ, ТЦ', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('28', '18', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('29', '50.9', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('30', '27.4', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('31', '120', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('32', '212.2', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('33', '91.6', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('34', '150', 'подвал', 'среднее', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('35', '23.4', 'цоколь', 'среднее', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('36', '39.8', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('37', '166', 'подвал', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('38', '148', '1', 'черновая отделка', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('39', '72', '1', 'черновая отделка', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('40', '200.5', '1', 'черновая отделка', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('41', '71', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('42', '100', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('43', '313', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'БЦ', 'среднее', 'окон нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('44', '28.3', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('45', '108', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('46', '151.5', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'клубный дом', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('47', '215.1', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('48', '100', '1', 'улучшенное', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'окон нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('49', '97.3', '1, антресоль', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('50', '118.3', 'цоколь', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'БЦ, ТЦ', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('51', '277.6', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'БЦ, ТЦ', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('52', '341.7', '2', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'БЦ, ТЦ', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('53', '16.2', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('54', '61.8', '1', 'улучшенное', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('55', '86.5', '1', 'улучшенное', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('56', '588.6', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('57', '91.3', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'клубный дом', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('58', '446.6', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'клубный дом', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('59', '116.2', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('60', '6', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('61', '180.9', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('62', '53', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'жилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('63', '90', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'объявление - есть, в натуре -нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('64', '78', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('65', '49.2', '1', 'черновая отделка', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'клубный дом', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('66', '150', '1', 'черновая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('67', '530', 'подвал', 'черновая отделка', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'клубный дом', 'новое', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('68', '491', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'клубный дом', 'новое', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('69', '237', '2', 'улучшенное', 'по красной линии улицы', 'общий', 'встроенное помещение', 'клубный дом', 'новое', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('70', '129', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('71', '93.2', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('72', '137.2', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('73', '39.5', '1', 'требует частичного ремонта', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('74', '722.8', '1', 'чистовая отделка', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('75', '72.8', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('76', '66', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'объявление - есть, в натуре -нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('77', '31.05', '1', 'черновая отделка', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'клубный дом', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('78', '223', '1', 'черновая отделка', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'клубный дом', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('79', '36.7', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'пристройка к дому', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('80', '104.2', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('81', '44', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'пристройка к дому', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('82', '43', '1', 'черновая отделка', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'жилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('83', '158', '1', 'улучшенное', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('84', '44', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('85', '50', '2', 'улучшенное', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'ТЦ', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('86', '230', '2', 'улучшенное', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'ТЦ', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('87', '300', '2', 'улучшенное', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'ТЦ', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('88', '75', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'жилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('89', '110', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('90', '320', '1', 'улучшенное', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('91', '361.5', '1', 'чистовая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('92', '226.7', '1', 'чистовая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('93', '156.4', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'пристройка к дому', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('94', '200', 'ОСЗ', 'среднее', 'по красной линии улицы', 'есть', 'ОСЗ', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('95', '144.9', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('96', '60.2', 'цоколь', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('97', '82', '1', 'черновая отделка', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'клубный дом', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('98', '14', 'цоколь', 'требует частичного ремонта', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('99', '92.3', '1', 'улучшенное', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'жилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('100', '102', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('101', '64', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('102', '59.6', '1', 'черновая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'клубный дом', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('103', '50', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'БЦ, ТЦ', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('104', '1400', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'БЦ, ТЦ', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('105', '358', 'подвал', 'требует частичного ремонта', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('106', '95', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'пристройка к дому', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('107', '71', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'жилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('108', '70', 'цоколь', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'клубный дом', 'новое', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('109', '73.2', '1', 'черновая отделка', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'клубный дом', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('110', '72.8', '1', 'черновая отделка', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'клубный дом', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('111', '104', '1', 'черновая отделка', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'клубный дом', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('112', '82.1', '1', 'черновая отделка', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'клубный дом', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('113', '37.6', '1', 'чистовая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'пристройка к дому', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('114', '29.4', '1', 'чистовая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'пристройка к дому', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('115', '35', '1', 'чистовая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'пристройка к дому', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('116', '34.5', '1', 'чистовая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'пристройка к дому', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('117', '32.7', '1', 'чистовая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'пристройка к дому', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('118', '140.8', '1', 'чистовая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'пристройка к дому', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('119', '7', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('120', '48.2', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('121', '110.6', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('122', '82', '1', 'чистовая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'жилое', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('123', '48', '1', 'чистовая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('124', '110', 'цоколь', 'среднее', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('125', '116.2', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('126', '170', '1', 'среднее', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('127', '95', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('128', '24.7', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('129', '155', '1', 'черновая отделка', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('130', '150', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('131', '50.9', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'объявление - есть, в натуре -нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('132', '364', 'цоколь', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('133', '93.7', '1', 'улучшенное', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('134', '91.6', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'объявление - есть, в натуре -нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('135', '460', 'ОСЗ', 'черновая отделка', 'по красной линии улицы', 'два входа', 'ОСЗ', 'жилое', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('136', '250', 'цоколь', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'объявление - есть, в натуре -нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('137', '80', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('138', '172', 'цоколь', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('139', '35.4', '1', 'чистовая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('140', '173.9', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'новое', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('141', '366.5', '1', 'среднее', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'БЦ', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('142', '264', '1', 'требует частичного ремонта', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('143', '192.7', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('144', '67.6', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'жилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('145', '18', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('146', '148.1', '1', 'среднее', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('147', '150', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('148', '3', '1', 'среднее', 'по красной линии улицы', 'отсутствует', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('149', '15.7', '1', 'среднее', 'по красной линии улицы', 'отсутствует', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('150', '60', '1', 'среднее', 'по красной линии улицы', 'отсутствует', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('151', '5', '1', 'среднее', 'по красной линии улицы', 'отсутствует', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('152', '40', '1', 'среднее', 'по красной линии улицы', 'отсутствует', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('153', '30', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('154', '39', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('155', '43', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('156', '113.8', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('157', '140', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('158', '142', 'цоколь', 'улучшенное', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('159', '145', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'ТЦ', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('160', '85', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('161', '124.3', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('162', '146', '1', 'улучшенное', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('163', '127', 'подвал', 'черновая отделка', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('164', '108', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('165', '23', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('166', '750', '1, подвал', 'черновая отделка', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('167', '598.1', '1-2', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('168', '30', '2', 'среднее', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('169', '90', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'БЦ', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('170', '187', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'БЦ', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('171', '330', '1, подвал', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('172', '97', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('173', '62', '1', 'улучшенное', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('174', '60', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('175', '123', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('176', '78.9', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('177', '100', 'цоколь', 'среднее', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'жилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('178', '320', '2', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('179', '19', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('180', '800', 'ОСЗ', 'улучшенное', 'по красной линии улицы', 'два входа', 'ОСЗ', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('181', '472', '1, антресоль, подвал', 'улучшенное', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('182', '3104', '1, 2, подвал', 'чистовая отделка', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('183', '351', '1, подвал', 'улучшенное', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('184', '258', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('185', '327', '1, 2, подвал', 'улучшенное', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('186', '534', '1, антресоль, подвал', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('187', '320', '1-2', 'улучшенное', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('188', '400', 'подвал', 'черновая отделка', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('189', '457', '1-2', 'среднее', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'жилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('190', '300', '1, подвал', 'требует частичного ремонта', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('191', '626', '1, 2, подвал', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('192', '293', '2', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('193', '475.7', '1, подвал', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('194', '700', '1, подвал', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('195', '541', '1-2', 'черновая отделка', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('196', '661', '1, цоколь', 'черновая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'клубный дом', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('197', '486', '1, подвал', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('198', '403', '1, подвал', 'среднее', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('199', '531.7', '3 и выше', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'БЦ, ТЦ', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('200', '290', '1, антресоль, подвал', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('201', '431.5', '1, подвал', 'улучшенное', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('202', '735', '1, 2, подвал', 'улучшенное', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('203', '550', '1, подвал', 'черновая отделка', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('204', '300.6', '1-2', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('205', '352', '1, антресоль', 'улучшенное', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('206', '350', '1, 2, подвал', 'требует частичного ремонта', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('207', '624.7', '2, 3 и выше', 'среднее', 'по красной линии улицы', 'отсутствует', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('208', '380', '3 и выше', 'среднее', 'по красной линии улицы', 'отсутствует', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('209', '422', '1, 2, подвал', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('210', '229', '1, 2, подвал', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('211', '100', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('212', '395.8', 'подвал', 'требует частичного ремонта', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('213', '101', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('214', '209.3', '1, подвал', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('215', '100', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('216', '20', 'цоколь', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('217', '76', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('218', '67.9', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('219', '75', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('220', '80', 'цоколь', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('221', '164', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('222', '72', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('223', '239', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'жилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('224', '200', 'подвал', 'требует частичного ремонта', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'жилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('225', '365', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('226', '273.8', 'цоколь', 'среднее', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('227', '145', '1, подвал', 'среднее', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('228', '201', '1, подвал', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('229', '1362.8', '1-2', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('230', '240', '1, подвал', 'улучшенное', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('231', '200', '1, подвал', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('232', '126.5', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('233', '200', 'подвал', 'требует частичного ремонта', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('234', '442.3', '1-2', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('235', '90', 'цоколь', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('236', '70.1', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'БЦ', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('237', '400', 'ОСЗ', 'требует частичного ремонта', 'внутри квартала (двора)', 'два входа', 'ОСЗ', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('238', '451', '1, подвал', 'среднее', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('239', '198', 'подвал', 'среднее', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('240', '34.7', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('241', '235.1', '1, подвал', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('242', '50', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('243', '222', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('244', '162.7', '1, подвал', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('245', '250', '1, подвал', 'улучшенное', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('246', '163', '1, подвал', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('247', '100', 'цоколь', 'среднее', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('248', '113', '2', 'чистовая отделка', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('249', '390', '1, антресоль, подвал', 'улучшенное', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('250', '499', '1-2', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('251', '1117.3', 'ОСЗ', 'требует частичного ремонта', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('252', '600', '2, 3 и выше', 'требует частичного ремонта', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('253', '95', '1', 'среднее', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('254', '405', '1, антресоль', 'улучшенное', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('255', '154', '1', 'черновая отделка', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('256', '250', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('257', '250', 'подвал', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('258', '185.1', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('259', '60', '1', 'улучшенное', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('260', '60', '1', 'черновая отделка', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'клубный дом', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('261', '100', '1', 'черновая отделка', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'клубный дом', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('262', '248', '1', 'черновая отделка', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'клубный дом', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('263', '75', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'клубный дом', 'новое', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('264', '80', '1', 'среднее', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('265', '253', '1, подвал', 'требует частичного ремонта', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('266', '110', 'цоколь', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('267', '240', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('268', '240', 'подвал', 'черновая отделка', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'БЦ', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('269', '43', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'БЦ', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('270', '135', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'БЦ', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('271', '125', 'цоколь', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'БЦ', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('272', '328', 'цоколь', 'требует частичного ремонта', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('273', '660', 'ОСЗ', 'среднее', 'внутри квартала (двора)', 'два входа', 'ОСЗ', 'нежилое', 'среднее', 'объявление - есть, в натуре -нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('274', '142', '1', 'черновая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('275', '410', 'ОСЗ', 'среднее', 'внутри квартала (двора)', 'есть', 'ОСЗ', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('276', '156.1', '1', 'черновая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'клубный дом', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('277', '232.4', '1', 'черновая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'клубный дом', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('278', '137.9', '1', 'черновая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'клубный дом', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('279', '192', '1', 'улучшенное', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('280', '275', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('281', '100', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('282', '200', '2', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('283', '350', '2', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('284', '1179.3', 'ОСЗ', 'среднее', 'по красной линии улицы', 'два входа', 'ОСЗ', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('285', '120', 'подвал', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('286', '165', 'подвал', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('287', '303.2', '1', 'черновая отделка', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'клубный дом', 'новое', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('288', '155', 'ОСЗ', 'среднее', 'внутри квартала (двора)', 'есть', 'ОСЗ', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('289', '1791', '1, подвал', 'среднее', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('290', '146', '1', 'среднее', 'внутри квартала (двора)', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('291', '29', '1', 'черновая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('292', '33', '1', 'черновая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('293', '35', '1', 'черновая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('294', '60', '1', 'черновая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('295', '73.4', '1', 'среднее', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('296', '70', 'подвал', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('297', '85', '1', 'чистовая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('298', '173.5', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('299', '36.8', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('300', '890', 'ОСЗ', 'среднее', 'по красной линии улицы', 'два входа', 'ОСЗ', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('301', '88.5', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('302', '216.6', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('303', '361.5', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('304', '60', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'объявление - есть, в натуре -нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('305', '2250', 'подвал', 'требует частичного ремонта', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('306', '7', '2', 'среднее', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('307', '18', '2', 'среднее', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('308', '71', 'подвал', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('309', '162', '3 и выше', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('310', '17.5', '3 и выше', 'среднее', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('311', '959.5', 'ОСЗ', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('312', '8', '1', 'среднее', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'БЦ, ТЦ', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('313', '973', '3 и выше', 'среднее', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'БЦ, ТЦ', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('314', '1340', '2', 'среднее', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'БЦ, ТЦ', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('315', '60', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('316', '18', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('317', '76', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('318', '18', 'подвал', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('319', '68', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'объявление - есть, в натуре -нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('320', '21', 'подвал', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('321', '180', '1', 'черновая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'клубный дом', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('322', '195.7', '1, цоколь', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('323', '99', '1', 'черновая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'клубный дом', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('324', '252', '1', 'черновая отделка', 'по красной линии улицы', 'есть', 'встроенное помещение', 'клубный дом', 'новое', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('325', '754', 'цоколь', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('326', '785', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('327', '171', 'подвал', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('328', '54', '1', 'среднее', 'по красной линии улицы', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('329', '164', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('330', '1049', 'подвал', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('331', '710', '1', 'среднее', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('332', '2266', '2, 3 и выше', 'улучшенное', 'внутри квартала (двора)', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('333', '181', '2, 3 и выше', 'среднее', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('334', '148', '2, 3 и выше', 'среднее', 'внутри квартала (двора)', 'общий', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('335', '321.7', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('336', '1023', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('337', '598', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'объявление - есть, в натуре -нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('338', '85', '1', 'среднее', 'по красной линии улицы', 'два входа', 'встроенное помещение', 'нежилое', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('339', '390', '2', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'нежилое', 'среднее', 'нет');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('340', '48', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'ТЦ', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('341', '237', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'ТЦ', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('342', '334', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'ТЦ', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('343', '70', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'ТЦ', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('344', '236', '2', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'ТЦ', 'среднее', 'есть');
INSERT INTO Fisic_charact(ID_Fisic_charact, Square, Floor, Decor, Red_line, Separate_entrance, Type_obj, Type_build, Outside_condition, Vitrina) VALUES ('345', '170', '1', 'среднее', 'по красной линии улицы', 'есть', 'встроенное помещение', 'ТЦ', 'среднее', 'есть');


-- Четвертая таблица, посвещенная объектам недвижимости. Но пока она содержит мало информации для анализа. Это связно с некоторыми особенностями.
-- Но тем не менее в будущем она пригодится.


		DROP TABLE IF EXISTS OPEX;
		CREATE TABLE OPEX (
			ID_OPEX SERIAL PRIMARY KEY,
			Information ENUM('есть', 'нет'),
			Aksplatacia ENUM('вкл.', 'не вкл.', 'н/д'),
			Kommunalka ENUM('вкл.', 'не вкл.', 'н/д'),
			Notes VARCHAR(100),
			Size_OPEX VARCHAR(100) NULL,
			INDEX ind_Information(Information),
			FOREIGN KEY (ID_OPEX) REFERENCES First_data(ID)
			ON UPDATE CASCADE
			ON DELETE RESTRICT
		);


-- Внесение информации в данную таблицу


INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('1', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('2', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('3', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('4', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('5', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('6', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('7', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('8', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('9', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('10', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('11', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('12', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('13', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('14', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('15', 'есть', 'н/д', 'вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('16', 'есть', 'вкл.', 'вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('17', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('18', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('19', 'есть', 'н/д', 'вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('20', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('21', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('22', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('23', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('24', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('25', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('26', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('27', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('28', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('29', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('30', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('31', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('32', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('33', 'есть', 'вкл.', 'не вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('34', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('35', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('36', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('37', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('38', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('39', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('40', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('41', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('42', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('43', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('44', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('45', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('46', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('47', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('48', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('49', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('50', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('51', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('52', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('53', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('54', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('55', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('56', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('57', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('58', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('59', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('60', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('61', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('62', 'есть', 'вкл.', 'вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('63', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('64', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('65', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('66', 'есть', 'вкл.', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('67', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('68', 'есть', 'не вкл.', 'вкл.', 'КП включены кроме связи', 'ЭР = 60000 руб./месяц');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('69', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('70', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('71', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('72', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('73', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('74', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('75', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('76', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('77', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('78', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('79', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('80', 'есть', 'вкл.', 'вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('81', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('82', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('83', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('84', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('85', 'есть', 'вкл.', 'н/д', 'ЭР вкл. Кроме уборки на территории площади, связь напрямую с операторами', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('86', 'есть', 'вкл.', 'н/д', 'ЭР вкл. Кроме уборки на территории площади, связь напрямую с операторами', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('87', 'есть', 'вкл.', 'н/д', 'ЭР вкл. Кроме уборки на территории площади, связь напрямую с операторами', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('88', 'есть', 'н/д', 'вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('89', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('90', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('91', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('92', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('93', 'есть', 'вкл.', 'вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('94', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('95', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('96', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('97', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('98', 'есть', 'вкл.', 'вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('99', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('100', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('101', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('102', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('103', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('104', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('105', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('106', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('107', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('108', 'есть', 'вкл.', 'не вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('109', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('110', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('111', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('112', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('113', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('114', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('115', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('116', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('117', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('118', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('119', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('120', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('121', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('122', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('123', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('124', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('125', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('126', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('127', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('128', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('129', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('130', 'есть', 'вкл.', 'не вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('131', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('132', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('133', 'есть', 'не вкл.', 'не вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('134', 'есть', 'вкл.', 'не вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('135', 'есть', 'вкл.', 'не вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('136', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('137', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('138', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('139', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('140', 'есть', 'вкл.', 'не вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('141', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('142', 'есть', 'не вкл.', 'не вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('143', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('144', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('145', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('146', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('147', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('148', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('149', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('150', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('151', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('152', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('153', 'есть', 'вкл.', 'вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('154', 'есть', 'вкл.', 'вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('155', 'есть', 'вкл.', 'вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('156', 'есть', 'вкл.', 'не вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('157', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('158', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('159', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('160', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('161', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('162', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('163', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('164', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('165', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('166', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('167', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('168', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('169', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('170', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('171', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('172', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('173', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('174', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('175', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('176', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('177', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('178', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('179', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('180', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('181', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('182', 'есть', 'не вкл.', 'не вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('183', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('184', 'есть', 'вкл.', 'не вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('185', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('186', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('187', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('188', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('189', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('190', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('191', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('192', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('193', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('194', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('195', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('196', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('197', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('198', 'есть', 'вкл.', 'не вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('199', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('200', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('201', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('202', 'есть', 'вкл.', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('203', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('204', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('205', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('206', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('207', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('208', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('209', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('210', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('211', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('212', 'есть', 'н/д', 'вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('213', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('214', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('215', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('216', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('217', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('218', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('219', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('220', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('221', 'есть', 'вкл.', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('222', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('223', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('224', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('225', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('226', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('227', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('228', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('229', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('230', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('231', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('232', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('233', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('234', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('235', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('236', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('237', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('238', 'есть', 'н/д', 'не вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('239', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('240', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('241', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('242', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('243', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('244', 'есть', 'вкл.', 'вкл.', ' н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('245', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('246', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('247', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('248', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('249', 'есть', 'вкл.', 'не вкл.', ' н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('250', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('251', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('252', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('253', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('254', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('255', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('256', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('257', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('258', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('259', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('260', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('261', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('262', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('263', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('264', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('265', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('266', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('267', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('268', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('269', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('270', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('271', 'есть', 'не вкл.', 'не вкл.', ' н/д', 'Коммунальные и эксплуатационные услуги оплачиваются отдельно 9240 руб/год.');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('272', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('273', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('274', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('275', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('276', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('277', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('278', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('279', 'есть', 'вкл.', 'не вкл.', ' н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('280', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('281', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('282', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('283', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('284', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('285', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('286', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('287', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('288', 'есть', 'вкл.', 'вкл.', ' н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('289', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('290', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('291', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('292', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('293', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('294', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('295', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('296', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('297', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('298', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('299', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('300', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('301', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('302', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('303', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('304', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('305', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('306', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('307', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('308', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('309', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('310', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('311', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('312', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('313', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('314', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('315', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('316', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('317', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('318', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('319', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('320', 'есть', 'н/д', 'вкл.', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('321', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('322', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('323', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('324', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('325', 'есть', 'вкл.', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('326', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('327', 'есть', 'вкл.', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('328', 'есть', 'вкл.', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('329', 'есть', 'вкл.', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('330', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('331', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('332', 'есть', 'вкл.', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('333', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('334', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('335', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('336', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('337', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('338', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('339', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('340', 'есть', 'вкл.', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('341', 'есть', 'вкл.', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('342', 'есть', 'вкл.', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('343', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('344', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');
INSERT INTO OPEX(ID_OPEX, Information, Aksplatacia, Kommunalka, Notes, Size_OPEX) VALUES ('345', 'нет', 'н/д', 'н/д', 'н/д', ' н/д');


-- В этой таблице перечень услуг (упрощенный) компании и цены за них.


		DROP TABLE IF EXISTS Services;
		CREATE TABLE Services (
			ID_Service SERIAL PRIMARY KEY,
			name_service VARCHAR(100) NOT NULL,
			price_service INT UNSIGNED NOT NULL,
			INDEX ind_ID_Service(ID_Service),
			INDEX ind_name_service(name_service)
		);


-- Внесение информации в данную таблицу


INSERT INTO Services (ID_Service, name_service, price_service) VALUES ('1', 'Оценка стоимости недвижимости для целей бухгалтерского учета', '20000');
INSERT INTO Services (ID_Service, name_service, price_service) VALUES ('2', 'Оценка для целей оспаривания кадастровой стоимости', '90000');
INSERT INTO Services (ID_Service, name_service, price_service) VALUES ('3', 'Оценка для принятия решения по сделке', '15000');
INSERT INTO Services (ID_Service, name_service, price_service) VALUES ('4', 'Оценка для суда', '75000');
INSERT INTO Services (ID_Service, name_service, price_service) VALUES ('5', 'Оценка для банка', '60000');
INSERT INTO Services (ID_Service, name_service, price_service) VALUES ('6', 'Ценовое консультирование', '10000');
INSERT INTO Services (ID_Service, name_service, price_service) VALUES ('7', 'Проведение исследования', '20000');
INSERT INTO Services (ID_Service, name_service, price_service) VALUES ('8', 'Риелторские услуги', '15000');


-- Таблица посвещенна входящим и исходящим звонкам. В результате исходящих звонков, мы получаем информацию о полезности контакта.
-- А в результате входящих, мы получает тот или иной заказ.


		DROP TABLE IF EXISTS Calls;
		CREATE TABLE Calls (
			ID_call SERIAL PRIMARY KEY,
			ID_ag BIGINT UNSIGNED NOT NULL,
			Type_call ENUM('входящий', 'исходящий'),
			Description_call VARCHAR(100) NOT NULL,
			Time_call DATETIME DEFAULT NOW(),
			ID_Service BIGINT UNSIGNED NULL, -- Вид услуги, о которой договорились, в результате успешного разговора
			INDEX ind_ID_call(ID_call),
            INDEX ind_ID_ag(ID_ag),
			INDEX ind_Type_call(Type_call),
            INDEX ind_Description_call(Description_call),
            INDEX ind_Time_call(Time_call),
            INDEX ind_ID_Service(ID_Service),
			FOREIGN KEY (ID_ag) REFERENCES Agent(ID_ag),
			FOREIGN KEY (ID_Service) REFERENCES Services(ID_Service)
			ON UPDATE SET NULL
			ON DELETE SET NULL            
		);


-- Внесение информации в данную таблицу


INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('1', '2', 'исходящий', 'Мы предложили сотрудничество', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('2', '3', 'исходящий', 'Мы предложили сотрудничество', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('3', '4', 'исходящий', 'Мы предложили сотрудничество', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('4', '5', 'исходящий', 'Мы предложили сотрудничество', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('5', '6', 'исходящий', 'Мы предложили сотрудничество', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('6', '7', 'исходящий', 'Нам отказали в сотрудничестве', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('7', '8', 'исходящий', '1. Обратится в случае надобности по оценке; 2. Он покупает / готов принимать предложения', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('8', '9', 'исходящий', 'Нам отказали в сотрудничестве', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('9', '10', 'исходящий', 'Мы предложили сотрудничество', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('10', '11', 'исходящий', 'Нам отказали в сотрудничестве', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('11', '12', 'исходящий', 'Мы предложили сотрудничество', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('12', '13', 'исходящий', 'Мы предложили сотрудничество', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('13', '14', 'исходящий', 'Мы предложили сотрудничество', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('14', '15', 'исходящий', 'Мы предложили сотрудничество', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('15', '16', 'исходящий', '1. Обратится в случае надобности по оценке; 2. Он покупает / готов принимать предложения', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('16', '17', 'исходящий', 'Нам отказали в сотрудничестве', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('17', '18', 'исходящий', '1. Обратится в случае надобности по оценке; 2. Он покупает / готов принимать предложения', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('18', '19', 'исходящий', 'Мы предложили сотрудничество', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('19', '20', 'исходящий', 'Мы предложили сотрудничество', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('20', '21', 'исходящий', '1. Обратится в случае надобности по оценке; 2. Он покупает / готов принимать предложения', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('21', '22', 'исходящий', 'Нам отказали в сотрудничестве', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('22', '23', 'исходящий', 'Мы предложили сотрудничество', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('23', '24', 'исходящий', 'Мы предложили сотрудничество', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('24', '25', 'исходящий', 'Мы предложили сотрудничество', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('25', '26', 'исходящий', '1. Обратится в случае надобности по оценке; 2. Он покупает / готов принимать предложения', '13.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('26', '27', 'исходящий', 'Мы предложили сотрудничество', '14.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('27', '28', 'исходящий', 'Нам отказали в сотрудничестве', '14.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('28', '29', 'исходящий', 'Нам отказали в сотрудничестве', '14.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('29', '30', 'исходящий', 'Мы предложили сотрудничество', '14.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('30', '31', 'исходящий', 'Мы предложили сотрудничество', '14.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('31', '32', 'исходящий', 'Нам отказали в сотрудничестве', '14.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('32', '33', 'исходящий', 'Мы предложили сотрудничество', '14.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('33', '34', 'исходящий', 'Мы предложили сотрудничество', '14.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('34', '35', 'исходящий', 'Мы предложили сотрудничество', '14.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('35', '36', 'исходящий', '1. Обратится в случае надобности по оценке; 2. Он покупает / готов принимать предложения', '15.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('36', '37', 'исходящий', 'Мы предложили сотрудничество', '15.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('37', '38', 'исходящий', 'Нам отказали в сотрудничестве', '15.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('38', '39', 'исходящий', '1. Обратится в случае надобности по оценке; 2. Он покупает / готов принимать предложения', '15.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('39', '40', 'исходящий', 'Мы предложили сотрудничество', '15.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('40', '41', 'исходящий', 'Мы предложили сотрудничество', '15.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('41', '42', 'исходящий', 'Мы предложили сотрудничество', '15.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('42', '43', 'исходящий', 'Мы предложили сотрудничество', '15.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('43', '44', 'исходящий', 'Нам отказали в сотрудничестве', '15.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('44', '45', 'исходящий', 'Мы предложили сотрудничество', '15.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('45', '46', 'исходящий', '1. Обратится в случае надобности по оценке; 2. Он покупает / готов принимать предложения', '15.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('46', '47', 'исходящий', 'Нам отказали в сотрудничестве', '15.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('47', '48', 'исходящий', 'Мы предложили сотрудничество', '15.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('48', '49', 'исходящий', '1. Обратится в случае надобности по оценке; 2. Он покупает / готов принимать предложения', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('49', '50', 'исходящий', 'Мы предложили сотрудничество', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('50', '32', 'входящий', 'Обратились за услугой', '16.04.2020', 6);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('51', '51', 'исходящий', 'Мы предложили сотрудничество', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('52', '52', 'исходящий', 'Мы предложили сотрудничество', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('53', '53', 'исходящий', 'Мы предложили сотрудничество', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('54', '8', 'входящий', 'Обратились за услугой', '16.04.2020', 3);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('55', '54', 'исходящий', 'Мы предложили сотрудничество', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('56', '55', 'исходящий', 'Мы предложили сотрудничество', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('57', '56', 'исходящий', 'Мы предложили сотрудничество', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('58', '52', 'входящий', 'Обратились за услугой', '16.04.2020', 2);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('59', '57', 'исходящий', 'Мы предложили сотрудничество', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('60', '58', 'исходящий', 'Он покупает / готов принимать предложения', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('61', '59', 'исходящий', 'Мы предложили сотрудничество', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('62', '32', 'входящий', 'Обратились за услугой', '16.04.2020', 2);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('63', '60', 'исходящий', 'Он покупает / готов принимать предложения', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('64', '61', 'исходящий', 'Он покупает / готов принимать предложения', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('65', '62', 'исходящий', 'Мы предложили сотрудничество', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('66', '63', 'исходящий', 'Мы предложили сотрудничество', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('67', '25', 'входящий', 'Обратились за услугой', '16.04.2020', 3);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('68', '64', 'исходящий', 'Мы предложили сотрудничество', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('69', '23', 'входящий', 'Обратились за услугой', '16.04.2020', 4);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('70', '65', 'исходящий', 'Мы предложили сотрудничество', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('71', '36', 'входящий', 'Обратились за услугой', '16.04.2020', 3);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('72', '66', 'исходящий', 'Он покупает / готов принимать предложения', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('73', '36', 'входящий', 'Обратились за услугой', '16.04.2020', 4);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('74', '67', 'исходящий', 'Он покупает / готов принимать предложения', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('75', '32', 'входящий', 'Обратились за услугой', '16.04.2020', 2);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('76', '68', 'исходящий', 'Он покупает / готов принимать предложения', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('77', '46', 'входящий', 'Обратились за услугой', '16.04.2020', 1);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('78', '69', 'исходящий', 'Мы предложили сотрудничество', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('79', '70', 'исходящий', 'Нам отказали в сотрудничестве', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('80', '71', 'исходящий', 'Он покупает / готов принимать предложения', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('81', '71', 'входящий', 'Обратились за услугой', '16.04.2020', 3);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('82', '72', 'исходящий', 'Мы предложили сотрудничество', '16.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('83', '49', 'входящий', 'Обратились за услугой', '16.04.2020', 3);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('84', '73', 'исходящий', 'Он покупает / готов принимать предложения', '17.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('85', '74', 'исходящий', 'Он покупает / готов принимать предложения', '17.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('86', '75', 'исходящий', 'Он покупает / готов принимать предложения', '17.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('87', '75', 'входящий', 'Обратились за услугой', '17.04.2020', 7);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('88', '76', 'исходящий', 'Мы предложили сотрудничество', '17.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('89', '77', 'исходящий', 'Нам отказали в сотрудничестве', '17.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('90', '51', 'входящий', 'Обратились за услугой', '17.04.2020', 8);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('91', '78', 'исходящий', 'Мы предложили сотрудничество', '17.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('92', '79', 'исходящий', 'Он покупает / готов принимать предложения', '17.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('93', '76', 'входящий', 'Обратились за услугой', '17.04.2020', 8);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('94', '80', 'исходящий', 'Он покупает / готов принимать предложения', '17.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('95', '53', 'входящий', 'Обратились за услугой', '17.04.2020', 7);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('96', '81', 'исходящий', 'Он покупает / готов принимать предложения', '17.04.2020', NULL);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('97', '36', 'входящий', 'Обратились за услугой', '17.04.2020', 3);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('98', '49', 'входящий', 'Обратились за услугой', '17.04.2020', 2);
INSERT INTO Calls (ID_call, ID_ag, Type_call, Description_call, Time_call, ID_Service) VALUES ('99', '32', 'входящий', 'Обратились за услугой', '17.04.2020', 3);


-- Таблица посвещенная конкретно заказам. Т.е. кто заказчик, что заказывают, сколько это стоит.

		DROP TABLE IF EXISTS Orders;
		CREATE TABLE Orders (
			ID_order SERIAL PRIMARY KEY,
			ID_ag BIGINT UNSIGNED NOT NULL,    -- От какого контрагента пришел заказ
			ID_Service BIGINT UNSIGNED NOT NULL,
			ID_real_estate BIGINT UNSIGNED NOT NULL,
			INDEX ind_ID_order(ID_order),
            INDEX ind_ID_ag(ID_ag),
			INDEX ind_ID_Service(ID_Service),
            INDEX ind_ID_real_estate(ID_real_estate),
			FOREIGN KEY (ID_ag) REFERENCES Agent(ID_ag),
			FOREIGN KEY (ID_Service) REFERENCES Services(ID_Service),
			FOREIGN KEY (ID_real_estate) REFERENCES First_data(ID)
			ON UPDATE CASCADE
			ON DELETE RESTRICT          
		);


-- Внесение информации в данную таблицу


INSERT INTO Orders (ID_order, ID_Service, ID_ag, ID_real_estate) VALUES ('1', '6', '32', '103');
INSERT INTO Orders (ID_order, ID_Service, ID_ag, ID_real_estate) VALUES ('2', '3', '8', '167');
INSERT INTO Orders (ID_order, ID_Service, ID_ag, ID_real_estate) VALUES ('3', '2', '52', '105');
INSERT INTO Orders (ID_order, ID_Service, ID_ag, ID_real_estate) VALUES ('4', '2', '32', '103');
INSERT INTO Orders (ID_order, ID_Service, ID_ag, ID_real_estate) VALUES ('5', '3', '25', '109');
INSERT INTO Orders (ID_order, ID_Service, ID_ag, ID_real_estate) VALUES ('6', '4', '23', '99');
INSERT INTO Orders (ID_order, ID_Service, ID_ag, ID_real_estate) VALUES ('7', '3', '36', '93');
INSERT INTO Orders (ID_order, ID_Service, ID_ag, ID_real_estate) VALUES ('8', '4', '36', '93');
INSERT INTO Orders (ID_order, ID_Service, ID_ag, ID_real_estate) VALUES ('9', '2', '32', '104');
INSERT INTO Orders (ID_order, ID_Service, ID_ag, ID_real_estate) VALUES ('10', '1', '46', '84');
INSERT INTO Orders (ID_order, ID_Service, ID_ag, ID_real_estate) VALUES ('11', '3', '71', '138');
INSERT INTO Orders (ID_order, ID_Service, ID_ag, ID_real_estate) VALUES ('12', '3', '49', '137');
INSERT INTO Orders (ID_order, ID_Service, ID_ag, ID_real_estate) VALUES ('13', '7', '75', '156');
INSERT INTO Orders (ID_order, ID_Service, ID_ag, ID_real_estate) VALUES ('14', '8', '51', '129');
INSERT INTO Orders (ID_order, ID_Service, ID_ag, ID_real_estate) VALUES ('15', '8', '76', '193');
INSERT INTO Orders (ID_order, ID_Service, ID_ag, ID_real_estate) VALUES ('16', '7', '53', '24');
INSERT INTO Orders (ID_order, ID_Service, ID_ag, ID_real_estate) VALUES ('17', '3', '36', '93');
INSERT INTO Orders (ID_order, ID_Service, ID_ag, ID_real_estate) VALUES ('18', '2', '49', '137');
INSERT INTO Orders (ID_order, ID_Service, ID_ag, ID_real_estate) VALUES ('19', '3', '32', '104');
