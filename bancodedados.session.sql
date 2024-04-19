-- Criar a tabela de alunos, se ainda não existir
CREATE TABLE IF NOT EXISTS Alunos (
    ID INTEGER PRIMARY KEY,
    Nome TEXT,
    Idade INTEGER,
    Classe INTEGER,
    Nota REAL
);

-- Limpar a tabela de alunos
DELETE FROM Alunos;

-- Inserir registros na tabela de alunos, ignorando registros duplicados
INSERT OR IGNORE INTO Alunos (Nome, Idade, Classe, Nota) VALUES 
('Lara Pires', 16, 10, 17.5),
('Lara lorenco', 17, 11, 18.2),
('Tomás', 15, 9, 15.9),
('Gonçalo', 17, 10, 18.7),
('Caroll', 15, 8, 13.8),
('Abdaisy', 16, 10, 13.5),
('Miguel', 11, 6, 13.4),
('Jean', 14, 8, 15.6),
('Sofia', 18, 11, 16.3),
('Vishwa', 10, 5, 17.9),
('Eudney', 15, 9, 15.2),
('Guilherme', 16, 10, 14.7),
('Leonardo', 16, 9, 16.5),
('Elson', 15, 10, 16.1);

-- Selecionar todos os alunos
SELECT * FROM Alunos;

-- Selecionar alunos com idade maior que 17
SELECT * FROM Alunos WHERE Idade > 17;

-- Selecionar alunos na Classe 10
SELECT * FROM Alunos WHERE Classe = 10;

-- Calcular a média de todas as notas dos alunos
SELECT AVG(Nota) AS MediaGeral
FROM Alunos;

SELECT Nome, Nota
FROM Alunos
ORDER BY Nota DESC
LIMIT 1;

UPDATE Alunos
SET Nota = 18
WHERE ID = 3;
SELECT Nome, Nota
FROM Alunos;


-- Excluir todos os alunos com idade inferior a 12 anos
DELETE FROM Alunos
WHERE Idade < 12;
SELECT*FROM Alunos;

SELECT Nome, Idade
FROM Alunos
WHERE Idade = (SELECT MIN(Idade) FROM Alunos);






