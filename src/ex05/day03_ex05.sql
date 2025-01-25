select pizzeria.name as pizzeria_name
from person_visits
join person on person.id = person_id
join pizzeria on pizzeria.id = pizzeria_id
where person.name = 'Andrey'

EXCEPT ALL

select pizzeria.name as pizzeria_name
from person_order
join menu on menu.id = menu_id
join pizzeria on pizzeria.id = pizzeria_id
join person on person.id = person_id
where person.name = 'Andrey'