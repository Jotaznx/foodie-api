--
-- File generated with SQLiteStudio v3.4.4 on qua out 9 14:37:49 2024
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: BANNER
CREATE TABLE IF NOT EXISTS BANNER (
    ID_BANNER  INTEGER        NOT NULL
                              PRIMARY KEY AUTOINCREMENT,
    ICONE      VARCHAR (1000),
    ID_EMPRESA INTEGER,
    ORDEM      INTEGER,
    FOREIGN KEY (
        ID_EMPRESA
    )
    REFERENCES EMPRESA (ID_EMPRESA) 
);

INSERT INTO BANNER (ID_BANNER, ICONE, ID_EMPRESA, ORDEM) VALUES (1, 'https://lh3.googleusercontent.com/pw/AM-JKLXmcyGblX7nqhb9UKe3TYI0asIW-exB5_s9frlnOSOkRUtJ5eTTgpo0QnT02Bbg_cVYZ1F2mFjbedDlH4fazAgNjkuDmY7PLFGbR06VM6qwGoKgVkt4B5azczDayLs5E3boIW-7jdE12qRiI_ejOrii=w310-h155-no', 1, 1);
INSERT INTO BANNER (ID_BANNER, ICONE, ID_EMPRESA, ORDEM) VALUES (2, 'https://lh3.googleusercontent.com/pw/AM-JKLVVWaXS1XqC3IusGD6HBIo05cW49NZFWtoxKfTyGtwktKJgwfqyehTH3IymbpnPQXWkwNb3Pm_k2ZAQh4EJR8h2Rsn_6F50iX3SPwMK2tBC3Y9tZSrJj1EzP2VFae60AsFJ7oBGLx9CDcVSFgH0OWOF=w310-h155-no', 2, 2);
INSERT INTO BANNER (ID_BANNER, ICONE, ID_EMPRESA, ORDEM) VALUES (3, 'https://lh3.googleusercontent.com/pw/AM-JKLXjiiI6CUyPAeY7N1UF5UWAacWk0pA1G-TDOUHAzr4Eq3g7_LwBl7kVOSlixQ425JXLKSkjeF6ord42ebAUE8GFoq7dtmGDXecy6Eolm0WqGgalR9MP3q0-26z3pCVhp0fo70P8v0KqV4pnv0wC1KOi=w310-h155-no?authuser=0', 3, 3);
INSERT INTO BANNER (ID_BANNER, ICONE, ID_EMPRESA, ORDEM) VALUES (4, 'https://lh3.googleusercontent.com/pw/AM-JKLVVWaXS1XqC3IusGD6HBIo05cW49NZFWtoxKfTyGtwktKJgwfqyehTH3IymbpnPQXWkwNb3Pm_k2ZAQh4EJR8h2Rsn_6F50iX3SPwMK2tBC3Y9tZSrJj1EzP2VFae60AsFJ7oBGLx9CDcVSFgH0OWOF=w310-h155-no', 4, 4);

-- Table: CATEGORIA
CREATE TABLE IF NOT EXISTS CATEGORIA (
    ID_CATEGORIA INTEGER        NOT NULL
                                PRIMARY KEY AUTOINCREMENT,
    CATEGORIA    VARCHAR (50),
    ICONE        VARCHAR (1000),
    ORDEM        INTEGER
);

