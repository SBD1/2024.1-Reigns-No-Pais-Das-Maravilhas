-- --------------------------------------------------------------------------------------
-- Data Criacao ...........: 20/08/2024                                                --
-- Autor(es) ..............: [Kauan Eiras]                                             --
-- Versao .................: 1.0                                                       --
-- Banco de Dados .........: PostgreSQL                                                --
-- Descricao ..............: Inclusão de CREATE TABLE para todas as tabelas do jogo Reigns. --
-- --------------------------------------------------------------------------------------
-- ALTERAÇÕES 
-- --------------------------------------------------------------------------------------
-- DATA   | AUTOR   | DESCRICAO                                                        --
-- --------------------------------------------------------------------------------------
-- 20/08  | Kauan   | Criação do arquivo DDL.sql com as tabelas do jogo Reigns.        --
-- --------------------------------------------------------------------------------------
-- 07/09 | Kauan   | Atualização das  tabelas.                                         --
-- --------------------------------------------------------------------------------------

BEGIN TRANSACTION;

-- Criação da tabela End
CREATE TABLE End (
    end_id SERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    description VARCHAR(300)
);

-- Criação da tabela Adventure
CREATE TABLE Adventure (
    adventure_id SERIAL PRIMARY KEY,
    queen INT DEFAULT 50,
    popularity INT DEFAULT 50,
    health INT DEFAULT 50,
    size INT DEFAULT 50,
    end_id INT,
    FOREIGN KEY (end_id) REFERENCES End(end_id)
);

-- Criação da tabela Deck
CREATE TABLE Deck (
    deck_id SERIAL PRIMARY KEY,
    start_card_id INT,
    end_card_id INT
);

-- Criação da tabela Normal (especialização de Deck)
CREATE TABLE Normal (
    deck_id INT PRIMARY KEY,
    status BOOLEAN DEFAULT FALSE,
    start_card_id INT,
    end_card_id INT,
    FOREIGN KEY (deck_id) REFERENCES Deck(deck_id)
);

-- Criação da tabela Event (especialização de Deck)
CREATE TABLE Event (
    deck_id INT PRIMARY KEY,
    attempt INT DEFAULT 0,
    start_card_id INT,
    end_card_id INT,
    FOREIGN KEY (deck_id) REFERENCES Deck(deck_id)
);

-- Criação da tabela Scene
CREATE TABLE Scene (
    scene_id SERIAL PRIMARY KEY,
    image BYTEA,
    name VARCHAR(50) NOT NULL
);

-- Criação da tabela Dialogue
CREATE TABLE Dialogue (
    dialogue_id SERIAL PRIMARY KEY,
    description VARCHAR(300), 
    answer_left VARCHAR(300),
    answer_right VARCHAR(300)
);

-- Criação da tabela Item
CREATE TABLE Item (
    item_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    icon VARCHAR(150),
    status BOOLEAN DEFAULT FALSE
);

-- Criação da tabela Resource
CREATE TABLE Resource (
    resource_id SERIAL PRIMARY KEY,
    queen INT DEFAULT 0,
    popularity INT DEFAULT 0,
    health INT DEFAULT 0,
    size INT DEFAULT 0
);

-- Criação da tabela Card
CREATE TABLE Card (
    card_id SERIAL PRIMARY KEY,
    scene_id INT,
    dialogue_id INT,
    left_next_card INT,
    right_next_card INT,
    left_resource INT,
    right_resource INT,
    item_id INT,
    FOREIGN KEY (scene_id) REFERENCES Scene(scene_id),
    FOREIGN KEY (dialogue_id) REFERENCES Dialogue(dialogue_id),
    FOREIGN KEY (left_next_card) REFERENCES Card(card_id),
    FOREIGN KEY (right_next_card) REFERENCES Card(card_id),
    FOREIGN KEY (left_resource) REFERENCES Resource(resource_id),
    FOREIGN KEY (right_resource) REFERENCES Resource(resource_id),
    FOREIGN KEY (item_id) REFERENCES Item(item_id)
);

COMMIT;