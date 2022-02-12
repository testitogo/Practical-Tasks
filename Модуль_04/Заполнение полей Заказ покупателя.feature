﻿#language: ru
@tree

Функционал: тест заполнения полей документа Заказ покупателя

Как Менеджер я хочу
протестировать заполнение полей документа Заказ покупателя
чтобы убедиться в правильности заполнения полей

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: создание документа Заказ клиента
И я закрываю все окна клиентского приложения
* Открытие формы нового документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
	Тогда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Заказ покупателя (создание)'
* Тестирование недоступности поля Контрагент
	И элемент формы с именем "LegalName" не доступен
* Тестирование заполнения шапки документа
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'            |
		| '2'   | 'Клиент 2 (2 соглашения)' |
	И я нажимаю на кнопку с именем 'FormChoose'
	Тогда элемент формы с именем "Partner" стал равен 'Клиент 2 (2 соглашения)'
	Тогда элемент формы с именем "LegalName" стал равен 'Клиент 2'
	И я нажимаю кнопку выбора у поля с именем "Agreement"
	Тогда открылось окно 'Соглашения'
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'                                        |
		| '2'   | 'Индивидуальное соглашение 1 (расчет по соглашениям)' |
	И я нажимаю на кнопку с именем 'FormChoose'
И я закрываю все окна клиентского приложения	