INSERT INTO CATEGORIA (ID_CATEGORIA, CATEGORIA, ICONE, ORDEM) VALUES (1, 'Pizza', 'https://d4p17acsd5wyj.cloudfront.net/shortcuts/cuisines/pizza.png', 1);
INSERT INTO CATEGORIA (ID_CATEGORIA, CATEGORIA, ICONE, ORDEM) VALUES (2, 'Lanches', 'https://d4p17acsd5wyj.cloudfront.net/shortcuts/cuisines/burger.png', 2);
INSERT INTO CATEGORIA (ID_CATEGORIA, CATEGORIA, ICONE, ORDEM) VALUES (3, 'Mercado', 'https://d4p17acsd5wyj.cloudfront.net/shortcuts/grocery.png', 3);
INSERT INTO CATEGORIA (ID_CATEGORIA, CATEGORIA, ICONE, ORDEM) VALUES (4, 'Bebidas', 'https://d4p17acsd5wyj.cloudfront.net/shortcuts/alcohol.png', 4);
INSERT INTO CATEGORIA (ID_CATEGORIA, CATEGORIA, ICONE, ORDEM) VALUES (5, 'Fast food', 'https://d4p17acsd5wyj.cloudfront.net/shortcuts/cuisines/fastfood.png', 5);
INSERT INTO CATEGORIA (ID_CATEGORIA, CATEGORIA, ICONE, ORDEM) VALUES (6, 'Doces', 'https://d4p17acsd5wyj.cloudfront.net/shortcuts/cuisines/dessert.png', 6);
INSERT INTO CATEGORIA (ID_CATEGORIA, CATEGORIA, ICONE, ORDEM) VALUES (7, 'Sushi', 'https://d4p17acsd5wyj.cloudfront.net/shortcuts/cuisines/sushi.png', 7);
INSERT INTO CATEGORIA (ID_CATEGORIA, CATEGORIA, ICONE, ORDEM) VALUES (8, 'Padaria', 'https://d4p17acsd5wyj.cloudfront.net/shortcuts/cuisines/bakery.png', 8);
INSERT INTO CATEGORIA (ID_CATEGORIA, CATEGORIA, ICONE, ORDEM) VALUES (9, 'Churrasco', 'https://d4p17acsd5wyj.cloudfront.net/shortcuts/cuisines/bbq.png', 9);
INSERT INTO CATEGORIA (ID_CATEGORIA, CATEGORIA, ICONE, ORDEM) VALUES (10, 'Saudável', 'https://d4p17acsd5wyj.cloudfront.net/shortcuts/cuisines/healthy.png', 10);

-- Table: DESTAQUE
CREATE TABLE IF NOT EXISTS DESTAQUE (
    ID_DESTAQUE INTEGER NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    ID_EMPRESA  INTEGER,
    ORDEM       INTEGER,
    FOREIGN KEY (
        ID_EMPRESA
    )
    REFERENCES EMPRESA (ID_EMPRESA) 
);

INSERT INTO DESTAQUE (ID_DESTAQUE, ID_EMPRESA, ORDEM) VALUES (1, 3, 1);
INSERT INTO DESTAQUE (ID_DESTAQUE, ID_EMPRESA, ORDEM) VALUES (2, 1, 2);
INSERT INTO DESTAQUE (ID_DESTAQUE, ID_EMPRESA, ORDEM) VALUES (3, 5, 3);

-- Table: EMPRESA
CREATE TABLE IF NOT EXISTS EMPRESA (
    ID_EMPRESA      INTEGER         NOT NULL
                                    PRIMARY KEY AUTOINCREMENT,
    NOME            VARCHAR (200),
    FOTO            VARCHAR (1000),
    ICONE           VARCHAR (1000),
    ID_CATEGORIA    INTEGER,
    VL_TAXA_ENTREGA DECIMAL (12, 2),
    ENDERECO        VARCHAR (100),
    COMPLEMENTO     VARCHAR (50),
    BAIRRO          VARCHAR (50),
    CIDADE          VARCHAR (50),
    UF              VARCHAR (2),
    CEP             VARCHAR (10),
    FOREIGN KEY (
        ID_CATEGORIA
    )
    REFERENCES CATEGORIA (ID_CATEGORIA) 
);

