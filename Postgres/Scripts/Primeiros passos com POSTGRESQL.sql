integer
real
serial
numeric

varchar(n)
char(n)
text

boolean

date
time
timestamp


CREATE TABLE aluno(
	id SERIAL,
	nome VARCHAR(255),
	cpf CHAR(11),
	observacao TEXT,
	idade INTEGER,
	dinheiro NUMERIC(10,2),
	altura real,
	ativo BOOLEAN,
	dt_nascimento DATE,
	hora_aula TIME,
	matriculado_em timestamp
);

SELECT * FROM aluno


