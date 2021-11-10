use panacademy;

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
	
SELECT * FROM panacademy.estados ORDER BY sigla;

SELECT regiao, SUM(populacao) AS populacao FROM panacademy.estados GROUP BY regiao;

SELECT regiao, AVG(populacao) AS populacao FROM panacademy.estados GROUP BY regiao;
    
SELECT * FROM panacademy.estados ORDER BY regiao;

    