INSERT INTO EMPRESA (ID_EMPRESA, NOME, FOTO, ICONE, ID_CATEGORIA, VL_TAXA_ENTREGA, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP) VALUES (1, 'McDonald''s', 'https://static-images.ifood.com.br/image/upload//capa/2b988c51-d3c3-4a8d-b39d-2f35153a6a0c/202104062010_vScH_m@2x.png', 'http://files.99coders.com.br/images/mcdonalds.jpg', 2, 5, 'Av. Paulista, 1500', 'Terreo', 'Paraiso', 'São Paulo', 'SP', '05821-000');
INSERT INTO EMPRESA (ID_EMPRESA, NOME, FOTO, ICONE, ID_CATEGORIA, VL_TAXA_ENTREGA, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP) VALUES (2, 'Black Dog', 'https://static-images.ifood.com.br/image/upload//capa/cd1b9efa-c98d-4d0f-8c1a-0595beac2594/202010302314_y044_i@2x.jpg', 'http://files.99coders.com.br/images/blackdog.jpg', 2, 7, 'Rua Bresser, 2814', NULL, 'Mooca', 'São Paulo', 'SP', '03162-030');
INSERT INTO EMPRESA (ID_EMPRESA, NOME, FOTO, ICONE, ID_CATEGORIA, VL_TAXA_ENTREGA, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP) VALUES (3, 'Burger King', 'https://www.ifood.com.br/static/images/merchant/banner/DEFAULT.png', 'https://static-images.ifood.com.br/image/upload/t_thumbnail/logosgde/ae3b42bf-7be3-4894-b5c6-0886af172256_BURGE_TIET01.jpg', 2, 3, 'Av. Morvan Dias de Figueiredo, 3177', NULL, 'Vila Guilherme', 'São Paulo', 'SP', '02063-902');
INSERT INTO EMPRESA (ID_EMPRESA, NOME, FOTO, ICONE, ID_CATEGORIA, VL_TAXA_ENTREGA, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP) VALUES (4, 'The Fifties', 'https://static-images.ifood.com.br/image/upload//capa/8e2d2ac3-0383-4d8a-9618-aabdde9e7f97/202103221328_SJNN_c@2x.jpg', 'https://static-images.ifood.com.br/image/upload/t_thumbnail/logosgde/8e2d2ac3-0383-4d8a-9618-aabdde9e7f97/201904221316_vlN3_l.png', 2, 10, 'Travessa Casalbuono, 120', 'Loja 15', 'Vila Guilherme', 'São Paulo', 'SP', '05874-000');
INSERT INTO EMPRESA (ID_EMPRESA, NOME, FOTO, ICONE, ID_CATEGORIA, VL_TAXA_ENTREGA, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP) VALUES (5, 'Coco Bambu', 'https://static-images.ifood.com.br/image/upload//capa/4cdd2e7d-36b6-47e3-b435-428a77a7d967/202006301029_g9pc_c@2x.png', 'https://static-images.ifood.com.br/image/upload/t_thumbnail/logosgde/4cdd2e7d-36b6-47e3-b435-428a77a7d967/202104051028_0Lgp_.jpeg', 10, 7, 'Rua Azevedo Soares, 2150', NULL, 'Vila Gomes Cardim', 'São Paulo', 'SP', '45850-102');
INSERT INTO EMPRESA (ID_EMPRESA, NOME, FOTO, ICONE, ID_CATEGORIA, VL_TAXA_ENTREGA, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP) VALUES (6, 'Griletto', 'https://static-images.ifood.com.br/image/upload//capa/dd00250f-0d7d-4870-8535-141bd49401f8/202003251651_oM1F_c@2x.jpg', 'https://static-images.ifood.com.br/image/upload/t_thumbnail/logosgde/202006160729_dd00250f-0d7d-4870-8535-141bd49401f8.jpg', 9, 5, 'Av. Cruzeiro do Sul, 1100', NULL, 'Canindé', 'São Paulo', 'SP', '54214-850');
INSERT INTO EMPRESA (ID_EMPRESA, NOME, FOTO, ICONE, ID_CATEGORIA, VL_TAXA_ENTREGA, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP) VALUES (7, 'Habib''s', 'https://static-images.ifood.com.br/image/upload//capa/6f9edc7e-b983-475b-8037-005825ba5547/202102240952_NKL3_c@2x.jpg', 'https://static-images.ifood.com.br/image/upload/t_thumbnail/logosgde/6f9edc7e-b983-475b-8037-005825ba5547/202103031112_Vus1_i.jpg', 5, 3, 'Av Paes de Barros, 251', NULL, 'Mooca', 'São Paulo', 'SP', '52412-350');
INSERT INTO EMPRESA (ID_EMPRESA, NOME, FOTO, ICONE, ID_CATEGORIA, VL_TAXA_ENTREGA, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP) VALUES (8, 'Popeyes', 'https://internal.popeyesbrasil.com.br/storage/uploads/00000000088.png', 'https://static-images.ifood.com.br/image/upload/t_thumbnail/logosgde/202007291117_9d555bd6-30d9-4f29-845b-66e333edf840.png', 5, 4, 'Rua Goncalves Crespo, 78', NULL, 'Tatuapé', 'Campinas', 'SP', '41254-630');
INSERT INTO EMPRESA (ID_EMPRESA, NOME, FOTO, ICONE, ID_CATEGORIA, VL_TAXA_ENTREGA, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP) VALUES (9, 'Poke House', 'https://static-images.ifood.com.br/image/upload//capa/b73107a5-8ea9-4660-9d6f-8dd7a1aa011f/202103121521_Yvni_p@2x.png', 'https://static-images.ifood.com.br/image/upload/t_thumbnail/logosgde/b73107a5-8ea9-4660-9d6f-8dd7a1aa011f/202102151617_UBzw_i.png', 7, 5, 'Rua Pero Neto, 80', NULL, 'Vila da Saúde', 'São Paulo', 'SP', '02541-850');
INSERT INTO EMPRESA (ID_EMPRESA, NOME, FOTO, ICONE, ID_CATEGORIA, VL_TAXA_ENTREGA, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP) VALUES (10, 'Pop Vegan Food', 'https://static-images.ifood.com.br/image/upload//capa/006edb23-ddc3-4672-964c-aad30ed26779/202108021917_eSEW_a@2x.jpg', 'https://static-images.ifood.com.br/image/upload/t_thumbnail/logosgde/006edb23-ddc3-4672-964c-aad30ed26779/201911051628_ZsZa_i.png', 10, 5, 'R. Fernando de Albuquerque, 144', NULL, 'Consolação', 'São Paulo', 'SP', '57852-000');
INSERT INTO EMPRESA (ID_EMPRESA, NOME, FOTO, ICONE, ID_CATEGORIA, VL_TAXA_ENTREGA, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP) VALUES (11, 'Bonjour Dona Helena', 'https://static-images.ifood.com.br/image/upload//capa/46f8e654-84f7-4be7-b888-c45bbba2c149/201903011945_slide@2x.jpg', 'https://static-images.ifood.com.br/image/upload/t_thumbnail/logosgde/27451313-e814-4a9d-9dcf-eebc7162efc0_BONJO_ELENA.jpg', 8, 3.5, 'R: Julio de Castilhos, 977', NULL, 'Belenzinho', 'São Paulo', 'SP', '03015-960');
INSERT INTO EMPRESA (ID_EMPRESA, NOME, FOTO, ICONE, ID_CATEGORIA, VL_TAXA_ENTREGA, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP) VALUES (12, 'Pizza Hut', 'https://www.folhadealphaville.com.br/images/articles/5643/b2ap3_large_b2ap3_amp_pizzahutwe_20201005-111334_1.jpg', 'http://files.99coders.com.br/images/pizzahut.png', 1, 6, 'Rua Guarani, 266', NULL, 'Centro', 'Campinas', 'SP', '52140-520');

