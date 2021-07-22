delete from clientes
where nome = 'Moraes'

select * from clientes

alter table Clientes add constraint pk_cliente primary key(Codigo)

insert clientes values(1, 'Julio', 'J', getdate())