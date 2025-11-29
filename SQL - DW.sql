-- infly.cliente 

create or replace view `d_cliente` as (
select
    `ps`.`id` as `id`,
    `ps`.`nome` as `nome`,
    `gp`.`nome` as `tipo_pessoa`,
    `ps`.`fone` as `fone`,
    `ps`.`email` as `email`,
    `ps`.`data_nasc` as `data_nasc`,
    `ps`.`sexo` as `sexo`,
    `tp`.`nome` as `tipo`,
    `cc`.`nome` as `categoria`
from
    `pessoa` `ps`
left join `tipo_cliente` `tp` on
    `ps`.`tipo_cliente_id` = `tp`.`id`
left join `categoria_cliente` `cc` on
    `ps`.`categoria_cliente_id` = `cc`.`id`
left join `pessoa_grupo` `pg` on
    `pg`.`pessoa_id` = `ps`.`id`
join `grupo_pessoa` `gp` on
    `gp`.`id` = `pg`.`grupo_pessoa_id` and `gp`.`nome` = 'Cliente');


-- infly.d_curso 

-- create or replace view `d_curso` as (
-- select
--     `pr`.`id` as `id`,
--     `pr`.`nome` as `nome`,
--     `fp`.`nome` as `familia_produto`
-- from
--     `produto` `pr`
-- join `tipo_produto` `tp` on
--     `pr`.`tipo_produto_id` = `tp`.`id` and `tp`.`nome` = 'Serviço'
-- left join `familia_produto` `fp` on
--     `pr`.`familia_produto_id` = `fp`.`id`);

-- infly.d_fornecedor fonte

-- create or replace view `d_fornecedor` as (
-- select
--     `ps`.`id` as `id`,
--     `ps`.`nome` as `nome`,
--     `gp`.`nome` as `tipo_pessoa`,
--     `ps`.`fone` as `fone`,
--     `ps`.`email` as `email`,
--     `ps`.`data_nasc` as `data_nasc`,
--     `ps`.`sexo` as `sexo`,
--     `tp`.`nome` as `tipo`,
--     `cc`.`nome` as `categoria`
-- from
--     `pessoa` `ps`
-- left join `tipo_cliente` `tp` on
--     `ps`.`tipo_cliente_id` = `tp`.`id`
-- left join `categoria_cliente` `cc` on
--     `ps`.`categoria_cliente_id` = `cc`.`id`
-- left join `pessoa_grupo` `pg` on
--     `pg`.`pessoa_id` = `ps`.`id`
-- join `grupo_pessoa` `gp` on
--     `gp`.`id` = `pg`.`grupo_pessoa_id` and `gp`.`nome` = 'Fornecedor');

-- infly.d_funcionario fonte

-- create or replace view `d_funcionario` as (
-- select
--     `ps`.`id` as `id`,
--     `ps`.`nome` as `nome`,
--     `gp`.`nome` as `tipo_pessoa`,
--     `ps`.`fone` as `fone`,
--     `ps`.`email` as `email`,
--     `ps`.`data_nasc` as `data_nasc`,
--     `ps`.`sexo` as `sexo`,
--     `tp`.`nome` as `tipo`,
--     `cc`.`nome` as `categoria`
-- from
--     `pessoa` `ps`
-- left join `tipo_cliente` `tp` on
--     `ps`.`tipo_cliente_id` = `tp`.`id`
-- left join `categoria_cliente` `cc` on
--     `ps`.`categoria_cliente_id` = `cc`.`id`
-- left join `pessoa_grupo` `pg` on
--     `pg`.`pessoa_id` = `ps`.`id`
-- join `grupo_pessoa` `gp` on
--     `gp`.`id` = `pg`.`grupo_pessoa_id` and `gp`.`nome` = 'Funcionário');

-- infly.d_mercadoria fonte

