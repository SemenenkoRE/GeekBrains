		USE Base_of_real_estate_2;


-- ЦЕЛЬ: Расчет стоимости удельной арендной ставки по районам ЦАО г.Москва, которые находятся внутри садового кольца
-- В запрос включено требование взять помещения, где торговое назначение помещения рассматривается как основное
-- или как второстепенное тоже

-- СТАРОЕ РЕШЕНИЕ

			SELECT
				(SELECT Area FROM Place WHERE ID_Place = First_data.ID AND Territory = 'Внутри СК') AS AREA,
				ROUND(AVG(udel_Price)) AS 'Средняя стоимость (руб./кв.м/год)',
				COUNT(ID) AS 'Размер выборки (шт.)'
			FROM First_data
				WHERE Purpose LIKE 'Торгов%'
					OR (Purpose = 'ПСН' AND second_Purpose LIKE 'Торгов%')
					OR (Purpose = 'ПСН' AND second_Purpose LIKE 'ПСН')
					OR (Purpose = 'ПСН' AND second_Purpose LIKE 'общепит') GROUP BY AREA ORDER BY ROUND(AVG(udel_Price)) DESC;

-- РЕШЕНИЕ ЧЕРЕЗ JOIN

			SELECT
				Area AS 'Район ЦАО',
				ROUND(AVG(udel_Price)) AS 'Средняя стоимость (руб./кв.м/год)',
				COUNT(ID) AS 'Размер выборки (шт.)'
			FROM First_data f JOIN Place p ON f.ID = p.ID_Place
			WHERE	Purpose LIKE 'Торгов%'
					OR (Purpose = 'ПСН' AND second_Purpose LIKE 'Торгов%')
					OR (Purpose = 'ПСН' AND second_Purpose LIKE 'ПСН')
					OR (Purpose = 'ПСН' AND second_Purpose LIKE 'общепит') AND Territory = 'Внутри СК'
			GROUP BY AREA ORDER BY ROUND(AVG(udel_Price)) DESC;
    

-- Провел аналитику на зависимость удельной стоимости от удаленности от метро,
-- но т.к. существуют экстремальные значения стоимости, пока видно что цены не идеально отображают зависимость

-- СТАРОЕ РЕШЕНИЕ

		SELECT
			(SELECT Time_to_metro FROM Place WHERE ID_Place = First_data.ID) AS Time_to_metro,
			ROUND(AVG(udel_Price)) AS 'средняя стоимость (руб./кв.м/год)',
			COUNT(udel_Price) AS 'Размер выборки (шт.)' 
		FROM First_data WHERE Purpose LIKE 'Торгов%'
				OR (Purpose = 'ПСН' AND second_Purpose LIKE 'Торгов%')
				OR (Purpose = 'ПСН' AND second_Purpose LIKE 'ПСН')
				OR (Purpose = 'ПСН' AND second_Purpose LIKE 'общепит') GROUP BY Time_to_metro ORDER BY Time_to_metro DESC;

-- РЕШЕНИЕ ЧЕРЕЗ JOIN

		SELECT
			Time_to_metro,
			ROUND(AVG(udel_Price)) AS 'средняя стоимость (руб./кв.м/год)',
			COUNT(udel_Price) AS 'Размер выборки (шт.)'
		FROM First_data f JOIN Place p ON f.ID = p.ID_Place WHERE Purpose LIKE 'Торгов%'
				OR (Purpose = 'ПСН' AND second_Purpose LIKE 'Торгов%')
				OR (Purpose = 'ПСН' AND second_Purpose LIKE 'ПСН')
				OR (Purpose = 'ПСН' AND second_Purpose LIKE 'общепит') GROUP BY Time_to_metro ORDER BY Time_to_metro DESC;
		  
  
-- Провел исследование удельной стоимости аренды по улицам, др. словами исследование самой дорогой улицы

