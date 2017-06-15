--
-- File generated with SQLiteStudio v3.1.1 on Wed Jun 14 23:46:37 2017
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: dependente
DROP TABLE IF EXISTS dependente;

CREATE TABLE dependente (
    id_dependente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome          TEXT    NOT NULL,
    sexo          TEXT    NOT NULL,
    parentesco    TEXT    NOT NULL,
    id_empregado  INTEGER,
    FOREIGN KEY (
        id_empregado
    )
    REFERENCES empregado (id_empregado) 
);

INSERT INTO dependente (id_dependente, nome, sexo, parentesco, id_empregado) VALUES (1, 'Carlos', 'm', 'Filho', 1);
INSERT INTO dependente (id_dependente, nome, sexo, parentesco, id_empregado) VALUES (2, 'Daniel', 'm', 'Filho', 1);
INSERT INTO dependente (id_dependente, nome, sexo, parentesco, id_empregado) VALUES (3, 'Elizabeth', 'f', 'Esposa', 2);
INSERT INTO dependente (id_dependente, nome, sexo, parentesco, id_empregado) VALUES (4, 'Miguel', 'm', 'Filho', 6);
INSERT INTO dependente (id_dependente, nome, sexo, parentesco, id_empregado) VALUES (5, 'Charlie', 'm', 'Marido', 6);

-- Table: empregado
DROP TABLE IF EXISTS empregado;

CREATE TABLE empregado (
    id_empregado  INTEGER PRIMARY KEY AUTOINCREMENT,
    primeiro_nome TEXT    NOT NULL,
    ultimo_nome   TEXT    NOT NULL,
    endereco      TEXT    NOT NULL,
    sexo          TEXT,
    salario       REAL
);

INSERT INTO empregado (id_empregado, primeiro_nome, ultimo_nome, endereco, sexo, salario) VALUES (1, 'Alice', 'Silva', 'Rua José Antonio, 156', 'm', 3555);
INSERT INTO empregado (id_empregado, primeiro_nome, ultimo_nome, endereco, sexo, salario) VALUES (2, 'Marcos', 'Mendes', 'Rua Salmão, 100', 'm', 3000.3);
INSERT INTO empregado (id_empregado, primeiro_nome, ultimo_nome, endereco, sexo, salario) VALUES (3, 'Sofia', 'Wong', 'Avenida Rio Branco, 100', 'f', 3500);
INSERT INTO empregado (id_empregado, primeiro_nome, ultimo_nome, endereco, sexo, salario) VALUES (4, 'James', 'Nunes', 'Rua Salmão, 20', 'm', 4000);
INSERT INTO empregado (id_empregado, primeiro_nome, ultimo_nome, endereco, sexo, salario) VALUES (5, 'Vitória', 'Smith', 'Rua Adhemar de Barros, 3000', 'f', 2000);
INSERT INTO empregado (id_empregado, primeiro_nome, ultimo_nome, endereco, sexo, salario) VALUES (6, 'Pedro', 'Santos', 'Rua Ilha do Sul, 350', 'm', 2000.5);

-- Table: projeto
DROP TABLE IF EXISTS projeto;

CREATE TABLE projeto (
    cod_proj INTEGER PRIMARY KEY
                     NOT NULL,
    nome     TEXT    NOT NULL
);

INSERT INTO projeto (cod_proj, nome) VALUES (100, 'Projeto 1000');
INSERT INTO projeto (cod_proj, nome) VALUES (200, 'Projeto 2000');
INSERT INTO projeto (cod_proj, nome) VALUES (300, 'Projeto 3000');
INSERT INTO projeto (cod_proj, nome) VALUES (400, 'Projeto 4000');

-- Table: trabalha
DROP TABLE IF EXISTS trabalha;

CREATE TABLE trabalha (
    id_trabalha  INTEGER PRIMARY KEY AUTOINCREMENT,
    qtd_horas    INTEGER NOT NULL,
    funcao       TEXT    NOT NULL,
    cod_proj     INTEGER NOT NULL,
    id_empregado INTEGER NOT NULL,
    FOREIGN KEY (
        id_empregado
    )
    REFERENCES empregado (id_empregado) 
);

INSERT INTO trabalha (id_trabalha, qtd_horas, funcao, cod_proj, id_empregado) VALUES (1, 10, 'programador', 100, 1);
INSERT INTO trabalha (id_trabalha, qtd_horas, funcao, cod_proj, id_empregado) VALUES (2, 5, 'analista', 100, 1);
INSERT INTO trabalha (id_trabalha, qtd_horas, funcao, cod_proj, id_empregado) VALUES (3, 5, 'testador', 300, 1);
INSERT INTO trabalha (id_trabalha, qtd_horas, funcao, cod_proj, id_empregado) VALUES (4, 10, 'analista', 400, 1);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
