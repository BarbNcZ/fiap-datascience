-- Gerado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   em:        2024-09-10 15:25:49 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



DROP TABLE mc_bairro CASCADE CONSTRAINTS;

DROP TABLE mc_categoria_prod CASCADE CONSTRAINTS;

DROP TABLE mc_cidade CASCADE CONSTRAINTS;

DROP TABLE mc_cl_video CASCADE CONSTRAINTS;

DROP TABLE mc_cli_fisica CASCADE CONSTRAINTS;

DROP TABLE mc_cli_juridica CASCADE CONSTRAINTS;

DROP TABLE mc_cliente CASCADE CONSTRAINTS;

DROP TABLE mc_depto CASCADE CONSTRAINTS;

DROP TABLE mc_end_cli CASCADE CONSTRAINTS;

DROP TABLE mc_end_func CASCADE CONSTRAINTS;

DROP TABLE mc_estado CASCADE CONSTRAINTS;

DROP TABLE mc_funcionario CASCADE CONSTRAINTS;

DROP TABLE mc_logradouro CASCADE CONSTRAINTS;

DROP TABLE mc_produto CASCADE CONSTRAINTS;

DROP TABLE mc_sgv_sac CASCADE CONSTRAINTS;

DROP TABLE mc_video CASCADE CONSTRAINTS;

DROP TABLE mc_vis_video CASCADE CONSTRAINTS;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE mc_bairro (
    nm_bairro VARCHAR2(50) NOT NULL,
    nm_cidade VARCHAR2(150) NOT NULL
);

ALTER TABLE mc_bairro ADD CONSTRAINT mc_bairro_pk PRIMARY KEY ( nm_bairro );

CREATE TABLE mc_categoria_prod (
    cd_categoria NUMBER(5) NOT NULL,
    tp_categoria CHAR(1) NOT NULL,
    ds_categoria VARCHAR2(500) NOT NULL,
    st_categoria CHAR(1) NOT NULL,
    dt_inicio    DATE NOT NULL,
    dt_termino   DATE
);

COMMENT ON COLUMN mc_categoria_prod.cd_categoria IS
    'Essa coluna ir� armazenar a chave prim�ria da tabela de categoria de produtos da Melhorees Compras. Cada categoria nova cadastrada  ser� acionada a Sequence  SQ_MC_CATEGORIA que se encarregar� de gerar o pr�ximo n�mero �nico da categoria..'
    ;

COMMENT ON COLUMN mc_categoria_prod.tp_categoria IS
    'Nessa  coluna  ser�  armazenada o tipo de categoria que poder�  ser (V)�deo ou (P)rodudto. Seu conte�do deve ser obrigat�rio.';

COMMENT ON COLUMN mc_categoria_prod.ds_categoria IS
    'Essa coluna ir� armazenar descri��o da categoria de produtos da Melhorees Compras. Cada categoria tem uma  descri��o �nica e serve para organizar os produtos em categorias simliares, melhorando a tomada de decis�o.'
    ;

COMMENT ON COLUMN mc_categoria_prod.st_categoria IS
    'Essa coluna ir� armazenar o stauts da categoria da Melhorees Compras. Os valores permitidos aqui s�o: A(tivo) e I(nativo).';

COMMENT ON COLUMN mc_categoria_prod.dt_inicio IS
    'Essa coluna ir� receber  a data de in�cio da categoria. Seu formato � dd/mm/yyyy e seu conte�do deve ser sempre  obrigat�rio.';

COMMENT ON COLUMN mc_categoria_prod.dt_termino IS
    'Essa coluna ir� receber  a data de encerramento  da categoria. Seu formato � dd/mm/yyyy e seu conte�do deve ser sempre  opcional. Conte�do obrigat�rio significa que a categoria foi encerrada a partir da data t�rmino. J� o conte�do opcional indica que a categoria est� ativa e operante.'
    ;

ALTER TABLE mc_categoria_prod ADD CONSTRAINT mc_categoria_prod_pk PRIMARY KEY ( cd_categoria );

