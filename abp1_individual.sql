select * from ventas;

insert into ventas (idVenta, comprador, vendedor, cantArticulos, subtotal, impuesto, total)
values 
(2, "romina", "rocio", 32, 3500, 500, 4000),
(3, "manuel", "camilo", 2, 4500, 500, 5000),
(4, "ondina", "sebastian", 4, 1000, 500, 1500),
(5, "angela", "esteban", 7, 8000, 500, 8500),
(6, "luciano", "reinaldo", 1, 10500, 500, 11000);

insert into ventas (idVenta, comprador, vendedor, cantArticulos, subtotal, impuesto, total)
values 
(7, "raul", "eric", 50, 500, 50, 550),
(8, "luis", "SONIA GARRIDO", 38, 5000, 1000, 6000),
(9, "LUCAS", "marcos", 2, 6700, 300, 7000),
(10, "romina", "MARIA", 12, 4000, 400, 7000);




-- 1. Una consulta que permita obtener todos los registros de la tabla tales que la cantidad de artículos sea mayor que 2,
-- devolviendo todos sus campos.

select * from ventas where cantarticulos > 2;

-- 2. Una consulta que permita obtener todos los registros de la tabla tales que el subtotal sea menor que 1000, 
-- desplegando solo el ID de venta, el comprador y la cantidad de artículos.

select idVenta, comprador, cantArticulos from ventas where subtotal < 1000;

-- 3. Una consulta que permite obtener los registros tales que el vendedor tiene el nombre “SONIA GARRIDO”, 
-- y que el valor total de la venta es mayor o igual a 5000. 
-- Debe indicar todos los campos de la tabla, pero en orden inverso al que se indica en la figura.

select total, impuesto, subtotal, cantArticulos, vendedor, comprador, idVenta from ventas
where vendedor = 'SONIA GARRIDO'  and total >= 5000;

-- 4. Una consulta que retorne los registros de la tabla tales que el comprador es “LUCAS”, 
-- o bien que el vendedor es “MARIA”. Despliegue solo los campos vendedor, comprador y total, en ese orden.

select vendedor, comprador, total from ventas 
where comprador = 'LUCAS' or vendedor = 'MARIA';

-- 5. Una consulta que despliegue todos los campos de todos los registros tales que el 
-- identificador está en el siguiente conjunto: 2,5,6 y 9.

select * from ventas where idVenta in (2,5,6,9);



