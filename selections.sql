-- Вывод названия, производителя, цена для товаров, количество которых превышает 2
SELECT product_name, manufacture, price 
FROM phones WHERE product_count > 2;

-- Вывод весь ассортимент товаров марки "Samsung" 
SELECT * FROM phones WHERE manufacture = 'Samsung';

-- Вывод информации о телефонах, где суммарный чек больше 100 000 и меньше 145 000
SELECT * FROM phones 
WHERE product_count * price > 100000 and product_count * price < 145000;

-- 4 задание
-- Товары, в которых есть упоминание "Iphone"
SELECT * FROM phones 
WHERE product_name like 'Phone%';

-- "Galaxy"
SELECT * FROM phones 
WHERE product_name like 'Galaxy%';

-- Товары, в которых есть цифры
SELECT * FROM phones 
WHERE product_name ~ '[0-9]';

-- Товары, в которых есть цифра 8
SELECT * FROM phones 
WHERE product_name ~ '8';