#language: ru

@tree

Функционал: <описание фичи>

Как Менеджер по продажам я хочу
при заполнении количества в строках заказа 
чтобы рассчитывалось общее количество по заказу 

Контекст:
Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка заполнения поля количечество (итог)
И Создание документа заказа и заполнение шапки
Когда открылось окно 'Заказ (создание) *'
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Йогурт'
И я перехожу к следующему реквизиту
И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
И я перехожу к следующему реквизиту
Тогда элемент формы с именем "ТоварыИтогКоличество" стал равен '2'
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Пинетки'
И я перехожу к следующему реквизиту
И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5'
И я перехожу к следующему реквизиту
Тогда элемент формы с именем "ТоварыИтогКоличество" стал равен '7'