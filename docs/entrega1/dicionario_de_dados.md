# **Dicionário de Dados (DD)**

## **Introdução**
O dicionário de dados é um documento essencial para a organização e clareza na modelagem de dados de um sistema. Ele serve como um repositório centralizado de informações sobre os dados utilizados, incluindo nomes, tipos, descrições e restrições das variáveis. Este documento tem como objetivo padronizar a terminologia e facilitar o entendimento dos dados tanto para desenvolvedores quanto para outros stakeholders, garantindo consistência e precisão na utilização dos dados ao longo do projeto.

Cada entrada no dicionário de dados fornece detalhes sobre as variáveis que compõem as entidades do sistema, como identificadores únicos, descrições detalhadas, valores permitidos, e se permitem valores nulos ou não. Além disso, são destacadas as chaves primárias e estrangeiras, além de quaisquer outras restrições relevantes para a integridade dos dados.

---

## **Entidade: Adventure (Aventura)**

| Nome da Variável | Tipo         | Descrição                     | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|-------------------------------|--------------------|------------------------|----------|------------------|
| adventure_id     | INT          | Identificador da aventura      | 1-5000             | não                    | PK       |                  |
| queen            | INT          | Pontuação com a Rainha         | 0-100              | sim                    |          | DEFAULT 50        |
| popularity       | INT          | Popularidade do personagem     | 0-100              | sim                    |          | DEFAULT 50        |
| health           | INT          | Vida do personagem             | 0-100              | sim                    |          | DEFAULT 50        |
| size             | INT          | Tamanho do personagem          | 0-100              | sim                    |          | DEFAULT 50        |

---

## **Entidade: Deck (Baralho)**

| Nome da Variável | Tipo         | Descrição                     | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|-------------------------------|--------------------|------------------------|----------|------------------|
| deck_id          | INT          | Identificador do baralho       | 1-5000             | não                    | PK       |                  |
| start_card_id    | INT          | Identificador da primeira carta | 1-5000            | não                    | FK       |                  |
| end_card_id      | INT          | Identificador da última carta  | 1-5000             | não                    | FK       |                  |

---

## **Entidade: End (Fim da Aventura)**

| Nome da Variável | Tipo         | Descrição                     | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|-------------------------------|--------------------|------------------------|----------|------------------|
| end_id           | INT          | Identificador do fim           | 1-5000             | não                    | PK       |                  |
| title            | VARCHAR(150) | Título do fim                  | a-z, A-Z           | não                    |          |                  |
| description      | VARCHAR(300) | Descrição do fim               | a-z, A-Z           | não                    |          |                  |

---

## **Entidade: Normal (Baralho Normal)**

| Nome da Variável | Tipo         | Descrição                         | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|-----------------------------------|--------------------|------------------------|----------|------------------|
| status           | BOOLEAN      | Indica se o baralho é ativo ou não | TRUE/FALSE         | não                    |          | DEFAULT FALSE    |
| start_card_id    | INT          | Identificador da primeira carta    | 1-5000             | não                    | FK       |                  |
| deck_id          | INT          | Identificador do baralho           | 1-5000             | não                    | PK       |                  |
| end_card_id      | INT          | Identificador da última carta      | 1-5000             | não                    | FK       |                  |

---

## **Entidade: Event (Evento)**

| Nome da Variável | Tipo         | Descrição                         | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|-----------------------------------|--------------------|------------------------|----------|------------------|
| attempt          | INT          | Número de tentativas de completar o evento | 0-100      | não                    |          | DEFAULT 0        |
| start_card_id    | INT          | Identificador da primeira carta    | 1-5000             | não                    | FK       |                  |
| deck_id          | INT          | Identificador do baralho de eventos| 1-5000             | não                    | PK       |                  |
| end_card_id      | INT          | Identificador da última carta      | 1-5000             | não                    | FK       |                  |

---

## **Entidade: Card (Carta)**