-- create or replace view `d_mercadoria` as (
-- select
--     `pr`.`id` as `id`,
--     `pr`.`nome` as `nome`,
--     `fp`.`nome` as `familia_produto`
-- from
--     `produto` `pr`
-- join `tipo_produto` `tp` on
--     `pr`.`tipo_produto_id` = `tp`.`id` and `tp`.`nome` = 'Mercadoria'
-- left join `familia_produto` `fp` on
--     `pr`.`familia_produto_id` = `fp`.`id`);

-- -- infly.d_produto fonte

-- create or replace view `d_produto` as (
select
    `pr`.`id` as `id`,
    `pr`.`nome` as `nome`,
    `fp`.`nome` as `familia_produto`
from
    `produto` `pr`
join `tipo_produto` `tp` on
    `pr`.`tipo_produto_id` = `tp`.`id` and `tp`.`nome` = 'Produto'
left join `familia_produto` `fp` on
    `pr`.`familia_produto_id` = `fp`.`id`);

-- -- infly.d_professor fonte

-- create or replace view `d_professor` as (
-- select
--     `ps`.`id` as `id`,
--     `ps`.`nome` as `nome`,
--     `gp`.`nome` as `tipo_pessoa`,
--     `ps`.`fone` as `fone`,
--     `ps`.`email` as `email`,
--     `ps`.`data_nasc` as `data_nasc`,
--     `ps`.`sexo` as `sexo`,
--     `tp`.`nome` as `tipo`,
--     `cc`.`nome` as `categoria`
-- from
--     `pessoa` `ps`
-- left join `tipo_cliente` `tp` on
--     `ps`.`tipo_cliente_id` = `tp`.`id`
-- left join `categoria_cliente` `cc` on
--     `ps`.`categoria_cliente_id` = `cc`.`id`
-- left join `pessoa_grupo` `pg` on
--     `pg`.`pessoa_id` = `ps`.`id`
-- join `grupo_pessoa` `gp` on
--     `gp`.`id` = `pg`.`grupo_pessoa_id` and `gp`.`nome` = 'Professor');

-- infly.d_vendedor fonte

create or replace view `d_vendedor` as (
select
    `ps`.`id` as `id`,
    `ps`.`nome` as `nome`,
    `gp`.`nome` as `tipo_pessoa`,
    `ps`.`fone` as `fone`,
    `ps`.`email` as `email`,
    `ps`.`data_nasc` as `data_nasc`,
    `ps`.`sexo` as `sexo`,
    `tp`.`nome` as `tipo`,
    `cc`.`nome` as `categoria`
from
    `pessoa` `ps`
left join `tipo_cliente` `tp` on
    `ps`.`tipo_cliente_id` = `tp`.`id`
left join `categoria_cliente` `cc` on
    `ps`.`categoria_cliente_id` = `cc`.`id`
left join `pessoa_grupo` `pg` on
    `pg`.`pessoa_id` = `ps`.`id`
join `grupo_pessoa` `gp` on
    `gp`.`id` = `pg`.`grupo_pessoa_id` and `gp`.`nome` = 'Vendedor');

-- infly.f_negociacao fonte

create or replace view `f_negociacao` as (
select
    `ng`.`id` as `id_negociacao`,
    `ng`.`cliente_id` as `id_cliente`,
    `ng`.`vendedor_id` as `id_vendedor`,
    `oc`.`nome` as `origem_contato`,
    `en`.`nome` as `etapa_negociacao`,
    `na`.`descricao` as `atividade_negociacao`,
    `na`.`horario_inicial` as `horario_inicial`,
    `na`.`horario_final` as `horario_final`,
    `ta`.`nome` as `tipo_atividade`,
    `ni`.`produto_id` as `id_produto`,
    `ni`.`quantidade` as `quantidade_produto`,
    `ni`.`valor` as `valor_produto`
from
    `negociacao` `ng`
left join `origem_contato` `oc` on
    `ng`.`origem_contato_id` = `oc`.`id`
left join `etapa_negociacao` `en` on
    `ng`.`etapa_negociacao_id` = `en`.`id`
left join `negociacao_atividade` `na` on
    `ng`.`id` = `na`.`negociacao_id`
left join `tipo_atividade` `ta` on
    `na`.`tipo_atividade_id` = `ta`.`id`
left join `negociacao_item` `ni` on
    `ng`.`id` = `ni`.`negociacao_id`);

