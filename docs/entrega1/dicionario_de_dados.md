# **Dicionário de Dados (DD)**

Um dicionário de dados é uma coleção de nomes, atributos e definições sobre elementos de dados utilizados em um estudo. Seu principal objetivo é esclarecer o significado dos nomes e valores das variáveis dentro de um conjunto de dados. Em um dicionário de dados, podem ser encontradas informações sobre os nomes das variáveis exatamente como aparecem na planilha, nomes curtos das variáveis (legíveis por humanos), o intervalo de valores ou valores aceitos para cada variável, descrições das variáveis e outros detalhes pertinentes.

## Entidade: Character (Personagem)

Descrição: A entidade Character descreve os personagens do jogo, contendo informações como: número de identificação, nome e imagem.

| Nome Variável |     Tipo     |           Descrição            | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
| :-----------: | :----------: | :----------------------------: | :----------------: | :--------------------: | :------: | ----------------- |
| id_character  |     int      |   Identificador do personagem  |       1-5000       |          não           |    PK    |                   |
|     name      | varchar[50]  |        Nome do personagem      |      a-z, A-Z      |          não           |          |                   |
|    image      |  longblob    |         Imagem do personagem   |                    |          não           |          |                   |

## Entidade: PC (Personagem Jogador)

Descrição: A entidade PC descreve os personagens jogadores, contendo informações como: número de identificação, início, fim, causa e idade.

Observação: Esta tabela possui chave estrangeira da entidade `Character`.

| Nome Variável |     Tipo     |           Descrição           | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
| :-----------: | :----------: | :---------------------------: | :----------------: | :--------------------: | :------: | ----------------- |
| id_character  |     int      |  Identificador do personagem  |       1-5000       |          não           | PK, FK   |                   |
|     start     |    int       |   Início do personagem        |       1-5000       |          não           |          |                   |
|      end      |    int       |    Fim do personagem          |       1-5000       |          não           |          |                   |
|     cause     | varchar[150] |   Causa do fim do personagem  |      a-z, A-Z      |          não           |          |                   |
|      age      |     int      |  Idade do personagem          |       0-200        |          não           |          |                   |

## Entidade: NPC (Personagem Não-Jogador)

Descrição: A entidade NPC descreve os personagens não-jogadores, contendo apenas o número de identificação do personagem.

Observação: Esta tabela possui chave estrangeira da entidade `Character`.

| Nome Variável |     Tipo     |           Descrição           | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
| :-----------: | :----------: | :---------------------------: | :----------------: | :--------------------: | :------: | ----------------- |
| id_character  |     int      |  Identificador do personagem  |       1-5000       |          não           | PK, FK   |                   |

## Entidade: Inventory (Inventário)

Descrição: A entidade Inventory descreve os inventários dos personagens, contendo informações como: número de identificação do inventário, identificação do personagem e identificação do item.

Observação: Esta tabela possui chave estrangeira das entidades `Character` e `Item`.

| Nome Variável |     Tipo     |          Descrição           | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
| :-----------: | :----------: | :--------------------------: | :----------------: | :--------------------: | :------: | ----------------- |
| id_inventory  |     int      |   Identificador do inventário|       1-5000       |          não           |    PK    |                   |
| id_character  |     int      |  Identificador do personagem |       1-5000       |          não           |    FK    |                   |
|   id_item     |     int      |    Identificador do item     |       1-5000       |          não           |    FK    |                   |

## Entidade: Item

Descrição: A entidade Item descreve os itens do jogo, contendo informações como: número de identificação, nome e tipo do item.

| Nome Variável |     Tipo     |       Descrição       | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
| :-----------: | :----------: | :-------------------: | :----------------: | :--------------------: | :------: | ----------------- |
|   id_item     |     int      |  Identificador do item|       1-5000       |          não           |    PK    |                   |
| name_item     | varchar[50]  |      Nome do item     |      a-z, A-Z      |          não           |          |                   |
|    type       | varchar[50]  |      Tipo do item     |      a-z, A-Z      |          não           |          |                   |

## Entidade: Resource (Recurso)

Descrição: A entidade Resource descreve os recursos do jogo, contendo informações como: número de identificação, rainha, vida, popularidade e tamanho.

| Nome Variável |     Tipo     |       Descrição       | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
| :-----------: | :----------: | :-------------------: | :----------------: | :--------------------: | :------: | ----------------- |
| id_resource   |     int      | Identificador do recurso|       1-5000     |          não           |    PK    |                   |
|    queen      |     int      | Pontos com a Rainha     |       0-100      |          não           |          |                   |
|     life      |     int      |      Vida do recurso    |       0-100      |          não           |          |                   |
| popularity    |     int      |  Popularidade do recurso|       0-100      |          não           |          |                   |
|     size      |     int      |   Tamanho do recurso    |       0-100      |          não           |          |                   |

## Entidade: Deck

Descrição: A entidade Deck descreve os decks de cartas, contendo informações como: número de identificação, nome local e status de completude.