-- СТАРОЕ РЕШЕНИЕ

		SELECT
				Street AS 'Улица',
				(SELECT Area FROM Place WHERE ID_Place = First_data.ID AND Territory = 'Внутри СК') AS area,
				count(Street) AS 'Размер выборки (шт.)',
				round(AVG(udel_Price)) AS 'Средняя стоимость (руб./кв.м/год)' 
		FROM First_data
		WHERE 
				Purpose LIKE 'Торгов%'
				OR (Purpose = 'ПСН' AND second_Purpose LIKE 'Торгов%')
				OR (Purpose = 'ПСН' AND second_Purpose LIKE 'ПСН')
				OR (Purpose = 'ПСН' AND second_Purpose LIKE 'общепит') GROUP BY Street ORDER BY round(AVG(udel_Price)) DESC;

-- РЕШЕНИЕ ЧЕРЕЗ JOIN

		SELECT
				Street AS 'Улица',
				round(AVG(udel_Price)) AS 'Средняя стоимость (руб./кв.м/год)',
				count(Street) AS 'Размер выборки (шт.)'
		FROM Place p
		JOIN First_data f ON p.ID_Place = f.ID
		WHERE
				Territory = 'Внутри СК' AND	Purpose LIKE 'Торгов%'
				OR (Purpose = 'ПСН' AND second_Purpose LIKE 'Торгов%')
				OR (Purpose = 'ПСН' AND second_Purpose LIKE 'ПСН')
				OR (Purpose = 'ПСН' AND second_Purpose LIKE 'общепит')
		GROUP BY Street ORDER BY round(AVG(udel_Price)) DESC;
				


-- Провел аналитику по средней стоимости (руб/кв.м/год) по районам ЦАО г.Москва
-- При этом в выбурку попали объекты по определенным критериям, описанных в запросе и в подзапросах

-- СТАРОЕ РЕШЕНИЕ


		SELECT
			(SELECT Area FROM Place WHERE ID_Place = First_data.ID) AS Area,
			round(AVG(udel_Price)) AS 'Средняя стоимость (руб./кв.м/год)' -- AS 'Средняя стоимость (руб./кв.м/год)'
		FROM First_data
		WHERE ID IN
			(SELECT	ID_Fisic_Charact 
				FROM Fisic_charact
					WHERE Decor = 'среднее' OR 'улучшенное' OR 'чистовая отделка' AND
						Floor != 'подвал' AND
						Red_line = 'по красной линии улицы' AND
						Separate_entrance = 'есть' OR 'два входа') AND
				Purpose LIKE 'Торгов%'
				OR (Purpose = 'ПСН' AND second_Purpose LIKE 'Торгов%')
				OR (Purpose = 'ПСН' AND second_Purpose LIKE 'ПСН')
				OR (Purpose = 'ПСН' AND second_Purpose LIKE 'общепит')
		GROUP BY Area
		ORDER BY AVG(udel_Price) DESC;



-- Узнать кто заказывал у компании услугу и какого рода


		SELECT
			Name_ag AS 'Имя (название) контрагента (заказчика)',
			name_service AS 'Название предоставляемой услуги',
			Adres AS 'Адрес объекта'
		FROM Orders o
		JOIN Agent a USING(ID_ag)
		JOIN First_data f ON o.ID_real_estate = f.ID
		JOIN Services s ON o.ID_Service = s.ID_Service;


-- Какие клиенты заказывали услугу чаще

		SELECT
			COUNT(ID_ag) AS 'Кол-во заказов',
			Name_ag AS 'Имя (название) контрагента (заказчика)',
			name_service AS 'Название предоставляемой услуги',
			Adres AS 'Адрес объекта'
		FROM Orders o
		JOIN Agent a USING(ID_ag)
		JOIN First_data f ON o.ID_real_estate = f.ID
		JOIN Services s ON o.ID_Service = s.ID_Service
		GROUP BY Name_ag;


