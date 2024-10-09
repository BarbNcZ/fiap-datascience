-- Resposta do comando SQL item a)
insert into mc_depto (nm_depto, st_depto) values ('Comercial', 'A');
insert into mc_depto (nm_depto, st_depto) values ('Financeiro', 'A');
insert into mc_depto (nm_depto, st_depto) values ('SAC', 'A');
select * from mc_depto;

-- Resposta do comando SQL item b)
insert into mc_funcionario (
    cd_depto, 
    nm_funcionario, 
    dt_nascimento, 
    fl_sexo_biologico, 
    ds_genero, 
    ds_cargo, 
    vl_salario, 
    ds_email, 
    st_func, 
    dt_cadastramento) values (
    3, 
    'Felipe', 
    to_date('21/03/1990', 'DD/MM/YYYY'), 
    'M', 
    'Homem cis', 
    'Gerente', 
    10000200.00,
    'felipe@oracle.com',
    'A',
    sysdate);

insert into mc_funcionario (
    cd_depto, 
    cd_gerente,
    nm_funcionario, 
    dt_nascimento, 
    fl_sexo_biologico, 
    ds_genero, 
    ds_cargo, 
    vl_salario, 
    ds_email, 
    st_func, 
    dt_cadastramento) values (
    3, 
    1,
    'Pedro', 
    to_date('19/12/2002', 'DD/MM/YYYY'), 
    'M', 
    'Homem cis', 
    'Estagiário', 
    100200.00,
    'pedro@oracle.com',
    'A',
    sysdate);
    
insert into mc_funcionario (
    cd_depto, 
    cd_gerente,
    nm_funcionario, 
    dt_nascimento, 
    fl_sexo_biologico, 
    ds_genero, 
    ds_cargo, 
    vl_salario, 
    ds_email, 
    st_func, 
    dt_cadastramento) values (
    3, 
    1,
    'Julia', 
    to_date('25/03/1993', 'DD/MM/YYYY'), 
    'F', 
    'Mulher cis', 
    'CRO', 
    1700200.00,
    'julia@oracle.com',
    'A',
    sysdate);
    
insert into mc_funcionario (
    cd_depto, 
    nm_funcionario, 
    dt_nascimento, 
    fl_sexo_biologico, 
    ds_genero, 
    ds_cargo, 
    vl_salario, 
    ds_email, 
    st_func, 
    dt_cadastramento) values (
    2, 
    'Guilherme', 
    to_date('06/09/1999', 'DD/MM/YYYY'), 
    'M', 
    'Homem cis', 
    'Gerente',
    100200.00,
    'guilherme@oracle.com',
    'A',
    sysdate);
    
insert into mc_funcionario (
    cd_depto,
    cd_gerente,
    nm_funcionario, 
    dt_nascimento, 
    fl_sexo_biologico, 
    ds_genero, 
    ds_cargo, 
    vl_salario, 
    ds_email, 
    st_func, 
    dt_cadastramento) values (
    2,
    2,
    'Barbara', 
    to_date('05/08/1997', 'DD/MM/YYYY'), 
    'F', 
    'Mulher cis',  
    'Estagiário', 
    100200.00,
    'barbara@oracle.com',
    'A',
    sysdate);
    
insert into mc_funcionario (
    cd_depto,
    cd_gerente,
    nm_funcionario, 
    dt_nascimento, 
    fl_sexo_biologico, 
    ds_genero, 
    ds_cargo, 
    vl_salario, 
    ds_email, 
    st_func, 
    dt_cadastramento) values (
    2,
    2,
    'Gisele', 
    to_date('05/08/1997', 'DD/MM/YYYY'), 
    'F', 
    'Mulher cis', 
    'Estagiário', 
    100200.00,
    'gisele@oracle.com',
    'A',
    sysdate);

select * from mc_funcionario;

-- Resposta do comando SQL item c)
insert into mc_estado (sg_estado, nm_estado) values ('SP', 'Sao Paulo');
insert into mc_estado (sg_estado, nm_estado) values ('RJ', 'Rio de Janeiro');
insert into mc_estado (sg_estado, nm_estado) values ('MG', 'Minas Gerais');

