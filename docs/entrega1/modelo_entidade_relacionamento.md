# **Modelo Entidade-Relacionamento (MER)**

## **Introdução**
O **Modelo Entidade-Relacionamento (MER)** é uma ferramenta essencial na modelagem de dados, proporcionando uma representação gráfica clara dos elementos principais de um sistema e suas interações. Utilizado amplamente no desenvolvimento de sistemas e bancos de dados, o MER ajuda a identificar e organizar os dados de maneira eficiente e coerente.

No contexto deste projeto, o MER é composto por **entidades** que representam os principais objetos do domínio, como aventuras, cartas e recursos. Cada entidade possui **atributos** que descrevem suas características únicas. Além disso, os **relacionamentos** estabelecem as interações entre essas entidades, indicando como elas se conectam dentro do sistema.

## **Descrição Conceitual**
A descrição conceitual é uma etapa crucial na modelagem de dados, pois envolve a abstração dos elementos relevantes de um domínio, seja ele observado ou imaginado. Este modelo captura a essência do sistema sem se preocupar com os detalhes de implementação específicos de um banco de dados, permitindo uma visão clara e organizada de como as informações serão estruturadas.

O MER opera em um nível de abstração elevado, focando na forma como os dados devem ser organizados para refletir a realidade do sistema de maneira significativa e eficiente.

## **Entidades e Atributos**

<details>
<summary><strong>Entidades e Atributos</strong></summary>

### **Adventure (Aventura)**
- **adventure_id (PK)**: Identificador único da aventura.
- **queen**: Pontuação com a Rainha.
- **popularity**: Popularidade do personagem durante a aventura.
- **health**: Vida do personagem.
- **size**: Tamanho do personagem.

### **Deck (Baralho)**
- **deck_id (PK)**: Identificador único do baralho.
- **start_card_id (FK)**: Identificador da primeira carta do baralho.
- **end_card_id (FK)**: Identificador da última carta do baralho.

### **End (Fim da Aventura)**
- **end_id (PK)**: Identificador único do fim da aventura.
- **title**: Título do fim.
- **description**: Descrição do fim da aventura.

### **Normal (Baralho Normal)**
- **deck_id (PK, FK)**: Referência ao identificador do baralho.
- **status**: Indica se o baralho é ativo ou não.
- **start_card_id (FK)**: Identificador da primeira carta do baralho normal.
- **end_card_id (FK)**: Identificador da última carta do baralho normal.

### **Event (Evento)**
- **deck_id (PK, FK)**: Referência ao identificador do baralho de eventos.
- **attempt**: Número de tentativas para completar o evento.
- **start_card_id (FK)**: Identificador da primeira carta do evento.
- **end_card_id (FK)**: Identificador da última carta do evento.

### **Card (Carta)**
- **card_id (PK)**: Identificador único da carta.
- **scene_id (FK)**: Identificador da cena.
- **dialogue_id (FK)**: Identificador do diálogo.
- **left_next_card (FK)**: Próxima carta à esquerda.
- **right_next_card (FK)**: Próxima carta à direita.
- **left_resource (FK)**: Recurso associado à esquerda.
- **right_resource (FK)**: Recurso associado à direita.
- **item_id (FK)**: Identificador do item associado.

### **Scene (Cena)**
- **scene_id (PK)**: Identificador único da cena.
- **image**: Imagem associada à cena.
- **name**: Nome da cena.

### **Dialogue (Diálogo)**
- **dialogue_id (PK)**: Identificador único do diálogo.
- **description**: Descrição do diálogo.

### **Item (Item)**
- **item_id (PK)**: Identificador único do item.
- **name**: Nome do item.
- **icon**: Caminho para o ícone do item.
- **status**: Indica se o item está ativo.

### **Resource (Recurso)**
- **resource_id (PK)**: Identificador único do recurso.
- **queen**: Pontuação com a Rainha.
- **popularity**: Popularidade do recurso.
- **health**: Vida do recurso.
- **size**: Tamanho do recurso.

</details>

---

## **Relacionamentos**

<details>
<summary><strong>Relacionamentos</strong></summary>

### **Adventure Controla Deck**
- **Adventure (1,1)** controla **Deck (1,N)**
    - Um adventure pode controlar vários decks, mas cada deck pertence a um único adventure.

### **Adventure Termina em End**
- **Adventure (1,1)** termina em **End (0,1)**
    - Um adventure pode ou não ter um fim, e cada fim pertence a um único adventure.

### **Deck Contém Card**
- **Deck (1,N)** contém **Card (1,N)**
    - Um deck contém várias cartas, e cada carta pode pertencer a vários decks.

### **Card Participa em Scene**
- **Card (1,N)** participa de **Scene (1,1)**
    - Cada carta deve fazer parte de uma cena, mas várias cartas podem compartilhar a mesma cena.

### **Card Participa em Dialogue**
- **Card (1,N)** participa de **Dialogue (1,1)**
    - Uma carta pode conter um diálogo, mas várias cartas podem compartilhar o mesmo diálogo.

### **Card Droppa Item**
- **Card (0,1)** droppa **Item (0,1)**
    - Uma carta pode, opcionalmente, droppar um item.

### **Card Gera Resource**
- **Card (0,1)** gera **Resource (1,1)**
    - Uma carta pode gerar um recurso como resultado.

### **Normal e Event São Tipos de Deck**
- **Normal (1,1)** e **Event (1,1)** são especializações do relacionamento com **Deck**
    - Um deck pode ser normal ou de evento, mas nunca ambos ao mesmo tempo.

</details>

## **Histórico de Versão**
| Data      | Versão | Descrição                                              | Autor                                        |
|-----------|--------|--------------------------------------------------------|----------------------------------------------|
| 22/07/24  | 1.0    | Criação do documento                                    | [Kauan Eiras](https://github.com/kauaneiras) |
| 19/08/24  | 2.0    | Revisão e atualização de entidades e relacionamentos    | [Kauan Eiras](https://github.com/kauaneiras) |