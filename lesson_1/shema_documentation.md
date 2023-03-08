# База данных магазина

## Таблица "Продукты"
#### Таблица product хранит информацию о продуктах.
| Поле     | Тип данных | Описание                |
|----------|-----------|-------------------------|
| id       | SERIAL    | Идентификатор продукта   |
| name     | VARCHAR   | Название продукта        |
| category_id | INTEGER | Идентификатор категории продукта |
| price_id | INTEGER   | Идентификатор цены продукта |
| supplier_id | INTEGER | Идентификатор поставщика продукта |
| manufacturer_id | INTEGER | Идентификатор производителя продукта |

## Таблица "Категории продуктов"
#### Таблица category хранит информацию о категориях продуктов.
| Поле     | Тип данных | Описание                 |
|----------|-----------|--------------------------|
| id       | SERIAL    | Идентификатор категории   |
| name     | VARCHAR   | Название категории        |

## Таблица "Цены продуктов"
#### Таблица price хранит информацию о ценах на продукты.
| Поле     | Тип данных | Описание                 |
|----------|-----------|--------------------------|
| id       | SERIAL    | Идентификатор цены        |
| value    | NUMERIC(10, 2)   | Значение цены           |

## Таблица "Поставщики"
#### Таблица supplier хранит информацию о поставщиках продуктов.
| Поле     | Тип данных | Описание                  |
|----------|-----------|---------------------------|
| id       | SERIAL    | Идентификатор поставщика   |
| name     | VARCHAR   | Название поставщика        |

## Таблица "Производители"
#### Таблица manufacturer хранит информацию о производителях продуктов.
| Поле     | Тип данных | Описание                    |
|----------|-----------|-----------------------------|
| id       | SERIAL    | Идентификатор производителя  |
| name     | VARCHAR   | Название производителя       |

## Таблица "Покупатели"
#### Таблица customer хранит информацию о покупателях.
| Поле     | Тип данных | Описание                 |
|----------|-----------|--------------------------|
| id       | SERIAL    | Идентификатор покупателя  |
| name     | VARCHAR   | Имя покупателя            |
| email    | VARCHAR   | Электронная почта покупателя |

## Таблица "Покупки"
#### Таблица purchase хранит информацию о покупках продуктов покупателями.
| Поле     | Тип данных | Описание                                    |
|----------|-----------|---------------------------------------------|
| id       | SERIAL    | Идентификатор покупки                       |
| product_id | INTEGER | Идентификатор продукта, купленного покупателем |
| buyer_id | INTEGER | Идентификатор покупателя                    |
| price_id | INTEGER   | Идентификатор цены продукта на момент покупки |
| quantity | INTEGER   | Количество купленных продуктов             |
| date     | TIMESTAMP | Дата и время покупки                        |


Связи между таблицами:
* Таблица product связана с таблицей category по полю category_id.
* Таблица product связана с таблицей price по полю price_id.
* Таблица product связана с таблицей supplier по полю supplier_id.
* Таблица product связана с таблицей manufacturer по полю manufacturer_id.
* Таблица purchase связана с таблицей customer по полю customer_id.
* Таблица purchase связана с таблицей product по полю product_id.

# Примеры бизнес-задач

## Управление продуктами

- Добавление, изменение и удаление продуктов, категорий продуктов, цен и поставщиков
- Получение списка продуктов в определенной категории
- Получение списка цен на определенный продукт за определенный период времени
- Получение информации о поставщиках продуктов

## Управление покупками

- Добавление информации о покупках и покупателях
- Получение списка покупок определенного покупателя
- Получение средней стоимости покупок за определенный период времени
- Определение наиболее популярных продуктов и категорий продуктов среди покупателей

## Аналитика и отчетность

- Получение отчетов о продажах по продуктам, категориям продуктов, поставщикам и периодам времени
- Анализ продаж по регионам и магазинам
- Оценка эффективности поставщиков и производителей на основе объема продаж
- Мониторинг цен на конкурирующие продукты и анализ изменений рынка