ALTER TABLE mc_categoria_prod ADD CONSTRAINT uk_mc_categ_prod_tp_categ UNIQUE ( tp_categoria );

CREATE TABLE mc_cidade (
    nm_cidade VARCHAR2(150) NOT NULL,
    cd_estado VARCHAR2(2) NOT NULL
);

ALTER TABLE mc_cidade ADD CONSTRAINT mc_cidade_pk PRIMARY KEY ( nm_cidade );

CREATE TABLE mc_cl_video (
    cd_classificacao NUMBER(3) NOT NULL,
    tp_video         VARCHAR2(200) NOT NULL
);

COMMENT ON COLUMN mc_cl_video.tp_video IS
    'Tipo de video: instalacao, uso no cotidiano, comercial etc';

ALTER TABLE mc_cl_video ADD CONSTRAINT cl_video_pk PRIMARY KEY ( cd_classificacao );

ALTER TABLE mc_cl_video ADD CONSTRAINT uk_mc_cl_video_tp_video UNIQUE ( tp_video );

CREATE TABLE mc_cli_fisica (
    cd_cliente    NUMBER(10) NOT NULL,
    nr_cpf        VARCHAR2(14) NOT NULL,
    dt_nascimento DATE NOT NULL,
    cd_genero     CHAR(1) NOT NULL,
    ds_genero     VARCHAR2(100)
);

COMMENT ON COLUMN mc_cli_fisica.nr_cpf IS
    'Essa coluna ir� armazenar o n�mero do CPF do cliente na plataforma ecommerce da Melhores Compras.Seu conte�do deve ser obrigat�rio. '
    ;

COMMENT ON COLUMN mc_cli_fisica.dt_nascimento IS
    'Essa coluna ir� armazenar a data de nascimento do cliente na plataforma ecommerce da Melhores Compras.Seu conte�do deve ser obrigat�rio. '
    ;

COMMENT ON COLUMN mc_cli_fisica.cd_genero IS
    'Genero do cliente. (M)asculino, (F)eminino ou (N)ao binario';

COMMENT ON COLUMN mc_cli_fisica.ds_genero IS
    'Genero do sexo do Cliente. Seu conte�do deve ser obrigat�rio.';

ALTER TABLE mc_cli_fisica ADD CONSTRAINT mc_cli_fisica_pk PRIMARY KEY ( cd_cliente );

ALTER TABLE mc_cli_fisica ADD CONSTRAINT uk_mc_cli_fisica_nr_cpf UNIQUE ( nr_cpf );

CREATE TABLE mc_cli_juridica (
    cd_cliente   NUMBER(10) NOT NULL,
    nr_cnpj      VARCHAR2(20) NOT NULL,
    dt_fundacao  DATE NOT NULL,
    nr_inscr_est VARCHAR2(15)
);

COMMENT ON COLUMN mc_cli_juridica.nr_cnpj IS
    'Essa coluna ir� armazenar o  numero do CNPJ do cliente na plataforma ecommerce da Melhores Compras.Seu conte�do deve ser obrigat�rio.'
    ;

COMMENT ON COLUMN mc_cli_juridica.dt_fundacao IS
    'Essa coluna ir� armazenar data  de funda��o do cliente na plataforma ecommerce da Melhores Compras.Seu conte�do deve ser obrigat�rio.'
    ;

COMMENT ON COLUMN mc_cli_juridica.nr_inscr_est IS
    'Essa coluna ir� armazenar o  numero da Inscri��o Estadual  do cliente na plataforma ecommerce da Melhores Compras.Seu conte�do deve ser opcional'
    ;

ALTER TABLE mc_cli_juridica ADD CONSTRAINT mc_cli_juridica_pk PRIMARY KEY ( cd_cliente );

ALTER TABLE mc_cli_juridica ADD CONSTRAINT uk_mc_cli_juridica_nr_cnpj UNIQUE ( nr_cnpj );

