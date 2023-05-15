-- Criando tabela Aluno
CREATE TABLE aluno(
 id bigint unsigned NOT NULL AUTO_INCREMENT,
 nome varchar(255) NOT NULL,
 PRIMARY KEY(id)
)

-- Criando tabela Responsavel
CREATE TABLE responsavel(
 id bigint unsigned NOT NULL AUTO_INCREMENT,
 nome varchar(255) NOT NULL,
 PRIMARY KEY(id)
)

-- Criando tabela Parentesco
CREATE TABLE parentesco(
 id bigint unsigned NOT NULL AUTO_INCREMENT,
 idResponsavel bigint unsigned NOT NULL,
 idAluno bigint unsigned NOT NULL,
 parentesco varchar(255) NOT NULL,
 PRIMARY KEY (id),
 foreign key (idAluno) references responsavel(id),
 foreign key (idAluno) references aluno(id)
)

-- Exercicio 1 -> Adicionando Dados
INSERT INTO aluno (nome) VALUES ("Lucas")
INSERT INTO responsavel  (nome) VALUES ("Pablo")
INSERT INTO responsavel  (nome) VALUES ("Brenda")
INSERT INTO parentesco (idResponsavel, idAluno, parentesco) VALUES 
((select id from responsavel r  where nome = "Pablo"), (select id from aluno where nome = "Lucas"), "Pai")
INSERT INTO parentesco (idResponsavel, idAluno, parentesco) 
VALUES ((select id from responsavel r  where nome = "Brenda"), (select id from aluno where nome = "Lucas"), "Mãe")


-- Exercicio 2 -> Consultar dados
SELECT 
	a.nome,
	(select r.nome 
	from responsavel r
	join parentesco p on r.id = p.idResponsavel 
	join responsavel a on a.id = p.idAluno
	LIMIT 1
	) as Responsável,
	(select p.parentesco 
	from responsavel r
	join parentesco p on r.id = p.idResponsavel 
	join responsavel a on a.id = p.idAluno
	LIMIT 1
	) as Parentesco,
	(select r.nome 
	from responsavel r
	join parentesco p on r.id = p.idResponsavel 
	join responsavel a on a.id = p.idAluno
	LIMIT 1,2
	) as Responsável,
	(select p.parentesco 
	from responsavel r
	join parentesco p on r.id = p.idResponsavel 
	join responsavel a on a.id = p.idAluno
	LIMIT 1,2
	) as Parentesco
from aluno a