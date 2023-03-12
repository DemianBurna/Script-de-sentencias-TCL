
Start transaction;

	insert into paises (id_pais, pais) values (6 , "Paraguay");
	insert into paises (id_pais, pais) values (7,"Canada");
	insert into paises (id_pais, pais) values (8,"Francia");
	insert into paises (id_pais, pais) values (9,"Bolivia");

savepoint grupo1;

	insert into paises (id_pais, pais) values (10,"Marruecos");
	insert into paises (id_pais, pais) values (11,"Alemania");
	insert into paises (id_pais, pais) values (12,"Rusia");
	insert into paises (id_pais, pais) values (13,"China");

savepoint grupo2;

-- RELEASE SAVEPOINT grupo1;

rollback;


Start transaction;

	delete from ventas where id_ventas = 1;

Commit;
-- rollback;

-- Insert into ventas (id_ventas, id_cliente, id_proyecto, id_factura, monto) Values (1, 3, 3, 2, 750000);