CREATE TABLE mc_cliente (
    cd_cliente      NUMBER(10) NOT NULL,
    nm_cliente      VARCHAR2(160) NOT NULL,
    qt_estrelas     NUMBER(1) NOT NULL,
    vl_medio_compra NUMBER(10, 2) NOT NULL,
    nm_login        VARCHAR2(50) NOT NULL,
    ds_senha        VARCHAR2(50) NOT NULL,
    st_cliente      CHAR(1),
    ds_email        VARCHAR2(100),
    nr_telefone     VARCHAR2(20)
);

COMMENT ON COLUMN mc_cliente.cd_cliente IS
    'Essa coluna ir� armazenar o c�digo �nico do cliente na plataforma ecommerce da Melhores Compras.Seu conte�do deve ser obrigat�rio, �nico e preenhcido a  parrtir da chamada de sequence  SQ_MC_CLIENTE, a qual ter� sempre o n�mero disponivel para uso.'
    ;

COMMENT ON COLUMN mc_cliente.nm_cliente IS
    'Essa coluna ir� armazenar o nome do cliente na plataforma ecommerce da Melhores Compras.Seu conte�do deve ser obrigat�rio.';

COMMENT ON COLUMN mc_cliente.qt_estrelas IS
    'Essa coluna ir� armazenar a quantiade de estrelas do cliente na plataforma ecommerce da Melhores Compras.Seu conte�do deve ser obrigat�rio e ser poss�vel de estar entre 1 e 5 estrelas.'
    ;

COMMENT ON COLUMN mc_cliente.vl_medio_compra IS
    'Essa coluna ir� armazenar o valor  m�dio de gastos f eito pelo cliente na plataforma ecommerce da Melhores Compras.Seu conte�do deve ser obrigat�rio e deve ser calculado diariamente.'
    ;

COMMENT ON COLUMN mc_cliente.nm_login IS
    'Essa coluna ir� armazenar o login de cada cliente na plataforma ecommerce da Melhores Compras. Seu conte�do deve ser obrigat�rio e  �nico para cada cliente.'
    ;

COMMENT ON COLUMN mc_cliente.ds_senha IS
    'Essa coluna ir� armazenar a senha de cada cliente na plataforma ecommerce da Melhores Compras.Seu conte�do deve ser obrigat�rio.'
    ;

COMMENT ON COLUMN mc_cliente.st_cliente IS
    'Essa coluna ir� armazenar o stauts do cliente da Melhorees Compras. Os valores permitidos aqui s�o: A(tivo) e I(nativo).';

COMMENT ON COLUMN mc_cliente.ds_email IS
    'Essa coluna ir� armazenar o email  do cliente da Melhorees Compras. No minimo � esperado um email contendo o caractere (@) em seu conte�do.'
    ;

COMMENT ON COLUMN mc_cliente.nr_telefone IS
    'Essa coluna ir� armazenar o n�mero do cliente da Melhorees Compras. A mascara de armazenamento deve ser: (<nr_ddd>) 99999-9999 e  deve ser utilizada pr� definida.'
    ;

ALTER TABLE mc_cliente ADD CONSTRAINT mc_cliente_pk PRIMARY KEY ( cd_cliente );

ALTER TABLE mc_cliente ADD CONSTRAINT uk_mc_cliente_nome_cliente UNIQUE ( nm_cliente );

CREATE TABLE mc_depto (
    cd_departamento NUMBER(3) NOT NULL,
    nm_departamento VARCHAR2(100) NOT NULL,
    st_departamento CHAR(1) NOT NULL
);

COMMENT ON COLUMN mc_depto.cd_departamento IS
    'Esta coluna ir� receber o codigo do departamento  e seu conte�do � obrigat�rio.';

COMMENT ON COLUMN mc_depto.nm_departamento IS
    'Esta coluna ir� receber o nome do  departamento  e seu conte�do � obrigat�rio.';