-- Table: PEDIDO
CREATE TABLE IF NOT EXISTS PEDIDO (
    ID_PEDIDO       INTEGER         NOT NULL
                                    PRIMARY KEY AUTOINCREMENT,
    ID_USUARIO      INTEGER,
    ID_EMPRESA      INTEGER,
    VL_SUBTOTAL     DECIMAL (12, 2),
    VL_TAXA_ENTREGA DECIMAL (12, 2),
    VL_TOTAL        DECIMAL (12, 2),
    DT_PEDIDO       DATETIME,
    STATUS          CHAR (1),-- P (Em Produção), F (Finalizado)
    FOREIGN KEY (
        ID_USUARIO
    )
    REFERENCES USUARIO (ID_USUARIO),
    FOREIGN KEY (
        ID_EMPRESA
    )
    REFERENCES EMPRESA (ID_EMPRESA) 
);

INSERT INTO PEDIDO (ID_PEDIDO, ID_USUARIO, ID_EMPRESA, VL_SUBTOTAL, VL_TAXA_ENTREGA, VL_TOTAL, DT_PEDIDO, STATUS) VALUES (1, NULL, 1, 50, 10, 60, '2024-08-01 16:33:00', 'P');
INSERT INTO PEDIDO (ID_PEDIDO, ID_USUARIO, ID_EMPRESA, VL_SUBTOTAL, VL_TAXA_ENTREGA, VL_TOTAL, DT_PEDIDO, STATUS) VALUES (2, NULL, 2, 25, 5, 30, '2024-08-01 09:40:00', 'P');