-- infly.f_pedido_item fonte

create or replace view `f_pedido_item` as (
select
    `pv`.`id` as `id_pedido`,
    `pvi`.`id` as `id_item_pedido`,
    `tp`.`nome` as `tipo_pedido`,
    `pv`.`cliente_id` as `id_cliente`,
    `pv`.`vendedor_id` as `id_vendedor`,
    `pv`.`condicao_pagamento_id` as `id_condicao_pagamento`,
    `pv`.`dt_pedido` as `data_pedido`,
    `pv`.`valor_total` as `valor_total_pedido`,
    `pvi`.`produto_id` as `id_produto`,
    `pvi`.`quantidade` as `qtd_produto`,
    `pvi`.`valor` as `valor_produto`
from
    `pedido_venda` `pv`
left join `pedido_venda_item` `pvi` on
    `pv`.`id` = `pvi`.`pedido_venda_id`
left join `tipo_pedido` `tp` on
    `pv`.`tipo_pedido_id` = `tp`.`id`
left join `estado` `es` on
    `pv`.`estado_pedido_venda_id` = `es`.`id`;

-- infly.f_item_pedido

-- select
-- 	pvi.pedido_venda_id,
-- 	pr.nome as produto,
-- 	tp.nome as tipo_produto,
-- 	fp.nome as familia_produto,
-- 	pvi.quantidade,
-- 	pvi.valor,
-- 	pvi.desconto,
-- 	pvi.valor_total,
-- 	pvi.dt_pedido
-- from
-- 	pedido_venda_item pvi
-- left join produto pr on pvi.produto_id = pr.id
-- join tipo_produto tp on
--     pr.tipo_produto_id = tp.id and tp.nome = 'Produto'
-- left join familia_produto fp on
--     pr.familia_produto_id = fp.id

-- -- infly.d_pedido_venda

-- select
--     pv.id as id_pedido,
--     tp.nome as tipo_pedido,
--     pv.cliente_id as id_cliente,
--     pv.vendedor_id as id_vendedor,
--     pv.condicao_pagamento_id as id_condicao_pagamento,
--     pv.dt_pedido as data_pedido,
--     pv.valor_total as valor_total_pedido
-- from
--     pedido_venda pv
-- left join tipo_pedido tp on
--     pv.tipo_pedido_id = tp.id
-- left join estado es on
--     pv.estado_pedido_venda_id = es.id


-- infly.f_conta
create or replace view `f_conta` as (
select
	co.id,
	co.pessoa_id as id_pessoa,
	co.despesa,
	tpc.nome as tipo_conta,
	ca.nome as categoria_conta,
	fp.nome as forma_pagamento,
	co.pedido_venda_id,
	gt.nome as gateway_pagamento,
	co.dt_vencimento,
	co.dt_emissao,
	co.dt_pagamento,
	co.dt_renegociacao,
	co.parcela,
	co.ano_mes_emissao,
	co.ano_mes_vencimento,
	co.ano_mes_pagamento,
	co.valor
from
	conta co
left join categoria ca on co.categoria_id = ca.id   
left join tipo_conta tpc on ca.tipo_conta_id = tpc.id
left join forma_pagamento fp on co.forma_pagamento_id = fp.id
left join gateway_pagamento gt on co.gateway_pagamento_id = gt.id;
)

-- bridge.produto_pedido

select 
    pvi.pedido_venda_id, 
    produto_id 
from pedido_venda_item pvi 