COMMENT ON COLUMN mc_depto.st_departamento IS
    'Esta coluna ir� receber o status do  departamento  e seu conte�do � obrigat�rio. Os valores poss�veis s�o: (A)tivo e (I)nativo.'
    ;

ALTER TABLE mc_depto ADD CONSTRAINT mc_depto_pk PRIMARY KEY ( cd_departamento );

ALTER TABLE mc_depto ADD CONSTRAINT uk_mc_dpto_nm_departamento UNIQUE ( nm_departamento );

CREATE TABLE mc_end_cli (
    cd_cliente          NUMBER(10) NOT NULL,
    tp_cliente_endereco VARCHAR2(100) NOT NULL,
    nr_end              NUMBER(8) NOT NULL,
    ds_complemento_end  VARCHAR2(80),
    st_end              CHAR(1)
);

COMMENT ON COLUMN mc_end_cli.nr_end IS
    'N�mero do Endere�o do Cliente. O n�mero da Rua/Localidade onde o cliente est� associado.';

COMMENT ON COLUMN mc_end_cli.ds_complemento_end IS
    'Esta coluna ir� receber o complemento do endere�o do cliente e seu conte�do pode ser opcional.';

COMMENT ON COLUMN mc_end_cli.st_end IS
    'Status do endere�o. (A)itvo ou (I)nativo.';

ALTER TABLE mc_end_cli ADD CONSTRAINT mc_end_cli_pk PRIMARY KEY ( cd_cliente );

CREATE TABLE mc_end_func (
    cd_fun             NUMBER(10) NOT NULL,
    tp_func_endereco   VARCHAR2(200) NOT NULL,
    nr_end             NUMBER(8) NOT NULL,
    st_end             CHAR(1) NOT NULL,
    ds_complemento_end VARCHAR2(80)
);

COMMENT ON COLUMN mc_end_func.nr_end IS
    'N�mero do Endere�o do Cliente. O n�mero da Rua/Localidade onde o cliente est� associado.';

ALTER TABLE mc_end_func ADD CONSTRAINT mc_end_func_pk PRIMARY KEY ( cd_fun );

CREATE TABLE mc_estado (
    cd_estado VARCHAR2(2) NOT NULL
);

ALTER TABLE mc_estado ADD CONSTRAINT mc_estado_pk PRIMARY KEY ( cd_estado );

CREATE TABLE mc_funcionario (
    cd_func          NUMBER NOT NULL,
    cd_func_2        NUMBER(10) NOT NULL,
    nm_func          VARCHAR2(160) NOT NULL,
    cd_func_superior NUMBER,
    cd_departamento  NUMBER(3) NOT NULL,
    dt_nascimento    DATE NOT NULL,
    st_func          CHAR(1) NOT NULL,
    dt_cadastramento DATE NOT NULL,
    cd_gerente       NUMBER,
    vl_salario       NUMBER(10, 2),
    ds_cargo         VARCHAR2(80),
    ds_genero        VARCHAR2(100),
    ds_email         VARCHAR2(80),
    dt_desligamento  DATE
);

COMMENT ON COLUMN mc_funcionario.cd_func IS
    'Esta coluna ir� receber o codigo do funcion�rio e seu conte�do � obrigat�rio.';

COMMENT ON COLUMN mc_funcionario.cd_func_2 IS
    'Esta coluna ir� receber o codigo do funcion�rio e seu conte�do � obrigat�rio.';

COMMENT ON COLUMN mc_funcionario.nm_func IS
    'Esta coluna ir� receber o nome do funcion�rio e seu conte�do � obrigat�rio.';

COMMENT ON COLUMN mc_funcionario.dt_nascimento IS
    'Esta coluna ir� receber a data de nascimento  do funcion�rio e seu conte�do � obrigat�rio.';

COMMENT ON COLUMN mc_funcionario.st_func IS
    'Essa coluna ir� armazenar o stauts do funcion�rio da Melhorees Compras. Os valores permitidos aqui s�o: A(tivo) e I(nativo).';