| Nome da Variável | Tipo         | Descrição                     | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|-------------------------------|--------------------|------------------------|----------|------------------|
| card_id          | INT          | Identificador da carta         | 1-5000             | não                    | PK       |                  |
| scene_id         | INT          | Identificador da cena          | 1-5000             | não                    | FK       |                  |
| dialogue_id      | INT          | Identificador do diálogo       | 1-5000             | não                    | FK       |                  |
| left_next_card   | INT          | Próxima carta à esquerda       | 1-5000             | não                    | FK       |                  |
| right_next_card  | INT          | Próxima carta à direita        | 1-5000             | não                    | FK       |                  |
| left_resource    | INT          | Recurso à esquerda             | 1-5000             | não                    | FK       |                  |
| right_resource   | INT          | Recurso à direita              | 1-5000             | não                    | FK       |                  |
| item_id          | INT          | Identificador do item          | 1-5000             | sim                    | FK       |                  |

---

## **Entidade: Scene (Cena)**

| Nome da Variável | Tipo         | Descrição                         | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|-----------------------------------|--------------------|------------------------|----------|------------------|
| scene_id         | INT          | Identificador da cena             | 1-5000             | não                    | PK       |                  |
| image            | BYTEA        | Imagem associada à cena           |                    | não                    |          |                  |
| name             | VARCHAR(50)  | Nome da cena                      | a-z, A-Z           | não                    |          | UNIQUE           |

---

## **Entidade: Dialogue (Diálogo)**

| Nome da Variável | Tipo         | Descrição                         | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|-----------------------------------|--------------------|------------------------|----------|------------------|
| dialogue_id      | INT          | Identificador do diálogo          | 1-5000             | não                    | PK       |                  |
| description      | VARCHAR(300) | Descrição do diálogo              | a-z, A-Z           | não                    |          |                  |

---

## **Entidade: Item (Item)**

| Nome da Variável | Tipo         | Descrição                         | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|-----------------------------------|--------------------|------------------------|----------|------------------|
| item_id          | INT          | Identificador do item             | 1-5000             | não                    | PK       |                  |
| name             | VARCHAR(50)  | Nome do item                      | a-z, A-Z           | não                    |          | UNIQUE           |
| icon             | VARCHAR(150) | Caminho para o ícone do item       | a-z, A-Z           | não                    |          |                  |
| status           | BOOLEAN      | Indica se o item está ativo        | TRUE/FALSE         | sim                    |          | DEFAULT FALSE    |

---

## **Entidade: Resource (Recurso)**

| Nome da Variável | Tipo         | Descrição                         | Valores permitidos | Permite valores nulos? | É chave? | Outras Restrições |
|------------------|--------------|-----------------------------------|--------------------|------------------------|----------|------------------|
| resource_id      | INT          | Identificador do recurso          | 1-5000             | não                    | PK       |                  |
| queen            | INT          | Pontuação com a Rainha            | 0-100              | sim                    |          | DEFAULT 0        |
| popularity       | INT          | Popularidade do personagem        | 0-100              | sim                    |          | DEFAULT 0        |
| health           | INT          | Vida do personagem                | 0-100              | sim                    |          | DEFAULT 0        |
| size             | INT          | Tamanho do personagem             | 0-100              | sim                    |          | DEFAULT 0        |

---

Essa estrutura agora está de acordo com o que é mostrado nas imagens. Se houver mais algum ajuste necessário, estou à disposição!

## **Histórico de Versão**
| Data      | Versão | Descrição                                              | Autor                                        |
|-----------|--------|--------------------------------------------------------|----------------------------------------------|
| 22/07/24  | 1.0    | Criação do documento                                   | [Kauan Eiras](https://github.com/kauaneiras) |
| 19/08/24  | 2.0    | Atualização do dicionário de dados com novas entidades | [Kauan Eiras](https://github.com/kauaneiras) |
| 07/09/24  | 3.0    | Atualização do dicionário de dados com novas entidades | [Kauan Eiras](https://github.com/kauaneiras) |