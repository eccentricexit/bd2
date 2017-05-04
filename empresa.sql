sqlite3 empresa

DROP TABLE IF EXISTS empregado;
CREATE TABLE IF NOT EXISTS empregado (
	id_empregado INTEGER PRIMARY KEY  AUTOINCREMENT,
	primeiro_nome TEXT NOT NULL,
	ultimo_nome TEXT NOT NULL,
	endereco TEXT NOT NULL,
	sexo TEXT,
	salario REAL
);

INSERT INTO empregado values (null,'fulano','ciclano','rua das avenidas','m',345.25);

DROP TABLE IF EXISTS dependente;
CREATE TABLE IF NOT EXISTS dependente (
	id_dependente INTEGER PRIMARY KEY  AUTOINCREMENT,
	nome TEXT NOT NULL,
	sexo TEXT NOT NULL,
	parentesco TEXT NOT NULL,
	id_empregado INTEGER,
	
	FOREIGN KEY (id_empregado) REFERENCES empregado(id_empregado)
);

DROP TABLE IF EXISTS trabalha;
CREATE TABLE IF NOT EXISTS trabalha (
	id_trabalha INTEGER PRIMARY KEY  AUTOINCREMENT,
	qtd_horas INTEGER NOT NULL,
	funcao TEXT NOT NULL,
	cod_proj INTEGER NOT NULL,
	id_empregado INTEGER NOT NULL,
	
	FOREIGN KEY (id_empregado) REFERENCES empregado(id_empregado)
		
);

DROP TABLE IF EXISTS projeto;
CREATE TABLE IF NOT EXISTS projeto (
	cod_proj INTEGER PRIMARY KEY AUTOINCREMENT,
	nome TEXT NOT NULL,
	
	FOREIGN KEY (cod_proj) REFERENCES trabalha(cod_proj)
);