insert into mc_cidade (sg_estado, nm_cidade, cd_ibge, nr_ddd) values ('SP', 'Sao Paulo', 3550308, 11);
insert into mc_cidade (sg_estado, nm_cidade, cd_ibge, nr_ddd) values ('SP', 'Sao Bernardo do Campo', 3548708, 11);
insert into mc_cidade (sg_estado, nm_cidade, cd_ibge, nr_ddd) values ('MG', 'Belo Horizonte', 3106200, 31);
insert into mc_cidade (sg_estado, nm_cidade, cd_ibge, nr_ddd) values ('MG', 'Juiz de Fora', 3136702, 32);
insert into mc_cidade (sg_estado, nm_cidade, cd_ibge, nr_ddd) values ('RJ', 'Rio de Janeiro', 2211001, 86);
insert into mc_cidade (sg_estado, nm_cidade, cd_ibge, nr_ddd) values ('RJ', 'Paraty', 2202083, 86);

insert into mc_bairro (cd_cidade, nm_bairro, nm_zona_bairro) values(1, 'Jardim Paulista', 'Oeste');
insert into mc_bairro (cd_cidade, nm_bairro, nm_zona_bairro) values(2, 'Jardim do Mar', 'Centro');
insert into mc_bairro (cd_cidade, nm_bairro, nm_zona_bairro) values(3, 'Santa Efigenia', null);
insert into mc_bairro (cd_cidade, nm_bairro, nm_zona_bairro) values(4, 'Cascatinha', null);

insert into mc_logradouro (cd_bairro, nm_logradouro, nr_cep) values(1, 'Alameda Campinas', 01404000);
insert into mc_logradouro (cd_bairro, nm_logradouro, nr_cep) values(1, 'Alameda Lorena', 01424007);
insert into mc_logradouro (cd_bairro, nm_logradouro, nr_cep) values(2, 'Avenida Senador Vergueiro', 09750001);
insert into mc_logradouro (cd_bairro, nm_logradouro, nr_cep) values(2, 'Avenida Atlantica', 09750601);
insert into mc_logradouro (cd_bairro, nm_logradouro, nr_cep) values(3, 'Rua Amoras', 30260140);
insert into mc_logradouro (cd_bairro, nm_logradouro, nr_cep) values(3, 'Avenida do Contorno', 30110014);
insert into mc_logradouro (cd_bairro, nm_logradouro, nr_cep) values(4, 'Rua Francisco Vaz de Magalhaes', 36033340);
insert into mc_logradouro (cd_bairro, nm_logradouro, nr_cep) values(4, 'Rua Joaquim Carneiro Filho', 36033320);

-- Resposta do comando SQL item d)
insert into mc_end_func (cd_funcionario, cd_logradouro, nr_end, dt_inicio, st_end) values (1, 1, 201, to_date('05/08/1997', 'DD/MM/YYYY'), 'A');
insert into mc_end_func (cd_funcionario, cd_logradouro, nr_end, dt_inicio, st_end) values (2, 3, 500, to_date('05/08/2000', 'DD/MM/YYYY'), 'A');

-- Resposta do comando SQL item e)
insert into mc_cliente (
    nm_cliente, 
    qt_estrelas, 
    vl_medio_compra, 
    st_cliente, 
    ds_email, 
    nr_telefone, 
    nm_login, 
    ds_senha) values (
        'Vitor', 
        4.96,
        500,
        'A',
        'vitor@email.com',
        '499984793',
        'vitinho2000',
        'PythonEhVida'
    );
    
    
insert into mc_cli_fisica (
    nr_cliente, 
    dt_nascimento, 
    fl_sexo_biologico, 
    ds_genero, 
    nr_cpf) values (
    1,
    to_date('05/08/1997', 'DD/MM/YYYY'),
    'M',
    'Homem cis',
    '04811932005'
    );

