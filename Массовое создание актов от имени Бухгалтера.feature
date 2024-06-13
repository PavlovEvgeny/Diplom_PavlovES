﻿#language: ru

@tree

Функционал: Проверка массового создания актов от имени Бухгалтера

Как Бухгалтер я хочу
массово создать акты
чтобы проверить работоспособность обработки   

Контекст:
	Дано Я подключаю TestClient "Test" логин "ИзвестнаяОП" пароль ""
	И Я закрываю все окна клиентского приложения

Сценарий: Проверка работоспособности обработки "Массовое создание актов"
	* Я открываю обработку Массовое создание актов
		И В командном интерфейсе я выбираю 'Обслуживание клиентов' 'Массовое создание актов'
		Тогда открылось окно 'Массовое создание актов'
		* Я ввожу данные для создания актов
			И я нажимаю кнопку выбора у поля с именем "Период"
			Тогда открылось окно 'Выберите период'
			И я нажимаю на кнопку с именем 'Select'
			Тогда открылось окно 'Массовое создание актов'
		* Я создаю акты за указанный период
			И я нажимаю на кнопку с именем 'ФормаСоздатьАкты'
	* Я закрываю обработку Массовое создание актов
		И Я закрываю окно 'Массовое создание актов'