-- Table: PEDIDO_ITEM
CREATE TABLE IF NOT EXISTS PEDIDO_ITEM (
    ID_ITEM     INTEGER         NOT NULL
                                PRIMARY KEY AUTOINCREMENT,
    ID_PEDIDO   INTEGER,
    ID_PRODUTO  INTEGER,
    OBS         VARCHAR (500),
    QTD         INT,
    VL_UNITARIO DECIMAL (12, 2),
    VL_TOTAL    DECIMAL (12, 2),
    FOREIGN KEY (
        ID_PEDIDO
    )
    REFERENCES PEDIDO (ID_PEDIDO),
    FOREIGN KEY (
        ID_PRODUTO
    )
    REFERENCES PRODUTO (ID_PRODUTO) 
);

INSERT INTO PEDIDO_ITEM (ID_ITEM, ID_PEDIDO, ID_PRODUTO, OBS, QTD, VL_UNITARIO, VL_TOTAL) VALUES (1, 1, 6, 'Não quero picles', 2, 25, 50);
INSERT INTO PEDIDO_ITEM (ID_ITEM, ID_PEDIDO, ID_PRODUTO, OBS, QTD, VL_UNITARIO, VL_TOTAL) VALUES (2, 2, 1, NULL, 1, 35, 35);
INSERT INTO PEDIDO_ITEM (ID_ITEM, ID_PEDIDO, ID_PRODUTO, OBS, QTD, VL_UNITARIO, VL_TOTAL) VALUES (3, 2, 4, NULL, 2, 20, 40);

-- Table: PRODUTO
CREATE TABLE IF NOT EXISTS PRODUTO (
    ID_PRODUTO   INTEGER         NOT NULL
                                 PRIMARY KEY AUTOINCREMENT,
    ID_EMPRESA   INTEGER,
    ID_CATEGORIA INTEGER,
    NOME         VARCHAR (100),
    DESCRICAO    VARCHAR (500),
    ICONE        VARCHAR (1000),
    VL_PRODUTO   DECIMAL (12, 2),
    IND_ATIVO    CHAR (1),
    FOREIGN KEY (
        ID_EMPRESA
    )
    REFERENCES EMPRESA (ID_EMPRESA),
    FOREIGN KEY (
        ID_CATEGORIA
    )
    REFERENCES PRODUTO_CATEGORIA (ID_CATEGORIA) 
);

