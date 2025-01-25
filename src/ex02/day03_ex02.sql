WITH menu_id (foggoten) AS 
(SELECT id AS menu_id
FROM menu
EXCEPT
SELECT menu_id 
FROM person_order
ORDER BY menu_id)

SELECT DISTINCT pizza_name, price, pizzeria.name
FROM menu
JOIN pizzeria ON pizzeria.id = pizzeria_id
JOIN menu_id ON foggoten = menu.id
ORDER BY pizza_name, price;