COMMENT ON COLUMN mc_funcionario.dt_cadastramento IS
    'Data de cadastramento do Funcionario';

COMMENT ON COLUMN mc_funcionario.cd_gerente IS
    'Esta coluna ir� receber o codigo do gestor do funcionario trabalha  e seu conte�do � opcional.';

COMMENT ON COLUMN mc_funcionario.vl_salario IS
    'Esta coluna ir� receber o valor do sal�rio do funcion�rio e seu conte�do � opcional.';

COMMENT ON COLUMN mc_funcionario.ds_cargo IS
    'Esta coluna ir� receber o cargo do funcion�rio e seu conte�do � opcional.';

COMMENT ON COLUMN mc_funcionario.ds_genero IS
    'Esta coluna ir� receber o genero atribuido ao funcion�rio e seu conte�do � opcional.';

COMMENT ON COLUMN mc_funcionario.ds_email IS
    'Esta coluna ir� receber o email do funcion�rio e seu conte�do � opcional.';

COMMENT ON COLUMN mc_funcionario.dt_desligamento IS
    'Data de desligamento  do Funcionario. Seu conte�do � opcional.';

ALTER TABLE mc_funcionario ADD CONSTRAINT uk_mc_funcionario_nm_func UNIQUE ( nm_func );

ALTER TABLE mc_funcionario ADD CONSTRAINT pk_mc_funcionario UNIQUE ( cd_func_2 );

CREATE TABLE mc_logradouro (
    tp_logradouro VARCHAR2(200) NOT NULL,
    nm_bairro     VARCHAR2(50) NOT NULL,
    cd_cliente    NUMBER(10) NOT NULL,
    cd_fun        NUMBER(10) NOT NULL
);

ALTER TABLE mc_logradouro ADD CONSTRAINT mc_logradouro_pk PRIMARY KEY ( tp_logradouro );

CREATE TABLE mc_produto (
    cd_produto            NUMBER(10) NOT NULL,
    cd_categoria          NUMBER(5) NOT NULL,
    ds_produto            VARCHAR2(80) NOT NULL,
    ds_completa_prod      VARCHAR2(4000) NOT NULL,
    vl_unitario           NUMBER(8, 2) NOT NULL,
    st_produto            CHAR(1) NOT NULL,
    nr_cod_barras_produto VARCHAR2(50),
    tp_embalagem          VARCHAR2(15),
    vl_perc_lucro         NUMBER(8, 2)
);

COMMENT ON COLUMN mc_produto.cd_produto IS
    'Essa coluna ir� armazenar a chave prim�ria da tabela de produtos da Melhorees Compras. A cada produto cadastrado ser� acionada a Sequence  SQ_MC_PRODUTO que se encarregar� de gerar o pr�ximo n�mero �nico do produto.'
    ;

COMMENT ON COLUMN mc_produto.ds_produto IS
    'Essa coluna ir� armazenar a descri��o principal do produto. Seu conte�do deve ser  obrigatorio.';

COMMENT ON COLUMN mc_produto.ds_completa_prod IS
    'Essa coluna ir� armazenar a descri��o completa do produto. Seu conte�do deve ser  obrigatorio.';

COMMENT ON COLUMN mc_produto.vl_unitario IS
    'Essa coluna ir� armazenar o valor unit�rio do produto. Seu conte�do deve ser > 0 ';

COMMENT ON COLUMN mc_produto.st_produto IS
    'Essa coluna ir� armazenar o stauts do produto da Melhorees Compras. Os valores permitidos aqui s�o: A(tivo) e I(nativo).';

COMMENT ON COLUMN mc_produto.nr_cod_barras_produto IS
    'Essa coluna ir� armazenar o n�mero do codigo de barras  do produto. Seu conte�do deve ser opcional.';

COMMENT ON COLUMN mc_produto.tp_embalagem IS
    'Essa coluna ir� armazenar o tipo de embalagem do produto. Seu conte�do pode ser opcional.';

