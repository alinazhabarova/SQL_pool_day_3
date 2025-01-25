SELECT menu.pizza_name, menu.price, pizzeria.name AS name_pizzeria, visit_date
FROM person_visits
JOIN pizzeria ON pizzeria_id = pizzeria.id
JOIN menu ON pizzeria.id = menu.pizzeria_id 
WHERE (price >= '800') AND (price < '1000') AND (person_id = '3')  
ORDER BY pizza_name, price, name_pizzeria;