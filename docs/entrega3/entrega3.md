# Jogo de Cartas - Entrega 3

## Apresentação do Projeto

[![Vídeo de Apresentação](https://img.youtube.com/vi/kk5Ff5-jXC0/maxresdefault.jpg)](https://www.youtube.com/watch?v=kk5Ff5-jXC0)

## Descrição

Este projeto é um jogo de cartas interativo inspirado em *Alice no País das Maravilhas*. O sistema inclui um **backend** que gerencia os dados das cartas e finais do jogo, e um **frontend** onde os jogadores podem interagir com as cartas, fazer escolhas e ver os resultados dessas escolhas, que afetam atributos como popularidade, saúde e tamanho.

## Estrutura do Projeto

### 1. **Frontend**

O frontend do jogo é responsável pela interface visual e pela interação do jogador. Ele foi desenvolvido usando HTML, CSS e JavaScript.

- **[index.html](./index.html)**: Estrutura principal do jogo. Contém o layout da interface, com os componentes de pontuação, as cartas, e os botões de ação para o jogador interagir. Ele também carrega os scripts de lógica e estilo【23†source】.
  
- **[styles.css](./styles.css)**: Define o estilo visual do jogo. Ele inclui a formatação dos elementos da página, como o container principal do jogo, as barras de pontuação, os botões de ação e as cartas【24†source】.
  
- **[game.js](./game.js)**: Script JavaScript que gerencia a lógica do jogo. Ele carrega o deck de cartas a partir do backend, atualiza os atributos do jogador (rainha, popularidade, saúde, tamanho), e decide quando o jogo termina, com base nas ações do jogador【25†source】.

### 2. **Backend**

O backend do projeto é uma API que fornece os dados necessários para o funcionamento do jogo, como o deck de cartas e os finais possíveis. Ele foi desenvolvido com Node.js e utiliza a biblioteca Express para servir os dados.

Dentro da pasta `backend`, temos:

- **`Dockerfile`**: Arquivo de configuração para containerização do backend, permitindo que ele seja executado em um ambiente Docker.
  
- **`.env`**: Arquivo de configuração de variáveis de ambiente para conexão com o banco de dados e outras configurações do backend.
  
- **`package.json` e `package-lock.json`**: Gerenciamento de dependências e scripts npm para o projeto.

- **`src/`**:
  - **`controllers/`**: Contém os controladores que definem a lógica de negócios para o backend, como a manipulação de cartas e finais.
  - **`routes/`**: Define as rotas da API, como `/api/deck` para obter o deck de cartas e `/api/end` para obter os finais possíveis.
  - **`models/`**: Definição dos modelos de dados que mapeiam para as tabelas do banco de dados.
  - **`app.js`**: Arquivo principal da aplicação, onde o Express é configurado e as rotas são vinculadas.

### 3. **Scripts SQL**

- **[TRIGGERS.sql](./TRIGGERS.sql)**: Script SQL responsável pela criação de **triggers** no banco de dados, que monitoram e automatizam determinadas ações, como verificar condições de integridade e atualizar atributos automaticamente.

- **[normlizacao.md](./normlizacao.md)**: Arquivo que descreve a **normalização** do banco de dados, explicando o processo de separação dos dados em tabelas normalizadas para evitar redundância e melhorar a eficiência do sistema.

## Instruções de Execução

1. **Executar o Backend**:
   - Navegue até o diretório `backend` e execute os comandos:
     ```bash
     npm install
     docker build -t game-backend .
     docker run game-backend
     ```
   - Isso irá inicializar o backend que fornecerá os dados para o frontend.

2. **Iniciar o Frontend**:
   - Abra o arquivo `index.html` no seu navegador para iniciar o jogo.
   - O jogo será carregado e você poderá interagir com as cartas, fazer escolhas, e ver como isso afeta os atributos do jogo.

## Links para os Arquivos

- **[index.html](./index.html)**: Estrutura HTML do frontend.
- **[styles.css](./styles.css)**: Estilos do jogo.
- **[game.js](./game.js)**: Lógica de interação do jogo.
- **[TRIGGERS.sql](./TRIGGERS.sql)**: Triggers para o banco de dados.
- **[normlizacao.md](./normlizacao.md)**: Documentação sobre a normalização do banco de dados.