COMMENT ON COLUMN mc_produto.vl_perc_lucro IS
    'Essa coluna ir� armazenar o percentual  do lucro m�dio para cada produto. Seu conte�do deve ser opcional.';

ALTER TABLE mc_produto ADD CONSTRAINT mc_produto_pk PRIMARY KEY ( cd_produto );

ALTER TABLE mc_produto ADD CONSTRAINT uk_mc_produto_ds_produto UNIQUE ( ds_produto );

CREATE TABLE mc_sgv_sac (
    cd_cliente               NUMBER(10) NOT NULL,
    nr_sac                   NUMBER(10) NOT NULL,
    cd_fun                   NUMBER(10) NOT NULL,
    cd_produto               NUMBER(10) NOT NULL,
    dt_abertura_sac          DATE NOT NULL,
    hr_abertura_sac          DATE NOT NULL,
    tp_sac                   CHAR(1) NOT NULL,
    st_sac                   CHAR(1) NOT NULL,
    ds_sac                   VARCHAR2(4000) NOT NULL,
    dt_atendimento           DATE,
    hr_atendimento_sac       NUMBER(2),
    nr_tempo_total_sac       NUMBER(10),
    ds_detalhada_retorno_sac CLOB,
    nr_indice_satisfacao     NUMBER(2)
);

COMMENT ON COLUMN mc_sgv_sac.nr_sac IS
    'Essa coluna ir� armazenar a chave prim�ria da tabela de SAC de v�deo  da Melhorees Compras. A cada SAC cadastrado pelo cliente ser� acionada a Sequence  SQ_MC_SGV_SAC que se encarregar� de gerar o pr�ximo n�mero �nico do chamado SAC feito pelo Cliente.'
    ;

COMMENT ON COLUMN mc_sgv_sac.dt_abertura_sac IS
    'Essa coluna  ir�  receber a data e hor�rio do SAC aberto pelo cliente. Seu conteudo deve ser obrigat�rio.';

COMMENT ON COLUMN mc_sgv_sac.hr_abertura_sac IS
    'Essa coluna  ir�  receber a hora do SAC aberto pelo cliente. Seu conteudo deve ser obrigat�rio.';

COMMENT ON COLUMN mc_sgv_sac.tp_sac IS
    'Essa coluna  ir�  receber o TIPO  do chamado SAC aberto pelo cliente.  Seu conte�do deve ser  obrigat�rio e os poss�veis valores s�o: (S)ugest�o; (D)�vida ou  (E)logio.'
    ;

COMMENT ON COLUMN mc_sgv_sac.st_sac IS
    'Essa coluna  ir�  receber o STATUS  do chamado SAC aberto pelo cliente.  Seu conte�do deve ser  obrigat�rio e os poss�veis valores s�o: (E)m Atendimento; (C)ancelado; (F)echado ou (X)Fechado com Insatisfa��o do cliente.'
    ;

COMMENT ON COLUMN mc_sgv_sac.ds_sac IS
    'Essa coluna  ir�  receber a descri��o completa do SAC aberto pelo cliente. Seu conteudo deve ser obrigat�rio.';

COMMENT ON COLUMN mc_sgv_sac.dt_atendimento IS
    'Essa coluna  ir�  receber a data e hor�rio do atendmiento SAC feita pelo funcion�rio da Melhores Compras. Seu conteudo deve ser opcional..'
    ;

COMMENT ON COLUMN mc_sgv_sac.hr_atendimento_sac IS
    'Essa coluna  ir�  receber a hora do SAC do atendimento  feito  pelo funcionario da Melhores Compras. Seu conteudo deve ser opcional.'
    ;

COMMENT ON COLUMN mc_sgv_sac.nr_tempo_total_sac IS
    'Essa coluna  ir�  receber o tempo total em horas  (HH24) computado desde a abertura at� a conclus�o dele. A unidade de medida � horas, ou seja, em quantas horas o chamado foi conclu�do desde a sua abertura.'
    ;

