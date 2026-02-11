-- Criar o banco de dados
CREATE DATABASE escola;
USE escola;

-- Tabela de alunos
CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    cpf VARCHAR(14) UNIQUE,
    email VARCHAR(100)
);

-- Tabela de professores
CREATE TABLE professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100),
    email VARCHAR(100)
);

-- Tabela de disciplinas
CREATE TABLE disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT
);

-- Tabela de turmas
CREATE TABLE turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    ano INT NOT NULL,
    semestre INT NOT NULL,
    id_disciplina INT,
    id_professor INT,
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina),
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

-- Tabela de matrículas (relação aluno x turma)
CREATE TABLE matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_turma INT,
    data_matricula DATE,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma)
);

-- Tabela de notas
CREATE TABLE notas (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    id_matricula INT,
    nota DECIMAL(5,2),
    FOREIGN KEY (id_matricula) REFERENCES matriculas(id_matricula)
);
