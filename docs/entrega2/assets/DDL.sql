-- --------------------------------------------------------------------------------------
-- Data Criacao ...........: 20/08/2024                                                --
-- Autor(es) ..............: [Kauan Eiras]                                             --
-- Versao .................: 1.0                                                       --
-- Banco de Dados .........: PostgreSQL                                                --
-- Descricao ..............: Inclusão de CREATE TABLE para todas as tabelas do jogo Reigns. --
-- --------------------------------------------------------------------------------------

BEGIN TRANSACTION;

CREATE TABLE PC (
    id_pc SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    start INT NOT NULL
);

CREATE TABLE End (
    id_end SERIAL PRIMARY KEY,
    cause VARCHAR(255) NOT NULL,
    title VARCHAR(100) NOT NULL,
    about VARCHAR(255) NOT NULL,
    image BYTEA
);

CREATE TABLE Adventure (
    id_adventure SERIAL PRIMARY KEY,
    id_pc INT NOT NULL,
    id_end INT,
    queen INT DEFAULT 0,
    life INT DEFAULT 0,
    popularity INT DEFAULT 0,
    size INT DEFAULT 0,
    FOREIGN KEY (id_pc) REFERENCES PC(id_pc),
    FOREIGN KEY (id_end) REFERENCES End(id_end)
);

CREATE TABLE Deck (
    id_deck SERIAL PRIMARY KEY
);

CREATE TABLE Deck_Normal (
    id_deck INT NOT NULL,
    completed BOOLEAN,
    PRIMARY KEY (id_deck),
    FOREIGN KEY (id_deck) REFERENCES Deck(id_deck)
);

CREATE TABLE Deck_Event (
    id_deck INT NOT NULL,
    sequence_order INT,
    attempts INT,
    PRIMARY KEY (id_deck),
    FOREIGN KEY (id_deck) REFERENCES Deck(id_deck)
);

CREATE TABLE Card (
    id_card SERIAL PRIMARY KEY,
    id_npc INT,
    id_dialogue INT,
    answer_right VARCHAR(255),
    answer_left VARCHAR(255),
    FOREIGN KEY (id_npc) REFERENCES NPC(id_npc),
    FOREIGN KEY (id_dialogue) REFERENCES Dialogue(id_dialogue)
);

CREATE TABLE Deck_Card (
    id_deck INT NOT NULL,
    id_card INT NOT NULL,
    PRIMARY KEY (id_deck, id_card),
    FOREIGN KEY (id_deck) REFERENCES Deck(id_deck),
    FOREIGN KEY (id_card) REFERENCES Card(id_card)
);

CREATE TABLE Card_Action (
    id_card_action SERIAL PRIMARY KEY,
    id_card INT NOT NULL,
    id_next_card_left INT,
    id_next_card_right INT,
    id_item INT,
    id_resource_left INT,
    id_resource_right INT,
    FOREIGN KEY (id_card) REFERENCES Card(id_card),
    FOREIGN KEY (id_item) REFERENCES Item(id_item)
);

CREATE TABLE Plot (
    id_plot SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    image BYTEA
);

CREATE TABLE Dialogue (
    id_dialogue SERIAL PRIMARY KEY,
    dialogue VARCHAR(800) NOT NULL
);

CREATE TABLE Item (
    id_item SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    effect VARCHAR(255),
    condition VARCHAR(255),
    dropped BOOLEAN
);

CREATE TABLE Resource (
    id_resource SERIAL PRIMARY KEY,
    queen INT,
    life INT,
    popularity INT,
    size INT
);

COMMIT;