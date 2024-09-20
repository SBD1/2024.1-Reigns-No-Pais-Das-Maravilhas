# Projeto de Banco de Dados - Entrega 2

## Descrição

Este projeto consiste na criação de um banco de dados para um jogo de cartas inspirado na obra *Alice no País das Maravilhas*. O sistema gerencia interações com cartas, diálogos, cenas e recursos que influenciam o andamento do jogo e os resultados finais.

No projeto, trabalhamos com três tipos de arquivos SQL principais:

1. **[DDL (Data Definition Language)](./DDL.sql)**: Este arquivo contém as instruções para a **definição** das estruturas do banco de dados, ou seja, a criação das tabelas e relacionamentos entre elas.
   
   - **Tabelas Criadas**: 
     - `Ending`: Armazena os finais do jogo com título, descrição e imagem.
     - `Adventure`: Armazena os status da rainha, popularidade, saúde e tamanho, e refere-se à tabela `Ending`.
     - `Deck`: Gerencia os decks de cartas, com referências para o início e o fim do deck.
     - `Normal` e `Event`: Categorias de decks específicos com suas regras e tentativas.
     - `Scene`: Armazena cenas com imagens e nomes dos personagens.
     - `Dialogue`: Armazena os diálogos que o jogador vai interagir, com opções de respostas.
     - `Item`: Armazena itens que podem ser coletados durante o jogo.
     - `Resource`: Define os atributos que vão sendo alterados ao longo do jogo (rainha, popularidade, saúde, tamanho).
     - `Card`: Armazena cartas com referências para cenas, diálogos, próximos cards e recursos.

2. **[DML (Data Manipulation Language)](./DML.sql)**: Este arquivo é responsável pela **inserção de dados** nas tabelas criadas pelo DDL. Ele preenche o banco de dados com as informações necessárias para o jogo.

   - **Dados Inseridos**:
     - **Tabela `Ending`**: São inseridos vários finais do jogo, cada um com sua descrição e imagem associada.
     - **Tabela `Resource`**: Insere os recursos que impactam os atributos do jogo, como saúde, popularidade e tamanho.
     - **Tabela `Scene`**: Popula com cenas como "Gato", "Chapeleiro Maluco", "Coelho Branco", e mais.
     - **Tabela `Dialogue`**: Inserções de diálogos com opções de resposta à esquerda e à direita, permitindo diferentes interações do jogador.
     - **Tabela `Item`**: Inserção de itens que o jogador pode coletar, como bolos, bebidas e chapéus.
     - **Tabela `Card`**: População das cartas, vinculando cenas e diálogos, com os próximos cards e os recursos afetados.

3. **[DQL (Data Query Language)](./DQL.sql)**: Este arquivo contém consultas SQL para **verificar e extrair dados** das tabelas do banco de dados. Ele é utilizado para garantir que os dados foram inseridos corretamente e para testar a integridade do banco de dados.

   - **Consultas Incluídas**:
     - Verificação de todas as cartas e seus respectivos diálogos e cenas.
     - Consultas para verificar os recursos associados às cartas.
     - Recuperação dos diferentes finais do jogo com suas descrições e imagens.

## Links para os Arquivos

- **[DDL.sql - Definição das Tabelas](./DDL.sql)**: Contém a definição do esquema de banco de dados.
- **[DML.sql - Inserção de Dados](./DML.sql)**: Inserções de dados nas tabelas criadas.
- **[DQL.sql - Consultas SQL](./DQL.sql)**: Consultas para verificar e testar o banco de dados.

## Instruções de Execução

1. **Criação das Tabelas**: Execute o arquivo `DDL.sql` para criar todas as tabelas do banco de dados.
2. **Inserção de Dados**: Após a criação das tabelas, execute o arquivo `DML.sql` para popular o banco de dados com as informações essenciais.
3. **Consultas de Verificação**: Use o arquivo `DQL.sql` para testar se os dados foram inseridos corretamente e para recuperar informações do banco.