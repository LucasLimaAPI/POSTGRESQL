
DROP TABLE curso;

CREATE TABLE curso (
	id INTEGER PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (1,'HTML');
INSERT INTO curso (id, nome) VALUES (2,'PYTHON');

SELECT * FROM curso;
SELECT * FROM aluno;


DROP TABLE aluno;

CREATE TABLE aluno (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO aluno(nome) VALUES ('Lucas');
INSERT INTO aluno(nome) VALUES ('Helder');

SELECT * FROM curso;
SELECT * FROM aluno;

CREATE TABLE aluno_curso(
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),

	FOREIGN KEY (aluno_id)
	REFERENCES aluno (id),
	
	FOREIGN KEY (curso_id)
	REFERENCES curso (id)
	
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1);


SELECT * FROM aluno WHERE id = 1;
SELECT * FROM curso WHERE id = 1;

SELECT * FROM aluno WHERE id = 2;
SELECT * FROM curso WHERE id = 1;

SELECT * FROM aluno WHERE id = 3;
SELECT * FROM curso WHERE id = 1;


DROP TABLE aluno_curso;


SELECT * FROM aluno;
SELECT * FROM curso;

SELECT aluno.nome as "Nome do Aluno",
	   curso.nome as "Nome do Curso"
	FROM aluno
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	JOIN curso ON curso.id = aluno_curso.curso_id

	INSERT INTO aluno_curso(aluno_id, curso_id) VALUES (2,2);

	INSERT INTO aluno (nome) VALUES ('Fabio');
	INSERT INTO curso (id,nome) VALUES (3,'CSS');
	
/*TEM DADO NA TABELA ALUNO MAS NÃO TEM NA TABELA DE CURSO*/
SELECT aluno.nome as "Nome do Aluno",
	   curso.nome as "Nome do Curso"
	FROM aluno
LEFT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
LEFT JOIN curso ON curso.id = aluno_curso.curso_id


/*TEM DADO NA TABELA DE CURSO MAS NÃO TEM NA DE ALUNO*/
SELECT aluno.nome as "Nome do Aluno",
	   curso.nome as "Nome do Curso"
	FROM aluno
RIGHT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
RIGHT JOIN curso ON curso.id = aluno_curso.curso_id


/*VEM TODOS OS DADOS*/
SELECT aluno.nome as "Nome do Aluno",
	   curso.nome as "Nome do Curso"
	FROM aluno
FULL JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
FULL JOIN curso ON curso.id = aluno_curso.curso_id


/*MISTURA TODOS OS DADOS*/
SELECT aluno.nome as "Nome do Aluno",
	   curso.nome as "Nome do Curso"
	FROM aluno
CROSS JOIN curso 

INSERT INTO aluno (nome) VALUES ('KANANDA')

 


