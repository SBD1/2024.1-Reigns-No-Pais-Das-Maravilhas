# **Modelo Entidade Relacionamento (MER)**

## **Introdução**
O **Modelo Entidade Relacionamento (MER)** é uma representação gráfica que ilustra os objetos e suas interações dentro de um domínio de negócios. Ele é composto por entidades, atributos e relacionamentos.

As entidades representam objetos no domínio de negócios, como clientes, produtos, pedidos, entre outros. Os atributos são as características que descrevem as entidades, enquanto os relacionamentos representam as associações entre essas entidades.

## **Descrição Conceitual**
A descrição conceitual é uma etapa essencial na modelagem de dados, que envolve a análise dos elementos e fenômenos relevantes de uma realidade observada ou imaginada. A partir dessa análise, é formado um modelo abstrato que encapsula o conhecimento adquirido.

O MER opera em um nível de abstração elevado, desconsiderando detalhes específicos de implementação em banco de dados. Em vez disso, ele se concentra na forma como as estruturas de dados serão concebidas para armazenar informações de maneira organizada e significativa.

## <a>Entidades e Atributos</a>

<details>
<summary><strong>Entidades e Atributos</strong></summary>
<a><strong>Character (Personagem)</strong></a>
   <li>id_character (PK)</li>
   <li>name</li>
   <li>image</li>
<a><strong>PC (Personagem Jogador)</strong></a>
   <li>id_character (PK, FK)</li>
   <li>start</li>
   <li>end</li>
   <li>cause</li>
   <li>age</li>
<a><strong>NPC (Personagem Não-Jogador)</strong></a>
   <li>id_character (PK, FK)</li>
<a><strong>Inventory (Inventário)</strong></a>
   <li>id_inventory (PK)</li>
   <li>id_character (FK)</li>
   <li>id_item (FK)</li>
<a><strong>Item</strong></a>
   <li>id_item (PK)</li>
   <li>name_item</li>
   <li>type</li>
<a><strong>Resource (Recurso)</strong></a>
   <li>id_resource (PK)</li>
   <li>queen</li>
   <li>life</li>
   <li>popularity</li>
   <li>size</li>
<a><strong>Deck</strong></a>
   <li>id_deck (PK)</li>
   <li>name_local</li>
   <li>completed</li>
<a><strong>Local</strong></a>
   <li>id_character (PK, FK)</li>
   <li>name</li>
   <li>image</li>
<a><strong>Card (Carta)</strong></a>
   <li>id_card (PK)</li>
   <li>id_participants (FK)</li>
   <li>type</li>
   <li>text</li>
   <li>left</li>
   <li>right</li>
<a><strong>Event (Evento)</strong></a>
   <li>id_event (PK)</li>
<a><strong>Action (Ação)</strong></a>
   <li>id_action (PK)</li>
</details>

## <a>Relacionamentos</a>

<details>
<summary><strong>Relacionamentos</strong></summary>
<a><strong>PC Carries Inventory</strong></a>
   <li>Um Personagem Jogador carrega um Inventário (1,1)</li>
   <li>Um Inventário é carregado por um Personagem Jogador (1,1)</li>
<a><strong>PC Depends on Resource</strong></a>
   <li>Um Personagem Jogador depende do Recursos (1,1)</li>
   <li>Um Recurso é dependencia de um personagem (1,1)</li>
<a><strong>PC Controls Action</strong></a>
   <li>Um Personagem Jogador controla uma Ação (1,1)</li>
   <li>Uma Ação é controlada por um Personagem Jogador (1,1)</li>
   <a><strong>PC Controls Event</strong></a>
   <li>Um Personagem Jogador controla um Evento (1,1)</li>
   <li>Um Evento é controlado por um Personagem Jogador (1,1)</li>
<a><strong>NPC Appears in Card</strong></a>
   <li>Um Personagem Não-Jogador pode ou não aparecer em uma Carta (0,1)</li>
   <li>Uma Carta pode ou não conter um Personagem Não-Jogador (0,1)</li>
<a><strong>Local Appears in Card</strong></a>
   <li>Um Local pode ou não aparecer em uma Carta (0,1)</li>
   <li>Uma Carta pode ou não conter um Local (0,1)</li>
<a><strong>Inventory Contains Items</strong></a>
   <li>Um Inventário contém múltiplos Itens (1,n)</li>
   <li>Um Item está contido em um Inventário (0,1)</li>
<a><strong>Carta Event Generates Result</strong></a>
   <li>Uma Carta de Evento gera um resultado (1,1)</li>
   <li>Um Resultado é gerado por uma Carta de Evento (1,1)</li>
<a><strong>Item Drops by Carta Event</strong></a>
   <li>Item é solto de um Evento (1,1)</li>
   <li>Um Evento pode ou não soltar múltiplos Itens (0,n)</li>
<a><strong>Deck Groups Cards</strong></a>
   <li>Um Deck agrupa múltiplas Cartas (1,n)</li>
   <li>Uma Carta pertence a um Deck (1,1)</li>
<a><strong>Resource Affected by Action</strong></a>
   <li>Um Recurso é afetado por uma Carta de Ação (1,1)</li>
   <li>Uma Carta de Ação pode ou não afetar um Recurso (0,1)</li>
<a><strong>Result Affects Resource</strong></a>
   <li>Um Resultado pode ou não afetar um Recurso (0,1)</li>
   <li>Um Recurso pode ser afetado um Evento (0,1)</li>
</details>

## Referência
**Elmasri, R., & Navathe, S. B.** (2016). *Fundamentals of Database Systems* (7th ed.). Pearson.

## Histórico de Versão
| Data |	Versão	| Descrição	| Autor |
| --- | --- | --- | --- |
| 22/07/24 |	1.0 |	Criação do documento| [Kauan Eiras](https://github.com/kauaneiras)