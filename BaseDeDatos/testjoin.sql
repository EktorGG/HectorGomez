select * from alumnos;
select * from grupos g;

-- Inner Join
select *
from TablaA alumnos
inner join tableB tableB
on a.key = b.key;

select *
from alumnos alumnos
inner join grupos g
on a.grupo_id = g.id