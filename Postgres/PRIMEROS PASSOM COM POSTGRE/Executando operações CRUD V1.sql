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

INSERT INTO aluno(
	nome,
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	dt_nascimento,
	hora_aula,
	matriculado_em
)
VALUES(
	'Lucas',
	'12345678901',
	'Esquecer é uma necessidade. A vida é uma lousa, em que o destino, para escrever um novo caso, precisa de apagar o caso escrito. - machado de assis',
	22,
	511487.50,
	1.76,
	TRUE,
	'2002-05-11',
	'16:53:00',
	'2025-04-09 16:54:00'
);

