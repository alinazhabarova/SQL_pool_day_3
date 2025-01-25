SELECT pizzeria_name
FROM ((select pizzeria.name AS pizzeria_name
			from person_order
				join person on person.id = person_id
	   			join menu on menu.id = menu_id
				join pizzeria on pizzeria.id = pizzeria_id
			where gender = 'male'
 
		EXCEPT
 
		select pizzeria.name AS pizzeria_name
			from person_order
				join person on person.id = person_id
	   			join menu on menu.id = menu_id
				join pizzeria on pizzeria.id = pizzeria_id
			where gender = 'female')
	  
		UNION
	
	(select pizzeria.name AS pizzeria_name
	  		from person_order
				join person on person.id = person_id
	 			join menu on menu.id = menu_id
				join pizzeria on pizzeria.id = pizzeria_id
			where gender = 'female'

		EXCEPT 
 
		select pizzeria.name AS pizzeria_name
			from person_order
				join person on person.id = person_id
	 			join menu on menu.id = menu_id
				join pizzeria on pizzeria.id = pizzeria_id
			where gender = 'male')

) AS pizzeria_name 
ORDER BY pizzeria_name;