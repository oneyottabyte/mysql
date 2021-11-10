# mysql
![image](https://user-images.githubusercontent.com/59287246/141045761-b331522c-e92d-4d3b-b0ec-0257e9aaffcf.png)


Fundamentos de banco de dados relacionais com MySQL Workbench

## EXERCÍCIO

Criar uma tabela de Estados com id, nome, sigla(utilizar ENUM), região utilizar ENUM (), população.
- Id deve ser a PK
- nome campo único
- Inserir 10 estados (dois de cada região) [ Coloquei todos ;D ] 
- Listar estados ordenando por sigla
- Encontrar a população total de cada região
- Encontrar a média da população por região
- Agrupar estados por região

## CRIAÇÃO DA TABELA

![image](https://user-images.githubusercontent.com/59287246/141046243-2a0d873b-29d7-48f6-9fba-45ba74a14f47.png)

```
create table estados (
id int unsigned NOT NULL auto_increment,
nome varchar(50) NOT NULL,
sigla enum(
	'AC','AL','AP','AM','BA','CE','DF','ES','GO',
	'MA','MT','MS','MG','PA','PB','PR','PE','PI',
	'RJ','RN','RS','RO','RR','SC','SP','SE','TO') NOT NULL,
regiao enum(
	'NORTE',
	'NORDESTE',
	'CENTRO-OESTE',
	'SUDESTE',
	'SUL') NOT NULL,
populacao int NOT NULL,
UNIQUE KEY(nome),
primary key(id)
);
```

## CRIAÇÃO DA TABELA PELO GERADOR AUTOMATICO DO MYSQL
```
CREATE TABLE IF NOT EXISTS `mydb`.`estados` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `sigla` ENUM('AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO') NOT NULL,
  `regiao` ENUM('NORTE', 'NORDESTE', 'CENTRO-OESTE', 'SUDESTE', 'SUL') NOT NULL,
  `populacao` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC) VISIBLE)
ENGINE = InnoDB
```
## INSERINDO ESTADOS

```
INSERT INTO 
	estados(nome, sigla, regiao,populacao)
values
	('ACRE','AC','NORTE',906876),
	('AMAZONAS','AM','NORTE', 4269995),
    ('AMAPÁ','AP','NORTE',877613),
    ('PARÁ','PA','NORTE',8777124),
    ('RONDÔNIA','RO','NORTE',1815278),
    ('RORAIMA','RR','NORTE',652713),
    ('TOCANTINS','TO','NORTE',1607363),
    ('ALAGOAS','AL','NORDESTE',3365351),
    ('BAHIA','BA','NORDESTE',14985284),
    ('CEARÁ','CE','NORDESTE',9240580),
    ('MARANHÃO','MA','NORDESTE',7153262),
    ('PARAÍBA','PB','NORDESTE',4059905),
    ('PERNANBUCO','PE','NORDESTE',9674793),
    ('PIAUÍ','PI','NORDESTE',3289290),
    ('RIO GRANDE DO NORTE','RN','NORDESTE',3560903),
    ('SERGIPE','SE','NORDESTE',2338474),
    ('GOIAS','GO','CENTRO-OESTE',7206589),
    ('DISTRITO FEDERAL','DF','CENTRO-OESTE',3094325),
    ('MATO GROSSO','MT','CENTRO-OESTE',3567234),
    ('MATO GROSSO DO SUL','MS','CENTRO-OESTE',2839188),
    ('ESPÍRITO SANTO','ES','SUDESTE',4108508),
    ('MINAS GERAIS','MG','SUDESTE',21411923),
    ('SÃO PAULO','SP','SUDESTE',46649132),
    ('RIO DE JANEIRO','RJ','SUDESTE',17463349),
    ('PARANÁ','PR','SUL',11597484),
    ('RIO GRANDE DO SUL','RS','SUL',11466630),
    ('SANTA CATARINA','SC','SUL',7338473);
```

## LISTANDO ESTADOS ORDENANDO POR SIGLA

```
SELECT * FROM panacademy.estados ORDER BY sigla;
```

## EXIBINDO POPULAÇÃO TOTAL DE CADA REGIÃO

```
SELECT regiao, SUM(populacao) AS populacao FROM panacademy.estados GROUP BY regiao;
```

## EXIBINDO A MEDIA DA POPULAÇÃO POR REGIÃO

```
SELECT regiao, AVG(populacao) AS populacao FROM panacademy.estados GROUP BY regiao;
```

## AGRUPANDO ESTADOS POR REGIÃO

```
SELECT * FROM panacademy.estados ORDER BY regiao;
```
## ✒️ AUTOR

* **Dorian** - [Dorian Vieira](https://github.com/oneyottabyte)


## 🎁 EXPRESSÕES DE GRATIDÃO

* Obrigado Banco Pan e Gama Project por esse aprendizado!:punch::punch:
* Obrigado Jenifer, Ana e Jonathan, meus queridos professores! 🤓
* Conte a outras pessoas sobre este projeto 📢

<p align="center">
<img src="https://user-images.githubusercontent.com/92064386/138007193-47cac947-928e-4909-a299-0ae99b35eed9.png" width="200"/> <img src="https://user-images.githubusercontent.com/92064386/138007156-3ae6e393-a770-4bf7-85cb-9f9d390fb118.png" width="350"/>
 </p>
