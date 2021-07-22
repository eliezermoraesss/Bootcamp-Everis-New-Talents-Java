
select * from StatusPedidoItem

select * from PedidoItem

insert PedidoItemLog (CodigoPedido, CodigoProduto, CodigoStatusPedidoItem, DataMovimento)
select CodigoPedido, CodigoProduto, 1, getdate()
from PedidoItem

 
inner join
left join
right join

SELECT * FROM CLIENTES cli
inner	join Pedido ped
on		cli.codigo = ped.CodigoCliente

SELECT * FROM CLIENTES cli
left	join Pedido ped
on		cli.codigo = ped.CodigoCliente

SELECT * FROM Pedido ped
right	join Clientes cli
on		cli.codigo = ped.CodigoCliente

SELECT * FROM CLIENTES cli
left	join Pedido ped
on		cli.codigo = ped.CodigoCliente
where ped.TotalPedido > 10

SELECT * FROM CLIENTES cli
left	join Pedido ped
on		cli.codigo = ped.CodigoCliente
and ped.TotalPedido > 10

SELECT  cli.Nome ClienteNome,
		ped.TotalPedido,
		case
			when cli.TipoPessoa = 'F' then 'Física'
			else 'Jurídica'
		end TipoPessoa
from Clientes cli
left	join Pedido ped
on		cli.Codigo = ped.CodigoCliente

select *
from PedidoItem t1
inner	join PedidoItemLog t2
on		t1.CodigoPedido = t2.CodigoPedido
and		t1.CodigoProduto = t2.CodigoProduto
inner	join StatusPedidoItem t3
on		t3.Codigo = t2.CodigoStatusPedidoItem
where Preco between 1 and 2







select sum(preco * quantidade)
from PedidoItem t1
inner	join PedidoItemLog t2
on		t1.CodigoPedido = t2.CodigoPedido
and		t1.CodigoProduto = t2.CodigoProduto
inner	join StatusPedidoItem t3
on		t3.Codigo = t2.CodigoStatusPedidoItem


select avg(preco)
from PedidoItem t1
inner	join PedidoItemLog t2
on		t1.CodigoPedido = t2.CodigoPedido
and		t1.CodigoProduto = t2.CodigoProduto
inner	join StatusPedidoItem t3
on		t3.Codigo = t2.CodigoStatusPedidoItem

select count(*)
from PedidoItem t1
inner	join PedidoItemLog t2
on		t1.CodigoPedido = t2.CodigoPedido
and		t1.CodigoProduto = t2.CodigoProduto
inner	join StatusPedidoItem t3
on		t3.Codigo = t2.CodigoStatusPedidoItem

select t4.Codigo,
		t4.Descricao,
		t1.preco * t1.quantidade,
		quantidade
from PedidoItem t1
inner	join PedidoItemLog t2
on		t1.CodigoPedido = t2.CodigoPedido
and		t1.CodigoProduto = t2.CodigoProduto
inner	join StatusPedidoItem t3
on		t3.Codigo = t2.CodigoStatusPedidoItem
inner	join Produtos t4
on		t4.Codigo = t2.CodigoProduto

select t4.Codigo,
		t4.Descricao,
		sum(t1.preco * t1.quantidade)
from PedidoItem t1
inner	join PedidoItemLog t2
on		t1.CodigoPedido = t2.CodigoPedido
and		t1.CodigoProduto = t2.CodigoProduto
inner	join StatusPedidoItem t3
on		t3.Codigo = t2.CodigoStatusPedidoItem
inner	join Produtos t4
on		t4.Codigo = t2.CodigoProduto

group by	t4.Codigo,
			t4.Descricao

select t4.Codigo,
		t4.Descricao,
		sum(t1.preco * t1.quantidade) Somatoria
from PedidoItem t1
inner	join PedidoItemLog t2
on		t1.CodigoPedido = t2.CodigoPedido
and		t1.CodigoProduto = t2.CodigoProduto
inner	join StatusPedidoItem t3
on		t3.Codigo = t2.CodigoStatusPedidoItem
inner	join Produtos t4
on		t4.Codigo = t2.CodigoProduto

group by	t4.Codigo,
			t4.Descricao
order by	3 desc --ordena de forma descrente

select t4.Codigo,
		t4.Descricao,
		sum(t1.preco * t1.quantidade) Somatoria
from PedidoItem t1
inner	join PedidoItemLog t2
on		t1.CodigoPedido = t2.CodigoPedido
and		t1.CodigoProduto = t2.CodigoProduto
inner	join StatusPedidoItem t3
on		t3.Codigo = t2.CodigoStatusPedidoItem
inner	join Produtos t4
on		t4.Codigo = t2.CodigoProduto

group by	t4.Codigo,
			t4.Descricao
order by	Somatoria desc

select *
from Clientes cli
where cli.Codigo not in(select codigoCliente from Pedido)

SELECT * FROM CLIENTES cli
left	join Pedido ped
on		cli.codigo = ped.CodigoCliente

select *
from	Clientes cli
left	join Pedido ped
on		cli.codigo = ped.CodigoCliente
where ped.Codigo is not null

select *
from	Clientes cli
left	join Pedido ped
on		cli.codigo = ped.CodigoCliente
where ped.Codigo is null

--Outra forma de JOIN
select *
from Clientes cli, Pedido ped, PedidoItem pedItem
where cli.Codigo = ped.codigoCliente
and ped.codigo = pedItem.CodigoPedido