insert into mc_end_cli (
    nr_cliente,
    cd_logradouro_cli,
    nr_end,
    ds_complemento_end,
    dt_inicio,
    st_end) values (
    1,
    1,
    77,
    'casa',
    to_date('17/03/2019','DD/MM/YYYY'),
    'A');

insert into mc_cliente (
    nm_cliente, 
    qt_estrelas, 
    vl_medio_compra, 
    st_cliente, 
    ds_email, 
    nr_telefone, 
    nm_login, 
    ds_senha) values (
        'Giselle', 
        4.95,
        800,
        'A',
        'giselle@email.com',
        '449954793',
        'gigi2000',
        'gigi1234'
    );
    
insert into mc_cli_fisica (
    nr_cliente, 
    dt_nascimento, 
    fl_sexo_biologico, 
    ds_genero, 
    nr_cpf) values (
    2,
    to_date('15/08/1994', 'DD/MM/YYYY'),
    'F',
    'Mulher cis',
    '04818745605'
    );
    
insert into mc_end_cli (
    nr_cliente,
    cd_logradouro_cli,
    nr_end,
    ds_complemento_end,
    dt_inicio,
    st_end) values (
    2,
    2,
    143,
    'casa',
    to_date('20/03/2017','DD/MM/YYYY'),
    'A');
    
insert into mc_cliente (
    nm_cliente, 
    qt_estrelas, 
    vl_medio_compra, 
    st_cliente, 
    ds_email, 
    nr_telefone, 
    nm_login, 
    ds_senha) values (
        'Marcelo', 
        5.00,
        1000,
        'A',
        'marclinho@email.com',
        '229944715',
        'celinhogames',
        'marcelo1234'
    );
    
insert into mc_cli_juridica (
    nr_cliente, 
    dt_fundacao, 
    nr_cnpj, 
    nr_inscr_est) values (
    2,
    to_date('15/12/1999', 'DD/MM/YYYY'),
    '20031219000246',
    '388108598269'
    );

insert into mc_end_cli (
    nr_cliente,
    cd_logradouro_cli,
    nr_end,
    ds_complemento_end,
    dt_inicio,
    st_end) values (
    3,
    4,
    55,
    'casa',
    to_date('23/04/2010','DD/MM/YYYY'),
    'A');

select* from mc_end_cli;

-- Resposta do comando SQL item f)
    
insert into mc_cliente (
    nm_cliente, 
    qt_estrelas, 
    vl_medio_compra, 
    st_cliente, 
    ds_email, 
    nr_telefone,
    nm_login, 
    ds_senha) values (
        'Marcelo', 
        5.00,
        1000,
        'A',
        'marclinho@email.com',
        '229944715',
        'celinhogames',
        'marcelo1234'
    );

-- Não foi possivel, devido a restrição de chave unica no nome do cliente.

-- Resposta do comando SQL item g)
 
insert into mc_categoria_prod (
    tp_categoria,
    ds_categoria,
    dt_inicio,
    st_categoria) values (
    'P',
    'Eletrônicos',
    to_date('19/11/2000','DD/MM/YYYY'),
    'A');

insert into mc_categoria_prod (
    tp_categoria,
    ds_categoria,
    dt_inicio,
    st_categoria) values (
    'P',
    'Esporte e Lazer',
    to_date('20/06/2002','DD/MM/YYYY'),
    'A');

insert into mc_categoria_prod (
    tp_categoria,
    ds_categoria,
    dt_inicio,
    st_categoria) values (
    'P',
    'Pet Shop',
    to_date('15/11/2000','DD/MM/YYYY'),
    'A');    
    
-- Resposta do comando SQL item h)

insert into mc_produto (
    cd_categoria,
    ds_produto,
    vl_unitario,
    st_produto,
    ds_completa_prod) values (
    1,
    'PC do felipe',
    1100.00,
    'A',
    'Computador do Felipe em uso há mais de 5 anos. Perfeito estado.');

    
insert into mc_produto (
    cd_categoria,
    ds_produto,
    vl_unitario,
    st_produto,
    ds_completa_prod) values (
    1,
    'Placa de vídeo do Gui',
    5000.00,
    'A',
    'Placa de vídeo do Gui anteriormente utilizada para mineração de bitcoin.');
    