COMMENT ON COLUMN mc_sgv_sac.ds_detalhada_retorno_sac IS
    'Essa coluna  ir�  receber a descri��o detalhada do retorno feito pelo funcion�rio a partir da solicita��o do cliente. Seu conte�do deve ser opcional e preenchido pelo funcion�rio.'
    ;

COMMENT ON COLUMN mc_sgv_sac.nr_indice_satisfacao IS
    'Essa coluna  ir�  receber o �ndice de satisfa��o, , computado como um valor simples de 1 a 10, onde 1 refere-se ao cliente menos satisfeito e 10 o cliente mais satisfeito. Esse �ndice de satisfa��o � opcional e informado pelo cliente ao final do atendimento.'
    ;

ALTER TABLE mc_sgv_sac ADD CONSTRAINT mc_sgv_sac_pk PRIMARY KEY ( cd_cliente,
                                                                  nr_sac );

CREATE TABLE mc_video (
    cd_video          NUMBER(3) NOT NULL,
    cd_produto        NUMBER(10) NOT NULL,
    cd_classificacao  NUMBER(3) NOT NULL,
    st_video          CHAR(1) NOT NULL,
    dt_cadastro_video DATE NOT NULL
);

COMMENT ON COLUMN mc_video.st_video IS
    'Status do video';

COMMENT ON COLUMN mc_video.dt_cadastro_video IS
    'Data de postagem do video';

ALTER TABLE mc_video ADD CONSTRAINT video_pk PRIMARY KEY ( cd_video );

CREATE TABLE mc_vis_video (
    cd_cliente   NUMBER(10) NOT NULL,
    cd_video     NUMBER(3) NOT NULL,
    dt_vis_video DATE NOT NULL,
    hr_vis_video DATE NOT NULL,
    id_usuario   VARCHAR2(20)
);

COMMENT ON COLUMN mc_vis_video.dt_vis_video IS
    'Data de visualizacao do video pelo usuario';

COMMENT ON COLUMN mc_vis_video.hr_vis_video IS
    'Horario de visualicacao do video pelo usuario';

COMMENT ON COLUMN mc_vis_video.id_usuario IS
    'Identificacao de usuario';

ALTER TABLE mc_vis_video ADD CONSTRAINT mc_vis_video_pk PRIMARY KEY ( cd_cliente );

ALTER TABLE mc_logradouro
    ADD CONSTRAINT fk_bairro FOREIGN KEY ( nm_bairro )
        REFERENCES mc_bairro ( nm_bairro );

ALTER TABLE mc_bairro
    ADD CONSTRAINT fk_cidade FOREIGN KEY ( nm_cidade )
        REFERENCES mc_cidade ( nm_cidade );

ALTER TABLE mc_video
    ADD CONSTRAINT fk_cl_video FOREIGN KEY ( cd_classificacao )
        REFERENCES mc_cl_video ( cd_classificacao );

ALTER TABLE mc_logradouro
    ADD CONSTRAINT fk_end_cli FOREIGN KEY ( cd_cliente )
        REFERENCES mc_end_cli ( cd_cliente );

ALTER TABLE mc_logradouro
    ADD CONSTRAINT fk_end_func FOREIGN KEY ( cd_fun )
        REFERENCES mc_end_func ( cd_fun );

ALTER TABLE mc_cidade
    ADD CONSTRAINT fk_estado FOREIGN KEY ( cd_estado )
        REFERENCES mc_estado ( cd_estado );

ALTER TABLE mc_funcionario
    ADD CONSTRAINT fk_mc_func_superior FOREIGN KEY ( cd_func_superior )
        REFERENCES mc_funcionario ( cd_func );

ALTER TABLE mc_vis_video
    ADD CONSTRAINT fk_vis_video FOREIGN KEY ( cd_video )
        REFERENCES mc_video ( cd_video );