INSERT INTO PRODUTO (ID_PRODUTO, ID_EMPRESA, ID_CATEGORIA, NOME, DESCRICAO, ICONE, VL_PRODUTO, IND_ATIVO) VALUES (1, 2, 1, 'Hot Dog Maximus Fomão', 'Tradicional Fomao, 2 salsichas hot dog comum, milho, vinagrete, batata palha, maionese, purê, orégano, curry, parmesão, cheddar ou requeijão, pepperoni e marinara mexicana, e coberto por uma deliciosa crosta de parmesão.', 'https://static-images.ifood.com.br/image/upload/t_medium/pratos/cd1b9efa-c98d-4d0f-8c1a-0595beac2594/202108112007_P5N0_i.jpg', 14.9, 'S');
INSERT INTO PRODUTO (ID_PRODUTO, ID_EMPRESA, ID_CATEGORIA, NOME, DESCRICAO, ICONE, VL_PRODUTO, IND_ATIVO) VALUES (2, 2, 1, 'Black Dog Cheddar Bacon', '2 Salsichas hot dog, Cheddar, Bacon, Curry e Oregano', 'https://static-images.ifood.com.br/image/upload/t_medium/pratos/cd1b9efa-c98d-4d0f-8c1a-0595beac2594/202108111938_3QAO_i.jpg', 22.9, 'S');
INSERT INTO PRODUTO (ID_PRODUTO, ID_EMPRESA, ID_CATEGORIA, NOME, DESCRICAO, ICONE, VL_PRODUTO, IND_ATIVO) VALUES (3, 2, 1, 'Black Hot Dog Vinagrete', '2 Salsichas Hot Dog, Purê Vinagrete, Curry e Bacon', 'https://static-images.ifood.com.br/image/upload/t_medium/pratos/cd1b9efa-c98d-4d0f-8c1a-0595beac2594/202108111948_4R48_i.jpg', 30, 'S');
INSERT INTO PRODUTO (ID_PRODUTO, ID_EMPRESA, ID_CATEGORIA, NOME, DESCRICAO, ICONE, VL_PRODUTO, IND_ATIVO) VALUES (4, 2, 1, 'Black Hot Dog Vinagrete', '2 Salsichas Hot Dog, Purê Vinagrete, Curry e Bacon', 'https://static-images.ifood.com.br/image/upload/t_medium/pratos/cd1b9efa-c98d-4d0f-8c1a-0595beac2594/202108111948_4R48_i.jpg', 19.9, 'S');
INSERT INTO PRODUTO (ID_PRODUTO, ID_EMPRESA, ID_CATEGORIA, NOME, DESCRICAO, ICONE, VL_PRODUTO, IND_ATIVO) VALUES (5, 2, 2, 'Coca-Cola Lata', 'Coca-cola lata 330ml trincando de gelada', 'https://static.ifood-static.com.br/image/upload/t_low/pratos/820af392-002c-47b1-bfae-d7ef31743c7f/202210200237_btcjxya1zoh.jpg', 8, 'S');
INSERT INTO PRODUTO (ID_PRODUTO, ID_EMPRESA, ID_CATEGORIA, NOME, DESCRICAO, ICONE, VL_PRODUTO, IND_ATIVO) VALUES (6, 1, 3, 'McOferta Big mac', 'Dois hambúrgueres, alface, queijo e molho especial, cebola e picles num pão com gergelim, acompanhamento e bebida', 'https://static-images.ifood.com.br/image/upload/t_medium/pratos/2b988c51-d3c3-4a8d-b39d-2f35153a6a0c/202108180417_xddjha30j6g.png', 49, 'S');
INSERT INTO PRODUTO (ID_PRODUTO, ID_EMPRESA, ID_CATEGORIA, NOME, DESCRICAO, ICONE, VL_PRODUTO, IND_ATIVO) VALUES (7, 11, 4, 'Pizza Quatro Queijos', 'Tradicional pizza de Catupiry, Mussarela, Provolone e Gorgonzola', 'https://static-images.ifood.com.br/image/upload/t_medium/pratos/ecfe7e9b-bdcc-4bdb-b919-833ad0c63675/201910251911_18jQ_f.jpg', 45, 'S');

-- Table: PRODUTO_CATEGORIA
CREATE TABLE IF NOT EXISTS PRODUTO_CATEGORIA (
    ID_CATEGORIA INTEGER       NOT NULL
                               PRIMARY KEY AUTOINCREMENT,
    ID_EMPRESA   INTEGER,
    CATEGORIA    VARCHAR (100),
    ORDEM        INTEGER,
    FOREIGN KEY (
        ID_EMPRESA
    )
    REFERENCES EMPRESA (ID_EMPRESA) 
);

INSERT INTO PRODUTO_CATEGORIA (ID_CATEGORIA, ID_EMPRESA, CATEGORIA, ORDEM) VALUES (1, 2, 'Dogs Individuais', 1);
INSERT INTO PRODUTO_CATEGORIA (ID_CATEGORIA, ID_EMPRESA, CATEGORIA, ORDEM) VALUES (2, 2, 'Bebidas', 2);
INSERT INTO PRODUTO_CATEGORIA (ID_CATEGORIA, ID_EMPRESA, CATEGORIA, ORDEM) VALUES (3, 1, 'Ofertas', 1);
INSERT INTO PRODUTO_CATEGORIA (ID_CATEGORIA, ID_EMPRESA, CATEGORIA, ORDEM) VALUES (4, 11, 'Pizzas', 1);

