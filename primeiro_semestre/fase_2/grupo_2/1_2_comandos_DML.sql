--> a)
insert into mc_depto (nm_depto, st_depto) values ('Comercial', 'A');
insert into mc_depto (nm_depto, st_depto) values ('Financeiro', 'A');
insert into mc_depto (nm_depto, st_depto) values ('SAC', 'A');
select * from mc_depto;

--> b)
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
    'Jim Halpert', 
    to_date('18/02/1978', 'DD/MM/YYYY'), 
    'M', 
    'Homem cis', 
    'President of New Acquisitions', 
    7000.00,
    'halpertjim@melhorescompras.com',
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
    'Pam Beesly', 
    to_date('25/03/1979', 'DD/MM/YYYY'), 
    'F', 
    'Mulher cis', 
    'Supervisor', 
    6000.00,
    'beeslypam@melhorescompras.com',
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
    'Andy Bernard', 
    to_date('24/01/1973', 'DD/MM/YYYY'), 
    'M', 
    'Homem cis', 
    'Diretor', 
    9000.00,
    'bernardandy@melhorescompras.com',
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
    'Michael Scott', 
    to_date('15/03/1965', 'DD/MM/YYYY'), 
    'M', 
    'Homem cis', 
    'Coordenador Regional', 
    100200.00,
    'scottmichael@melhorescompras.com',
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
    'Erin Hannon', 
    to_date('01/05/1986', 'DD/MM/YYYY'), 
    'F', 
    'Mulher cis',  
    'Atendimento', 
    4000.00,
    'hannonerin@melhorescompras.com',
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
    'Dwight Schrute', 
    to_date('20/01/1970', 'DD/MM/YYYY'), 
    'M', 
    'Homem cis', 
    'Comercial', 
    1000.00,
    'schrutedwight@melhorescompras.com',
    'A',
    sysdate);
    
    
select * from mc_funcionario;

--> c)
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

--> d)
insert into mc_end_func (cd_funcionario, cd_logradouro, nr_end, dt_inicio, st_end) values (1, 1, 201, to_date('05/08/1997', 'DD/MM/YYYY'), 'A');
insert into mc_end_func (cd_funcionario, cd_logradouro, nr_end, dt_inicio, st_end) values (2, 3, 500, to_date('05/08/2000', 'DD/MM/YYYY'), 'A');

--> e)
insert into mc_cliente (
    nm_cliente, 
    qt_estrelas, 
    vl_medio_compra, 
    st_cliente, 
    ds_email, 
    nr_telefone, 
    nm_login, 
    ds_senha) values (
        'Barbara', 
        4.96,
        500,
        'A',
        'barbara@lovegame.com',
        '119984793',
        'gameswow',
        'joguinho25'
    );
    
insert into mc_cli_fisica (
    nr_cliente, 
    dt_nascimento, 
    fl_sexo_biologico, 
    ds_genero, 
    nr_cpf) values (
    1,
    to_date('05/08/1997', 'DD/MM/YYYY'),
    'F',
    'Mulher cis',
    04811932005
    );


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
        'giselle@bellydata.com',
        449954793,
        'gidata',
        'belldat21a'
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
    04818745605
    );
    
insert into mc_cliente (
    nm_cliente, 
    qt_estrelas, 
    vl_medio_compra, 
    st_cliente, 
    ds_email, 
    nr_telefone, 
    nm_login, 
    ds_senha) values (
        'Guilherme', 
        5.00,
        1000,
        'A',
        'guisushi@byshopping.com',
        229944715,
        'sushihot',
        'awk3lecute'
    );
    
insert into mc_cli_juridica (
    nr_cliente, 
    dt_fundacao, 
    nr_cnpj, 
    nr_inscr_est) values (
    2,
    to_date('15/12/1999', 'DD/MM/YYYY'),
    20031219000246,
    388108598269
    );

select * from mc_cli_juridica

--> f)
    
insert into mc_cliente (
    nm_cliente, 
    qt_estrelas, 
    vl_medio_compra, 
    st_cliente, 
    ds_email, 
    nr_telefone,
    nm_login, 
    ds_senha) values (
        'Guilherme', 
        5.00,
        1000,
        'A',
        'guisushi@byshopping.com',
        229944715,
        'sushihot',
        'awk3lecute'
    );

--> g)
 
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
    
--> h)

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

--> i)

insert into mc_categoria_prod (
    tp_categoria,
    ds_categoria,
    dt_inicio,
    st_categoria) values (
    'V',
    'Instalação do produto',
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

--> j)

insert into mc_sgv_produto_video (
    cd_produto,
    nr_sequencia,
    cd_categoria,
    st_video_prod) values (
    3,
    mc_vd_visual_mc_prod_video_cd_.nextval,
    1,
    'A');

insert into mc_sgv_produto_video (
    cd_produto,
    nr_sequencia,
    cd_categoria,
    st_video_prod) values (
    3,
    mc_vd_visual_mc_prod_video_cd_.nextval,
    1,
    'A');
    
insert into mc_sgv_visualizacao_video (
    cd_produto,
    nr_sequencia,
    dt_visualizacao,
    nr_hora_visualizacao,
    nr_minuto_video,
    nr_segundo_video)
values (
    3,
    2,
    to_date('11/09/2024', 'DD/MM/YYYY'),
    21,
    30,
    10);
    
    
commit;
