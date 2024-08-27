# **Dicionário de Dados (DD)**

## **Introdução**
O dicionário de dados é um documento essencial para a organização e clareza na modelagem de dados de um sistema. Ele serve como um repositório centralizado de informações sobre os dados utilizados, incluindo nomes, tipos, descrições e restrições das variáveis. Este documento tem como objetivo padronizar a terminologia e facilitar o entendimento dos dados tanto para desenvolvedores quanto para outros stakeholders, garantindo consistência e precisão na utilização dos dados ao longo do projeto.

Cada entrada no dicionário de dados fornece detalhes sobre as variáveis que compõem as entidades do sistema, como identificadores únicos, descrições detalhadas, valores permitidos, e se permitem valores nulos ou não. Além disso, são destacadas as chaves primárias e estrangeiras, além de quaisquer outras restrições relevantes para a integridade dos dados.

## **Entidade: PC (Personagem Jogador)**

Descrição: A entidade **PC** descreve os personagens jogadores, contendo informações como número de identificação, nome, início da aventura e idade.

| Nome da Variável | Tipo         | Descrição                    | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|------------------------------|--------------------|------------------------|----------|------------------|
| id_pc            | INT          | Identificador do personagem   | 1-5000             | não                    | PK       |                  |
| name             | VARCHAR(50)  | Nome do personagem            | a-z, A-Z           | não                    |          | UNIQUE           |
| start            | INT          | Início da aventura            | 1-5000             | não                    |          | DEFAULT 0        |
| age              | INT          | Idade do personagem           | 0-200              | não                    |          | DEFAULT 0        |

## **Entidade: Adventure (Aventura)**

Descrição: A entidade **Adventure** descreve as aventuras vividas pelos personagens jogadores.

| Nome da Variável | Tipo         | Descrição                     | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|-------------------------------|--------------------|------------------------|----------|------------------|
| id_adventure      | INT          | Identificador da aventura      | 1-5000             | não                    | PK       |                  |
| id_pc            | INT          | Identificador do personagem    | 1-5000             | não                    | FK       |                  |
| id_end           | INT          | Identificador do fim da aventura | 1-5000           | não                    | FK       |                  |
| queen            | INT          | Pontuação com a Rainha         | 0-100              | sim                    |          | DEFAULT 0        |
| life             | INT          | Vida do personagem             | 0-100              | sim                    |          | DEFAULT 0        |
| popularity       | INT          | Popularidade do personagem     | 0-100              | sim                    |          | DEFAULT 0        |
| size             | INT          | Tamanho do personagem          | 0-100              | sim                    |          | DEFAULT 0        |

## **Entidade: End (Fim da Aventura)**

Descrição: A entidade **End** descreve os possíveis finais de uma aventura.

| Nome da Variável | Tipo         | Descrição                      | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|--------------------------------|--------------------|------------------------|----------|------------------|
| id_end           | INT          | Identificador do fim           | 1-5000             | não                    | PK       |                  |
| cause            | VARCHAR(150) | Causa do fim da aventura       | a-z, A-Z           | não                    |          |                  |
| title            | VARCHAR(150) | Título do fim                  | a-z, A-Z           | não                    |          |                  |
| about            | VARCHAR(300) | Título do fim                  | a-z, A-Z           | não                    |          |                  |

## **Entidade: Deck (Baralho)**

Descrição: A entidade **Deck** descreve os baralhos de cartas que podem ser usados durante as aventuras.

| Nome da Variável | Tipo         | Descrição                     | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|-------------------------------|--------------------|------------------------|----------|------------------|
| id_deck          | INT          | Identificador do baralho       | 1-5000             | não                    | PK       |                  |

### **Especialização: Deck_Normal**

Descrição: A entidade **Deck_Normal** é uma especialização de **Deck**, representando um baralho normal.

| Nome da Variável | Tipo         | Descrição                     | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|-------------------------------|--------------------|------------------------|----------|------------------|
| id_deck          | INT          | Identificador do baralho       | 1-5000             | não                    | PK, FK   |                  |
| completed        | BOOLEAN      | Status de completude           | true/false         | não                    |          |                  |

### **Especialização: Deck_Event**

Descrição: A entidade **Deck_Event** é uma especialização de **Deck**, representando um baralho de eventos.

| Nome da Variável  | Tipo         | Descrição                     | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|-------------------|--------------|-------------------------------|--------------------|------------------------|----------|------------------|
| id_deck           | INT          | Identificador do baralho       | 1-5000             | não                    | PK, FK   |                  |
| sequence_order    | INT          | Ordem das cartas no evento     | 1-5000             | sim                    |          |                  |
| attempts          | INT          | Número de tentativas permitidas | 1-5000            | não                    |          |                  |

## **Entidade: DeckContainsCard (Entidade Associativa)**

Descrição: A entidade **DeckContainsCard** descreve a relação entre os baralhos e as cartas contidas neles.

| Nome da Variável | Tipo         | Descrição                     | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|-------------------------------|--------------------|------------------------|----------|------------------|
| id_deck_card     | INT          | Identificador da relação       | 1-5000             | não                    | PK       |                  |
| deck_id          | INT          | Identificador do baralho       | 1-5000             | não                    | FK       |                  |
| card_id          | INT          | Identificador da carta         | 1-5000             | não                    | FK       |                  |

## **Entidade: Card (Carta)**

Descrição: A entidade **Card** descreve as cartas do jogo, que podem conter diálogos e personagens.