-- Table: USUARIO
CREATE TABLE IF NOT EXISTS USUARIO (
    ID_USUARIO  INTEGER       NOT NULL
                              PRIMARY KEY AUTOINCREMENT,
    NOME        VARCHAR (100),
    EMAIL       VARCHAR (100),
    SENHA       VARCHAR (100),
    ENDERECO    VARCHAR (100),
    COMPLEMENTO VARCHAR (50),
    BAIRRO      VARCHAR (50),
    CIDADE      VARCHAR (50),
    UF          VARCHAR (2),
    CEP         VARCHAR (10),
    DT_CADASTRO DATETIME
);

INSERT INTO USUARIO (ID_USUARIO, NOME, EMAIL, SENHA, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP, DT_CADASTRO) VALUES (1, 'João Pedro de Souza Jorge', 'jpedrojorge@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO USUARIO (ID_USUARIO, NOME, EMAIL, SENHA, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP, DT_CADASTRO) VALUES (5, 'Gabriel MataPorcu', 'gabriel@gmail.com', 'bixarada123', 'Rua Marques de São Vicente, 501', '', 'Jardim das Mangueiras', 'São Paulo', 'SP', '1741-0007', '2024-10-09 12:46:14');
INSERT INTO USUARIO (ID_USUARIO, NOME, EMAIL, SENHA, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP, DT_CADASTRO) VALUES (6, 'Gabriel MataPorcu', 'gabriel@gmail.com', 'bixarada123', 'Rua Marques de São Vicente, 501', '', 'Jardim das Mangueiras', 'São Paulo', 'SP', '1741-0007', '2024-10-09 13:09:20');
INSERT INTO USUARIO (ID_USUARIO, NOME, EMAIL, SENHA, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP, DT_CADASTRO) VALUES (7, 'Gabriel MataPorcu', 'gabriel@gmail.com', 'bixarada123', 'Rua Marques de São Vicente, 501', '', 'Jardim das Mangueiras', 'São Paulo', 'SP', '1741-0007', '2024-10-09 13:11:41');
INSERT INTO USUARIO (ID_USUARIO, NOME, EMAIL, SENHA, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP, DT_CADASTRO) VALUES (8, 'Gabriel MataPorcu', 'gabriel@gmail.com', 'bixarada123', 'Rua Marques de São Vicente, 501', '', 'Jardim das Mangueiras', 'São Paulo', 'SP', '1741-0007', '2024-10-09 13:13:30');
INSERT INTO USUARIO (ID_USUARIO, NOME, EMAIL, SENHA, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP, DT_CADASTRO) VALUES (9, 'Gabriel MataPorcu', 'gabriel@gmail.com', 'bixarada123', 'Rua Marques de São Vicente, 501', '', 'Jardim das Mangueiras', 'São Paulo', 'SP', '1741-0007', '2024-10-09 13:22:19');
INSERT INTO USUARIO (ID_USUARIO, NOME, EMAIL, SENHA, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP, DT_CADASTRO) VALUES (10, 'Gabriel MataPorcu', 'gabriel@gmail.com', '$2b$10$v4iZCSyHrkc2cUuQv8AGEOVs31fWiBvitqd7VHOdXL.opOtlIC8qm', 'Rua Marques de São Vicente, 501', '', 'Jardim das Mangueiras', 'São Paulo', 'SP', '1741-0007', '2024-10-09 14:01:15');

-- Table: USUARIO_FAVORITO
CREATE TABLE IF NOT EXISTS USUARIO_FAVORITO (
    ID_FAVORITO INTEGER NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    ID_USUARIO  INTEGER,
    ID_EMPRESA  INTEGER,
    FOREIGN KEY (
        ID_USUARIO
    )
    REFERENCES USUARIO (ID_USUARIO),
    FOREIGN KEY (
        ID_EMPRESA
    )
    REFERENCES EMPRESA (ID_EMPRESA) 
);

INSERT INTO USUARIO_FAVORITO (ID_FAVORITO, ID_USUARIO, ID_EMPRESA) VALUES (1, 1, 1);
INSERT INTO USUARIO_FAVORITO (ID_FAVORITO, ID_USUARIO, ID_EMPRESA) VALUES (2, 1, 7);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
