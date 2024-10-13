    -- Resposta do comando SQL item a)
select
    cp.cd_categoria "Código da categoria",
    cp.ds_categoria "Nome da categoria",
    p.cd_produto "Código do produto",
    p.ds_produto "Nome do produto",
    p.vl_unitario "Valor unitário",
    p.tp_embalagem "Tipo de embalagem",
    p.vl_perc_lucro "Percentual do lucro"
from mc_categoria_prod cp
left join mc_produto p on p.cd_categoria = cp.cd_categoria
order by
    cp.cd_categoria,
    p.ds_produto asc;

-- Resposta do comando SQL item b)
select
    c.nr_cliente "Código",
    c.nm_cliente "Nome",
    c.ds_email "Email",
    c.nr_telefone "Telefone",
    c.nm_login "Login",
    cf.dt_nascimento "Data de nasciment",
    extract(day from dt_nascimento) "Dia da semana de nascimento",
    sysdate - cf.dt_nascimento "Anos de vida",
    cf.fl_sexo_biologico "Sexo biológico",
    cf.nr_cpf "CPF"
from mc_cliente c
inner join mc_cli_fisica cf on cf.nr_cliente = c.nr_cliente;

commit;

-- Resposta do comando SQL item c)
select
    vv.cd_produto "Código do produto",
    p.ds_produto "Nome do produto",
    vv.dt_visualizacao "Data e hora de visualização"
from mc_sgv_visualizacao_video vv
inner join mc_produto p on p.cd_produto = vv.cd_produto
order by vv.dt_visualizacao desc;

