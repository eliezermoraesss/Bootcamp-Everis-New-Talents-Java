insert Clientes values('Eliezer', 'F', getdate())

select *from clientes

select *from Pedido
select *from Produtos
select *from PedidoItem

select * from Status

alter table Pedido add CodigoStatus int
alter table Pedido add DescStatus varchar(50)

update Pedido set codigoStatus= 1, DescStatus = 'Em andamento'

insert Pedido values(2, getdate(), 0, 22.49, 1)

insert PedidoItem values(2, 1, 1.5, 1)
insert PedidoItem values(2, 2, 20.99, 1)

insert PedidoItem values(2, 2, 10.5, 1)

alter table PedidoItem add constraint fk_pedido foreign key(CodigoPedido) references Pedido (Codigo)

select * from Telefones
Id CodigoCliente DDD Telefone

