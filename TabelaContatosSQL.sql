-- Criar tabela de contatos
CREATE TABLE Contatos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    email TEXT,
    telefone TEXT,
    grupo TEXT,
    favorito INTEGER DEFAULT 0
);

-- Inserir dados de contatos
INSERT INTO Contatos (nome, email, telefone, grupo) VALUES
    ('João Silva', 'joao@email.com', '123456789', 'trabalho'),
    ('Maria Santos', 'maria@email.com', '987654321', 'família'),
    ('Pedro Oliveira', 'pedro@email.com', '456123789', 'escola'),
    -- Insira os demais contatos aqui
    ('Ana Souza', 'ana@email.com', '789456123', 'amigo');

-- Buscas com diferentes filtros
-- Buscar todos os contatos
SELECT * FROM Contatos;

-- Buscar contatos de um grupo específico
SELECT * FROM Contatos WHERE grupo = 'trabalho';

-- Buscar contatos favoritos
SELECT * FROM Contatos WHERE favorito = 1;

-- Atualizar registros
-- Atualizar informações de um contato específico
UPDATE Contatos SET email = 'joao_novo@email.com' WHERE nome = 'João Silva';

-- Apagar contato
-- Remover um contato específico
DELETE FROM Contatos WHERE nome = 'Pedro Oliveira';

-- Incluir a opção de favorito
-- Adicionar um contato como favorito
UPDATE Contatos SET favorito = 1 WHERE nome = 'Maria Santos';
