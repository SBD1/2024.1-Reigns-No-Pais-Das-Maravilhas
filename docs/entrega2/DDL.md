# DDL do Banco de Dados para o Jogo Reigns - Modelo Alice

Este documento descreve as tabelas e as relações do banco de dados para o jogo Reigns, seguindo o modelo Alice. Abaixo, você encontrará o SQL necessário para criar todas as tabelas do banco de dados.

## Informações Gerais

- **Data de Criação**: 20/08/2024
- **Autor(es)**: [Kauan Eiras](https://github.com/kauaneiras)
- **Versão**: 1.0
- **Banco de Dados**: PostgreSQL
- **Descrição**: Inclusão de CREATE TABLE para todas as tabelas do jogo Reigns.

- **SQL completo**: [DDL.sql](./assets/DDL.sql)

```sql

BEGIN TRANSACTION;

```sql
CREATE TABLE PC (
    id_pc SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    start INT NOT NULL
);
```

### Tabela End (Fim de Jogo)
```sql
CREATE TABLE End (
    id_end SERIAL PRIMARY KEY,
    cause VARCHAR(255) NOT NULL,
    title VARCHAR(100) NOT NULL
);
```

### Tabela Adventure (Aventura)
```sql
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
```

### Tabela Deck (Baralho)
```sql
CREATE TABLE Deck (
    id_deck SERIAL PRIMARY KEY
);
```

### Tabela Deck_Normal (Baralho Normal)
```sql
CREATE TABLE Deck_Normal (
    id_deck INT NOT NULL,
    completed BOOLEAN,
    PRIMARY KEY (id_deck),
    FOREIGN KEY (id_deck) REFERENCES Deck(id_deck)
);
```

### Tabela Deck_Event (Baralho de Evento)
```sql
CREATE TABLE Deck_Event (
    id_deck INT NOT NULL,
    sequence_order INT,
    attempts INT,
    PRIMARY KEY (id_deck),
    FOREIGN KEY (id_deck) REFERENCES Deck(id_deck)
);
```

### Tabela Card (Carta)
```sql
CREATE TABLE Card (
    id_card SERIAL PRIMARY KEY,
    id_npc INT,
    id_dialogue INT,
    FOREIGN KEY (id_npc) REFERENCES NPC(id_npc),
    FOREIGN KEY (id_dialogue) REFERENCES Dialogue(id_dialogue)
);
```

### Tabela Deck_Card (Relacionamento Baralho-Carta)
```sql
CREATE TABLE Deck_Card (
    id_deck INT NOT NULL,
    id_card INT NOT NULL,
    PRIMARY KEY (id_deck, id_card),
    FOREIGN KEY (id_deck) REFERENCES Deck(id_deck),
    FOREIGN KEY (id_card) REFERENCES Card(id_card)
);
```

### Tabela Card_Action (Ações das Cartas)
```sql
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
```

### Tabela NPC (Personagens Não Jogáveis)
```sql
CREATE TABLE NPC (
    id_npc SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    image BYTEA
);
```

### Tabela Dialogue (Diálogos)
```sql
CREATE TABLE Dialogue (
    id_dialogue SERIAL PRIMARY KEY,
    dialogue VARCHAR(800) NOT NULL
);
```

### Tabela Item (Itens do Jogo)
```sql
CREATE TABLE Item (
    id_item SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    effect VARCHAR(255),
    condition VARCHAR(255),
    dropped BOOLEAN
);
```

### Tabela Resource (Recursos)
```sql
CREATE TABLE Resource (
    id_resource SERIAL PRIMARY KEY,
    queen INT,
    life INT,
    popularity INT,
    size INT
);
```

## **Histórico de Versão**
| Data      | Versão | Descrição              | Autor                                        |
|-----------|--------|------------------------|----------------------------------------------|
| 19/08/24  | 1.0    | Criação do documento    | [Kauan Eiras](https://github.com/kauaneiras) |