| Nome da Variável | Tipo         | Descrição                     | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|-------------------------------|--------------------|------------------------|----------|------------------|
| id_card          | INT          | Identificador da carta         | 1-5000             | não                    | PK       |                  |
| id_npc           | INT          | Identificador do NPC associado | 1-5000             | sim                    | FK       |                  |
| id_dialogue      | INT          | Identificador do diálogo       | 1-5000             | sim                    | FK       |                  |

## **Entidade: CardTriggersAction (Entidade Associativa)**

Descrição: A entidade **CardTriggersAction** descreve as ações que uma carta pode desencadear, incluindo o próximo passo (carta à esquerda ou direita), itens e modificações de recursos.

| Nome da Variável      | Tipo         | Descrição                              | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|-----------------------|--------------|----------------------------------------|--------------------|------------------------|----------|------------------|
| id_card_action        | INT          | Identificador da ação                  | 1-5000             | não                    | PK       |                  |
| card_id               | INT          | Identificador da carta                 | 1-5000             | não                    | FK       |                  |
| next_card_left_id     | INT          | Identificador da próxima carta à esquerda | 1-5000          | sim                    | FK       |                  |
| next_card_right_id    | INT          | Identificador da próxima carta à direita  | 1-5000          | sim                    | FK       |                  |
| item_id               | INT          | Identificador do item dropado          | 1-5000             | sim                    | FK       |                  |
| resource_left_id      | INT          | Identificador do recurso afetado à esquerda | 1-5000          | não                    | FK       |                  |
| resource_right_id     | INT          | Identificador do recurso afetado à direita | 1-5000          | não                    | FK       |                  |

## **Entidade: NPC (Personagem Não-Jogável)**

Descrição: A entidade **NPC** descreve os personagens não-jogadores, que podem interagir com as cartas.

|

 Nome da Variável | Tipo         | Descrição                     | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|-------------------------------|--------------------|------------------------|----------|------------------|
| id_npc           | INT          | Identificador do NPC           | 1-5000             | não                    | PK       |                  |
| name             | VARCHAR(50)  | Nome do NPC                    | a-z, A-Z           | não                    |          | UNIQUE           |
| image            | BYTEA        | Imagem do NPC                  |                    | sim                    |          |                  |

## **Entidade: Dialogue (Diálogo)**

Descrição: A entidade **Dialogue** descreve os diálogos associados às cartas e NPCs.

| Nome da Variável | Tipo         | Descrição                     | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|-------------------------------|--------------------|------------------------|----------|------------------|
| id_dialogue      | INT          | Identificador do diálogo       | 1-5000             | não                    | PK       |                  |
| dialogue         | VARCHAR(255) | Texto do diálogo               | a-z, A-Z           | não                    |          |                  |

## **Entidade: Item**

Descrição: A entidade **Item** descreve os itens do jogo, que podem ser associados a ações e cartas.

| Nome da Variável | Tipo         | Descrição                     | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|-------------------------------|--------------------|------------------------|----------|------------------|
| id_item          | INT          | Identificador do item          | 1-5000             | não                    | PK       |                  |
| name             | VARCHAR(50)  | Nome do item                   | a-z, A-Z           | não                    |          | UNIQUE           |
| effect           | VARCHAR(255) | Efeito do item                 | a-z, A-Z           | não                    |          |                  |
| condition        | VARCHAR(255) | Condição de uso do item        | a-z, A-Z           | não                    |          |                  |
| dropped          | BOOLEAN      | Indica se o item foi dropado   | true/false         | não                    |          |                  |

## **Entidade: Resource (Recurso)**

Descrição: A entidade **Resource** descreve os recursos do jogo, que podem ser afetados por ações e cartas.

| Nome da Variável  | Tipo         | Descrição                     | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|-------------------|--------------|-------------------------------|--------------------|------------------------|----------|------------------|
| id_resource       | INT          | Identificador do recurso       | 1-5000             | não                    | PK       |                  |
| queen             | INT          | Pontos com a Rainha            | 0-100              | não                    |          |                  |
| life              | INT          | Vida do recurso                | 0-100              | não                    |          |                  |
| popularity        | INT          | Popularidade do recurso        | 0-100              | não                    |          |                  |
| size              | INT          | Tamanho do recurso             | 0-100              | não                    |          |                  |

## **Entidade: AdventureUsesDeck (Entidade Associativa)**

Descrição: A entidade **AdventureUsesDeck** descreve a relação entre aventuras e baralhos utilizados.

| Nome da Variável   | Tipo         | Descrição                     | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|--------------------|--------------|-------------------------------|--------------------|------------------------|----------|------------------|
| id_adventure_deck  | INT          | Identificador da relação       | 1-5000             | não                    | PK       |                  |
| adventure_id       | INT          | Identificador da aventura      | 1-5000             | não                    | FK       |                  |
| deck_id            | INT          | Identificador do baralho       | 1-5000             | não                    | FK       |                  |

## **Histórico de Versão**
| Data      | Versão | Descrição                                              | Autor                                        |
|-----------|--------|--------------------------------------------------------|----------------------------------------------|
| 22/07/24  | 1.0    | Criação do documento                                    | [Kauan Eiras](https://github.com/kauaneiras) |
| 19/08/24  | 2.0    | Atualização do dicionário de dados com novas entidades associativas e especializações | [Kauan Eiras](https://github.com/kauaneiras) |