| Nome Variável |     Tipo     |           Descrição            | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
| :-----------: | :----------: | :----------------------------: | :----------------: | :--------------------: | :------: | ----------------- |
| id_deck       |     int      |   Identificador do deck        |       1-5000       |          não           |    PK    |                   |
| id_local      |     int      |      Id do local do deck       |      a-z, A-Z      |          sim           |    PF    |                   |
| id_character  |     int      |      Id do character do deck   |      a-z, A-Z      |          sim           |    PF    |                   |
|  completed    | boolean      |       Status de completude     |      true/false    |          não           |          |                   |

## Entidade: Local

Descrição: A entidade Local descreve os locais do jogo, contendo informações como: número de identificação, nome e imagem.

Observação: Esta tabela possui chave estrangeira da entidade `Character`.

| Nome Variável |     Tipo     |           Descrição            | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
| :-----------: | :----------: | :----------------------------: | :----------------: | :--------------------: | :------: | ----------------- |
| id_character  |     int      |   Identificador do personagem  |       1-5000       |          não           | PK, FK   |                   |
|     name      | varchar[50]  |        Nome do local           |      a-z, A-Z      |          não           |          |                   |
|    image      |  longblob    |     Imagem do local            |                    |          não           |          |                   |

## Entidade: Card (Carta)

Descrição: A entidade Card descreve as cartas do jogo, contendo informações como: número de identificação, participantes, tipo, texto, opções esquerda e direita.

Observação: Esta tabela possui chave estrangeira das entidades `Character` e `NPC` ou `Local`.

| Nome Variável |     Tipo     |           Descrição            | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
| :-----------: | :----------: | :----------------------------: | :----------------: | :--------------------: | :------:  | ----------------- |
| id_card         |     int      |   Identificador da carta       |       1-5000       |          não           |    PK    |                   |
| id_participants |   int        |   Identifica o NPC ou local    |       1-5000       |          não           |    FK    |                   |
|     type        | varchar[50]  |      Tipo da carta             |      a-z, A-Z      |          não           |          |                   |
|     text        | varchar[255] |      Texto da carta            |      a-z, A-Z      |          não           |          |                   |
|     left        | varchar[50]  |      Opção esquerda da carta   |      a-z, A-Z      |          não           |          |                   |
|    right        | varchar[50]  |      Opção direita da carta    |      a-z, A-Z      |          não           |          |                   |

## Entidade: Event (Evento)

Descrição: A entidade Event descreve os eventos do jogo, contendo informações como: número de identificação.

| Nome Variável |     Tipo     |           Descrição            | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
| :-----------: | :----------: | :----------------------------: | :----------------: | :--------------------: | :------: | ----------------- |
| id_event      |     int      |   Identificador do evento      |       1-5000       |          não           |    PK    |                   |

## Entidade: Action (Ação)

Descrição: A entidade Action descreve as ações do jogo, contendo informações como: número de identificação.

| Nome Variável |     Tipo     |           Descrição            | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
| :-----------: | :----------: | :----------------------------: | :----------------: | :--------------------: | :------: | ----------------- |
| id_action     |     int      |   Identificador da ação        |       1-5000       |          não           |    PK    |                   |


## Entidade: Result (Resultado)

Descrição: A entidade Result descreve os resultados do jogo, contendo informações como: número de identificação, descrição e identificação do recurso afetado.

| Nome Variável |     Tipo     |           Descrição           | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
| :-----------: | :----------: | :---------------------------: | :----------------: | :--------------------: | :------: | ----------------- |
| id_result     |     int      |   Identificador do resultado  |       1-5000       |          não           |    PK    |                   |
| description   | varchar[255] |   Descrição do resultado      |      a-z, A-Z      |          sim           |          |                   |
| id_resource   |     int      | Identificador do recurso afetado |       1-5000       |          não           |    FK    |                |

## Entidade: Tool (Ferramenta)

Descrição: A entidade Tool descreve as ferramentas do jogo, contendo informações como: número de identificação e quantidade.

Observação: Esta tabela possui chave estrangeira da entidade `Item`.

| Nome Variável |     Tipo     |           Descrição           | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
| :-----------: | :----------: | :---------------------------: | :----------------: | :--------------------: | :------: | ----------------- |
| id_item       |     int      |  Identificador do item        |       1-5000       |          não           | PK, FK   |                   |
| qtd           |     int      |  Quantidade da ferramenta     |       0-1000       |          não           |          |                   |

## Entidade: Consumable (Consumível)

Descrição: A entidade Consumable descreve os consumíveis do jogo, contendo informações como: número de identificação e quantidade.

Observação: Esta tabela possui chave estrangeira da entidade `Item`.

| Nome Variável |     Tipo     |           Descrição           | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
| :-----------: | :----------: | :---------------------------: | :----------------: | :--------------------: | :------: | ----------------- |
| id_item       |     int      |  Identificador do item        |       1-5000       |          não           | PK, FK   |                   |
| qtd           |     int      |  Quantidade do consumível     |       0-1000       |          não           |          |                   |


## Bibliografia
**Loshin, D.** (2012). Master Data Management. Morgan Kaufmann.

## Histórico de Versão
| Data |	Versão	| Descrição	| Autor |
| --- | --- | --- | --- |
| 22/07/24 |	1.0 |	Criação do documento| [Kauan Eiras](https://github.com/kauaneiras)