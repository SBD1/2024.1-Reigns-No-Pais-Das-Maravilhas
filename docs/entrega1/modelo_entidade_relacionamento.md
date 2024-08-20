# **Modelo Entidade-Relacionamento (MER)**

## **Introdução**
O **Modelo Entidade-Relacionamento (MER)** é uma ferramenta essencial na modelagem de dados, proporcionando uma representação gráfica clara dos elementos principais de um sistema e suas interações. Utilizado amplamente no desenvolvimento de sistemas e bancos de dados, o MER ajuda a identificar e organizar os dados de maneira eficiente e coerente.

No contexto deste projeto, o MER é composto por **entidades** que representam os principais objetos do domínio, como personagens jogadores, aventuras e cartas. Cada entidade possui **atributos** que descrevem suas características únicas. Além disso, os **relacionamentos** estabelecem as interações entre essas entidades, indicando como elas se conectam dentro do sistema.

## **Descrição Conceitual**
A descrição conceitual é uma etapa crucial na modelagem de dados, pois envolve a abstração dos elementos relevantes de um domínio, seja ele observado ou imaginado. Este modelo captura a essência do sistema sem se preocupar com os detalhes de implementação específicos de um banco de dados, permitindo uma visão clara e organizada de como as informações serão estruturadas.

O MER opera em um nível de abstração elevado, focando na forma como os dados devem ser organizados para refletir a realidade do sistema de maneira significativa e eficiente.

## **Entidades e Atributos**

<details>
<summary><strong>Entidades e Atributos</strong></summary>

### **PC (Personagem Jogador)**
- **id_pc (PK)**: Identificador único do personagem jogador.
- **name**: Nome do personagem jogador.
- **start**: Início da aventura do personagem.
- **age**: Idade do personagem jogador.

### **Adventure (Aventura)**
- **id_adventure (PK)**: Identificador único da aventura.
- **id_pc (FK)**: Referência ao personagem jogador que participa da aventura.
- **id_end (FK)**: Referência ao fim da aventura.
- **queen**: Pontuação com a Rainha.
- **life**: Vida do personagem durante a aventura.
- **popularity**: Popularidade do personagem.
- **size**: Tamanho do personagem.

### **End (Fim da Aventura)**
- **id_end (PK)**: Identificador único do fim da aventura.
- **cause**: Causa do fim da aventura.
- **title**: Título do fim da aventura.

### **Deck (Baralho)**
- **id_deck (PK)**: Identificador único do baralho.

### **Deck_Normal (Especialização de Deck)**
- **id_deck (PK, FK)**: Identificador único do baralho normal.
- **completed**: Status de completude do baralho.

### **Deck_Event (Especialização de Deck)**
- **id_deck (PK, FK)**: Identificador único do baralho de eventos.
- **sequence_order**: Ordem das cartas no evento.
- **attempts**: Número de tentativas permitidas.

### **Card (Carta)**
- **id_card (PK)**: Identificador único da carta.
- **id_npc (FK)**: Referência ao NPC associado à carta.
- **id_dialogue (FK)**: Referência ao diálogo associado à carta.

### **NPC (Personagem Não-Jogador)**
- **id_npc (PK)**: Identificador único do NPC.
- **name**: Nome do NPC.
- **image**: Imagem do NPC.

### **Dialogue (Diálogo)**
- **id_dialogue (PK)**: Identificador único do diálogo.
- **dialogue**: Texto do diálogo.

### **Item**
- **id_item (PK)**: Identificador único do item.
- **name**: Nome do item.
- **effect**: Efeito do item.
- **condition**: Condição de uso do item.
- **dropped**: Indica se o item foi dropado.

### **Resource (Recurso)**
- **id_resource (PK)**: Identificador único do recurso.
- **queen**: Pontos com a Rainha.
- **life**: Vida do recurso.
- **popularity**: Popularidade do recurso.
- **size**: Tamanho do recurso.

</details>

## **Relacionamentos**

<details>
<summary><strong>Relacionamentos</strong></summary>

### **PC Participa em Adventure**
- **PC (1,N)** participa de **Adventure (1,N)**

### **Adventure Termina em End**
- **Adventure (N,1)** termina em **End (1,1)**

### **Adventure Usa Deck**
- **Adventure (N,1)** usa **Deck (1,1)**

### **Deck Contém Card**
- **Deck (1,N)** contém **Card (1,1)**

### **Card Associa com NPC**
- **Card (1,N)** associa com **NPC (0,1)**

### **Card Gera Dialogue**
- **Card (0,1)** gera **Dialogue (0,1)**

### **Card Gera Item**
- **Card (0,1)** gera **Item (0,1)**

### **Card Afeta Resource**
- **Card (0,1)** afeta **Resource (0,1)**

</details>

## **Referência**
**Elmasri, R., & Navathe, S. B.** (2016). *Fundamentals of Database Systems* (7th ed.). Pearson.

## **Histórico de Versão**
| Data      | Versão | Descrição                                              | Autor                                        |
|-----------|--------|--------------------------------------------------------|----------------------------------------------|
| 22/07/24  | 1.0    | Criação do documento                                    | [Kauan Eiras](https://github.com/kauaneiras) |
| 19/08/24  | 2.0    | Revisão e atualização de entidades e relacionamentos    | [Kauan Eiras](https://github.com/kauaneiras) |