insert into mc_produto (
    cd_categoria,
    ds_produto,
    vl_unitario,
    st_produto,
    ds_completa_prod) values (
    1,
    'Processador da Bárbara',
    1500.00,
    'A',
    'Processador em perfeito estado.');    

insert into mc_produto (
    cd_categoria,
    ds_produto,
    vl_unitario,
    st_produto,
    ds_completa_prod) values (
    3,
    'Whyskas',
    500.00,
    'A',
    'Petiscos para gatinhos.');

insert into mc_produto (
    cd_categoria,
    ds_produto,
    vl_unitario,
    st_produto,
    ds_completa_prod) values (
    1,
    'PC da Julia',
    5000.00,
    'A',
    'Computador aesthetic com peças de colecionador em perfeito estado. (TODAS AS PEÇAS EM COR DE ROSA)');

-- Resposta do comando SQL item i)

insert into mc_categoria_prod (
    tp_categoria,
    ds_categoria,
    dt_inicio,
    st_categoria) values (
    'V',
    'Instalão do produto',
    to_date('20/11/2000','DD/MM/YYYY'),
    'A');

insert into mc_categoria_prod (
    tp_categoria,
    ds_categoria,
    dt_inicio,
    st_categoria) values (
    'V',
    'Uso no cotidiano',
    to_date('29/11/2000','DD/MM/YYYY'),
    'A');

-- Resposta do comando SQL item j)

insert into mc_sgv_produto_video (
    cd_produto,
    nr_sequencia,
    cd_categoria,
    st_video_prod) values (
    3,
    1,
    1,
    'A');

insert into mc_sgv_produto_video (
    cd_produto,
    nr_sequencia,
    cd_categoria,
    st_video_prod) values (
    3,
    2,
    1,
    'A');

-- Resposta do comando SQL item k)

insert into mc_sgv_visualizacao_video (
    nr_cliente,
    cd_produto,
    nr_sequencia,
    dt_visualizacao,
    nr_hora_visualizacao,
    nr_minuto_video,
    nr_segundo_video) values (
    1,
    3,
    1,
    to_date('25/03/2020','DD/MM/YYYY'),
    21,
    10,
    53);
    
insert into mc_sgv_visualizacao_video (
    nr_cliente,
    cd_produto,
    nr_sequencia,
    dt_visualizacao,
    nr_hora_visualizacao,
    nr_minuto_video,
    nr_segundo_video) values (
    2,
    3,
    2,
    to_date('25/03/2020','DD/MM/YYYY'),
    22,
    47,
    50);


-- Resposta do comando SQL item l)

commit;

-- Resposta do comando SQL item m)

update
    mc_funcionario 
set 
    vl_salario=vl_salario*1.12, 
    ds_cargo='CEO' 
where 
    cd_funcionario=1;
    
-- Resposta do comando SQL item n)

update 
    mc_depto
set
    nm_depto='Fiscalizacao'
where
    nm_depto='Financeiro';

-- Resposta do comando SQL item o)

update 
    mc_cli_fisica
set
    dt_nascimento=to_date('18/05/2002','DD/MM/YYYY')
where
    nr_cliente=1;

-- Resposta do comando SQL item p)
    
update 
    mc_funcionario
set
    st_func='I',
    dt_desligamento=to_date(sysdate)
where
    cd_funcionario=2;

-- Resposta do comando SQL item q)

update 
    mc_end_cli
set
    st_end='I',
    dt_termino=to_date(sysdate)
where
    nr_cliente=1;

-- Resposta do comando SQL item r)

delete from mc_estado where sg_estado='SP';

-- Como ja existe um registro filho, nao e possivel eliminar

-- Resposta do comando SQL item s)

update 
    mc_produto
set
    st_produto='X'
where
    cd_produto=5;

-- Nao e possivel alterar por que possui uma check costraint que possui valor 'A' ou 'I'

commit;

    
    
    
    
    