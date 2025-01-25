SELECT pizzeria_name
FROM ((select replace(pizzeria.name, '"', '') AS pizzeria_name
			from person_visits
				join person on person.id = person_id
				join pizzeria on pizzeria.id = pizzeria_id
			where gender = 'male'
 
		EXCEPT ALL
 
		select replace(pizzeria.name, '"', '') AS pizzeria_name
			from person_visits
				join person on person.id = person_id
				join pizzeria on pizzeria.id = pizzeria_id
			where gender = 'female')
	  
		UNION ALL
	
	(select replace(pizzeria.name, '"', '') AS pizzeria_name
	  		from person_visits
				join person on person.id = person_id
				join pizzeria on pizzeria.id = pizzeria_id
			where gender = 'female'

		EXCEPT ALL 
 
		select replace(pizzeria.name, '"', '') AS pizzeria_name
			from person_visits
				join person on person.id = person_id
				join pizzeria on pizzeria.id = pizzeria_id
			where gender = 'male')

) AS pizzeria_name 
ORDER BY pizzeria_name;