DROP TABLE IF EXISTS empregado;
CREATE TABLE IF NOT EXISTS empregado (
	id_empregado INTEGER PRIMARY KEY  AUTOINCREMENT,
	primeiro_nome TEXT NOT NULL,
	ultimo_nome TEXT NOT NULL,
	endereco TEXT NOT NULL,
	sexo TEXT,
	salario REAL
);
INSERT INTO empregado values (null,'Marcos','Mendes','Rua Salmão, 100','m',3000.3);
INSERT INTO empregado values (null,'Sofia','Wong','Avenida Rio Branco, 100','f',3500);
INSERT INTO empregado values (null,'James','Nunes','Rua Salmão, 20','m',4000);
INSERT INTO empregado values (null,'Vitória','Smith','Rua Adhemar de Barros, 3000','f',2000);
INSERT INTO empregado values (null,'Pedro','Santos','Rua Ilha do Sul, 350','m',2000.5);
INSERT INTO empregado values (null,'Alice','Silva','Rua José Antonio, 156','m',3555);


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