ALTER TABLE mc_produto
    ADD CONSTRAINT pk_cat_produto FOREIGN KEY ( cd_categoria )
        REFERENCES mc_categoria_prod ( cd_categoria );

ALTER TABLE mc_end_cli
    ADD CONSTRAINT pk_cd_cliente FOREIGN KEY ( cd_cliente )
        REFERENCES mc_cliente ( cd_cliente );

ALTER TABLE mc_sgv_sac
    ADD CONSTRAINT pk_cd_cliente2 FOREIGN KEY ( cd_cliente )
        REFERENCES mc_cliente ( cd_cliente );

ALTER TABLE mc_vis_video
    ADD CONSTRAINT pk_cd_clientev2 FOREIGN KEY ( cd_cliente )
        REFERENCES mc_cliente ( cd_cliente );

ALTER TABLE mc_end_func
    ADD CONSTRAINT pk_cd_funcionario FOREIGN KEY ( cd_fun )
        REFERENCES mc_funcionario ( cd_func_2 );

ALTER TABLE mc_video
    ADD CONSTRAINT pk_cd_produto FOREIGN KEY ( cd_produto )
        REFERENCES mc_produto ( cd_produto );

ALTER TABLE mc_funcionario
    ADD CONSTRAINT pk_dpto FOREIGN KEY ( cd_departamento )
        REFERENCES mc_depto ( cd_departamento );

ALTER TABLE mc_cli_fisica
    ADD CONSTRAINT pk_p_fisica FOREIGN KEY ( cd_cliente )
        REFERENCES mc_cliente ( cd_cliente );

ALTER TABLE mc_cli_juridica
    ADD CONSTRAINT pk_p_juridica FOREIGN KEY ( cd_cliente )
        REFERENCES mc_cliente ( cd_cliente );

ALTER TABLE mc_sgv_sac
    ADD CONSTRAINT pk_sac_funcionario FOREIGN KEY ( cd_fun )
        REFERENCES mc_funcionario ( cd_func_2 );

ALTER TABLE mc_sgv_sac
    ADD CONSTRAINT pk_sac_produto FOREIGN KEY ( cd_produto )
        REFERENCES mc_produto ( cd_produto );

CREATE OR REPLACE TRIGGER arc_arc_2_mc_cli_juridica BEFORE
    INSERT OR UPDATE OF cd_cliente ON mc_cli_juridica
    FOR EACH ROW
DECLARE
    d NUMBER(10);
BEGIN
    SELECT
        a.cd_cliente
    INTO d
    FROM
        mc_cliente a
    WHERE
        a.cd_cliente = :new.cd_cliente;

    IF ( d IS NULL OR d <> cliente ) THEN
        raise_application_error(-20223, 'FK pk_p_juridica in Table MC_CLI_JURIDICA violates Arc constraint on Table MC_CLIENTE - discriminator column cd_cliente doesn''t have value cliente'
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER arc_arc_2_mc_cli_fisica BEFORE
    INSERT OR UPDATE OF cd_cliente ON mc_cli_fisica
    FOR EACH ROW
DECLARE
    d NUMBER(10);
BEGIN
    SELECT
        a.cd_cliente
    INTO d
    FROM
        mc_cliente a
    WHERE
        a.cd_cliente = :new.cd_cliente;

    IF ( d IS NULL OR d <> cliente ) THEN
        raise_application_error(-20223, 'FK pk_p_fisica in Table MC_CLI_FISICA violates Arc constraint on Table MC_CLIENTE - discriminator column cd_cliente doesn''t have value cliente'
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE SEQUENCE mc_funcionario_cd_func_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER mc_funcionario_cd_func_trg BEFORE
    INSERT ON mc_funcionario
    FOR EACH ROW
    WHEN ( new.cd_func IS NULL )
BEGIN
    :new.cd_func := mc_funcionario_cd_func_seq.nextval;
END;
/



-- Relat�rio do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            17
-- CREATE INDEX                             0
-- ALTER TABLE                             44
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           3
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          1
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
