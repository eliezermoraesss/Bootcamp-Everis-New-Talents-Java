select * from clientes

insert into clientes (codigo, nome, TipoPessoa) values (1, 'Eliezer', 'F');
insert Clientes (codigo, nome, TipoPessoa) values (2, 'Nádia', 'F');
insert Clientes (TipoPessoa, codigo, nome) values ('F', 3, 'Antônio');
insert  Clientes values (4, 'Edmar', 'F');
insert  Clientes values (5, 'Eidy', 'F'), (1, 'Nome', 'J');

select *
from clientes
where codigo = 1
OR tipoPessoa = 'J'

select *
from clientes
where TipoPessoa = 'J'

update clientes
set codigo = 7,
	nome = 'Dezembrina'
where TipoPessoa = 'J'

update clientes
set TipoPessoa = 'J'

delete
from clientes
where Codigo in(5,4,3,2)

AND
OR

SELECT * FROM Produtos

INSERT Produtos VALUES(1, 'Caneca', 'Caneca azul', 1.5)
INSERT Produtos VALUES(2, 'Caderno', 'Caderno 10 matérias', 20.99)

SELECT * FROM Pedido
SELECT * FROM PedidoItem


INSERT Pedido VALUES(1, getdate(), 0, 3, 7)


INSERT PedidoItem VALUES(1, 1, 1.5, 2)

insert clientes (codigo, nome, TipoPessoa) values(3, 'Moraes', 'F')

select * from clientes

select isnull(DataCriacao, getdate()), * from clientes

select *,
		case
			when TipoPessoa = 'J' then 'Jurídica'
			when TipoPessoa = 'F' then 'Física'
			else 'Pessoa indefinida'
		end + ' ' + convert(varchar, GETDATE(), 103)
from clientes

select *, convert(varchar, DataSolicitacao, 103)
from Pedido
