require('dotenv').config();
const fs = require('fs');
const path = require('path');
const { Pool } = require('pg');

const pool = new Pool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  port: process.env.DB_PORT,
});

const insertImage = (imagePath) => {
  return fs.readFileSync(path.join(__dirname, imagePath));
};

const seedDatabase = async () => {
  try {
    await pool.query('BEGIN');

    await pool.query(`
      CREATE TABLE IF NOT EXISTS Ending (
        end_id SERIAL PRIMARY KEY,
        title VARCHAR(150) NOT NULL,
        description VARCHAR(300), 
        image BYTEA
      );
      
      CREATE TABLE IF NOT EXISTS Adventure (
        adventure_id SERIAL PRIMARY KEY,
        queen INT DEFAULT 50,
        popularity INT DEFAULT 50,
        health INT DEFAULT 50,
        size INT DEFAULT 50,
        end_id INT,
        FOREIGN KEY (end_id) REFERENCES Ending(end_id)
      );

      CREATE TABLE IF NOT EXISTS Deck (
        deck_id SERIAL PRIMARY KEY,
        start_card_id INT,
        end_card_id INT
      );

      CREATE TABLE IF NOT EXISTS Normal (
        deck_id INT PRIMARY KEY,
        status BOOLEAN DEFAULT FALSE,
        start_card_id INT,
        end_card_id INT,
        FOREIGN KEY (deck_id) REFERENCES Deck(deck_id)
      );

      CREATE TABLE IF NOT EXISTS Event (
        deck_id INT PRIMARY KEY,
        attempt INT DEFAULT 0,
        start_card_id INT,
        end_card_id INT,
        FOREIGN KEY (deck_id) REFERENCES Deck(deck_id)
      );

      CREATE TABLE IF NOT EXISTS Scene (
        scene_id SERIAL PRIMARY KEY,
        image BYTEA,
        name VARCHAR(50) NOT NULL
      );

      CREATE TABLE IF NOT EXISTS Dialogue (
        dialogue_id SERIAL PRIMARY KEY,
        description VARCHAR(300), 
        answer_left VARCHAR(300),
        answer_right VARCHAR(300)
      );

      CREATE TABLE IF NOT EXISTS Item (
        item_id SERIAL PRIMARY KEY,
        name VARCHAR(50) NOT NULL,
        icon VARCHAR(150),
        status BOOLEAN DEFAULT FALSE
      );

      CREATE TABLE IF NOT EXISTS Resource (
        resource_id SERIAL PRIMARY KEY,
        queen INT DEFAULT 0,
        popularity INT DEFAULT 0,
        health INT DEFAULT 0,
        size INT DEFAULT 0
      );

      CREATE TABLE IF NOT EXISTS Card (
        card_id SERIAL PRIMARY KEY,
        scene_id INT,
        dialogue_id INT,
        left_next_card INT,
        right_next_card INT,
        left_resource INT,
        right_resource INT,
        item_id INT,
        FOREIGN KEY (scene_id) REFERENCES Scene(scene_id),
        FOREIGN KEY (dialogue_id) REFERENCES Dialogue(dialogue_id),
        FOREIGN KEY (left_next_card) REFERENCES Card(card_id),
        FOREIGN KEY (right_next_card) REFERENCES Card(card_id),
        FOREIGN KEY (left_resource) REFERENCES Resource(resource_id),
        FOREIGN KEY (right_resource) REFERENCES Resource(resource_id),
        FOREIGN KEY (item_id) REFERENCES Item(item_id)
      );
    `);

    await pool.query(
      'INSERT INTO Ending (title, description, image) VALUES ($1, $2, $3)',
      ['o enfeite da rainha', 'A Rainha te ama tanto que decidiu fazer de sua cabeça uma coroa. Agora, estarão juntas para sempre.', insertImage('./images/deaths/flow.png')]
    );
    await pool.query(
      'INSERT INTO Ending (title, description, image) VALUES ($1, $2, $3)',
      ['sem coração', 'Seu coração pertence à Rainha. Ela o guardou em um lugar melhor que o seu corpo.', insertImage('./images/deaths/flow.png')]
    );
    await pool.query(
      'INSERT INTO Ending (title, description, image) VALUES ($1, $2, $3)',
      ['a descabeçada', 'Sua cabeça é um belo ornamento. A Rainha a colocou ao lado do seu trono.', insertImage('./images/deaths/flow.png')]
    );
    await pool.query(
      'INSERT INTO Ending (title, description, image) VALUES ($1, $2, $3)',
      ['a prisioneira', 'Você desafiou a Rainha Vermelha, e ela garantiu que você nunca mais fosse vista.', insertImage('./images/deaths/hanged.png')]
    );
    await pool.query(
        'INSERT INTO Ending (title, description, image) VALUES ($1, $2, $3)',
        ['a exilada', 'A Rainha Vermelha te baniu do País das Maravilhas, jogando-a no desfiladeiro e ao esquecimento.', insertImage('./images/deaths/hanged.png')]
    );
    await pool.query(
        'INSERT INTO Ending (title, description, image) VALUES ($1, $2, $3)',
        ['inimiga da coroa', 'Você se tornou inimiga da Rainha Vermelha e pagou o preço com a vida.', insertImage('./images/deaths/hanged.png')]
    );
    await pool.query(
        'INSERT INTO Ending (title, description, image) VALUES ($1, $2, $3)',
        ['aclamada e condenada', 'O povo te aclamou como heroína, mas a Rainha Vermelha não tolera rivais.', insertImage('./images/deaths/guillotine.png')]
    );
    await pool.query(
        'INSERT INTO Ending (title, description, image) VALUES ($1, $2, $3)',
        ['rainha usurpadora', 'O povo quis te coroar, mas a Rainha Vermelha garantiu que isso nunca acontecesse.', insertImage('./images/deaths/atacada.png')]
    );
    await pool.query(
        'INSERT INTO Ending (title, description, image) VALUES ($1, $2, $3)',
        ['a rainha que nunca foi', 'O povo te considerou a nova rainha, mas não é assim que as coisas funcionam... Você foi atacada.', insertImage('./images/deaths/atacada.png')]
    );
    await pool.query(
        'INSERT INTO Ending (title, description, image) VALUES ($1, $2, $3)',
        ['a banida', 'Rejeitada pelo povo, você foi expulsa e lançada no Abismo do Esquecimento.', insertImage('./images/deaths/selva.png')]
    );
    await pool.query(
        'INSERT INTO Ending (title, description, image) VALUES ($1, $2, $3)',
        ['forasteira solitária', 'Sem o apoio do povo, você foi deixada à própria sorte e desapareceu.', insertImage('./images/deaths/sozinha.png')]
    );
    await pool.query(
        'INSERT INTO Ending (title, description, image) VALUES ($1, $2, $3)',
        ['ostracizada', 'Detestada por todos, você foi banida e lançada à selva.', insertImage('./images/deaths/selva.png')]
    );
    await pool.query(
        'INSERT INTO Ending (title, description, image) VALUES ($1, $2, $3)',
        ['prisioneira da loucura', 'Você foi internada após ser consumida pela loucura do País das Maravilhas.', insertImage('./images/deaths/acordada.png')]
    );
    await pool.query(
        'INSERT INTO Ending (title, description, image) VALUES ($1, $2, $3)',
        ['refém dos delírios', 'Você acordou do surto, mas, perdida em suas fantasias, foi internada para sempre.', insertImage('./images/deaths/acordada.png')]
    );
    await pool.query(
        'INSERT INTO Ending (title, description, image) VALUES ($1, $2, $3)',
        ['consumida pela ilusão', 'Convencida de que estava em um mundo de fantasia, você foi internada.', insertImage('./images/deaths/acordada.png')]
    );
    await pool.query(
        'INSERT INTO Ending (title, description, image) VALUES ($1, $2, $3)',
        ['a doente', 'Com imunidade baixa, você foi vítima da Gripe das Maravilhas.', insertImage('./images/deaths/doente.png')]
    );
    await pool.query(
        'INSERT INTO Ending (title, description, image) VALUES ($1, $2, $3)',
        ['de porcelana', 'Seus ossos eram frágeis como porcelana. Você caiu e se quebrou toda.', insertImage('./images/deaths/osso.png')]
    );
    await pool.query(
        'INSERT INTO Ending (title, description, image) VALUES ($1, $2, $3)',
        ['a desnutrida', 'Você se alimentou mal, só tomando porções e biscoitos. Eventualmente, seu corpo parou de funcionar.', insertImage('./images/deaths/doente.png')]
    );

    await pool.query(`
        INSERT INTO Resource (resource_id, queen, popularity, health, size) VALUES
        (1000, 0, 0, 0, 0), 
        (1, 0, 0, 0, 10), 
        (2, 0, 0, 10, 0), 
        (3, 0, 0, 10, 10), 
        (4, 0, 10, 0, 0), 
        (5, 0, 10, 0, 10), 
        (6, 0, 10, 10, 0), 
        (7, 0, 10, 10, 10), 
        (8, 10, 0, 0, 0), 
        (9, 10, 0, 0, 10), 
        (10, 10, 0, 10, 0), 
        (11, 10, 0, 10, 10), 
        (12, 10, 10, 0, 0), 
        (13, 10, 10, 0, 10), 
        (14, 10, 10, 10, 0), 
        (15, 10, 10, 10, 10), 
        (16, 0, 0, 0, -10), 
        (17, 0, 0, -10, 0), 
        (18, 0, 0, -10, -10), 
        (19, 0, -10, 0, 0), 
        (20, 0, -10, 0, -10), 
        (21, 0, -10, -10, 0), 
        (22, 0, -10, -10, -10), 
        (23, -10, 0, 0, 0), 
        (24, -10, 0, 0, -10), 
        (25, -10, 0, -10, 0), 
        (26, -10, 0, -10, -10), 
        (27, -10, -10, 0, 0), 
        (28, -10, -10, 0, -10), 
        (29, -10, -10, -10, 0), 
        (30, -10, -10, -10, -10), 
        (31, 10, 0, 0, -10), 
        (32, 10, 0, -10, 0), 
        (33, 10, 0, -10, -10), 
        (34, 10, -10, 0, 0), 
        (35, 10, -10, 0, -10), 
        (36, 10, -10, -10, 0), 
        (37, 10, -10, -10, -10), 
        (38, 0, 10, 0, -10), 
        (39, 0, 10, -10, 0), 
        (40, 0, 10, -10, -10), 
        (41, 0, -10, 10, 0), 
        (42, 0, -10, 10, -10), 
        (43, 0, -10, -10, 10), 
        (44, 0, -10, -10, -10), 
        (45, 10, 10, 0, -10), 
        (46, 10, 10, -10, 0), 
        (47, 10, 10, -10, -10), 
        (48, 10, -10, 10, 0), 
        (49, 10, -10, 10, -10), 
        (50, 10, -10, -10, 10), 
        (51, 10, -10, -10, -10), 
        (52, 0, 10, 10, -10), 
        (53, 0, 10, -10, 10), 
        (54, 0, 10, -10, -10), 
        (55, 0, -10, 10, 10), 
        (56, 0, -10, 10, -10), 
        (57, 0, -10, -10, 10), 
        (58, 0, -10, -10, -10), 
        (59, 10, 10, 10, -10), 
        (60, 10, 10, -10, 10), 
        (61, 10, 10, -10, -10), 
        (62, 10, -10, 10, 10), 
        (63, 10, -10, 10, -10), 
        (64, 10, -10, -10, 10), 
        (65, 10, -10, -10, -10), 
        (66, 0, 10, 10, 10), 
        (67, 0, 10, -10, 10), 
        (68, 0, 0, -10, 10), 
        (69, -10, 10, 10, 10), 
        (70, -10, 10, 10, 0), 
        (71, -10, 10, 10, -10), 
        (72, -10, 10, 0, 10), 
        (73, -10, 10, 0, 0), 
        (74, -10, 10, 0, -10), 
        (75, -10, 10, -10, 10), 
        (76, -10, 10, -10, 0), 
        (77, -10, 10, -10, -10), 
        (78, -10, 0, 10, 10), 
        (79, -10, 0, 10, 0), 
        (80, -10, 0, 10, -10), 
        (81, -10, 0, 0, 10), 
        (82, 0, 0, 10, -10), 
        (100, 0, 0, 0, 100), 
        (101, 0, 0, 100, 0), 
        (102, 0, 100, 0, 0), 
        (103, 100, 0, 0, 0), 
        (104, 0, 0, 0, -100), 
        (105, 0, 0, -100, 0), 
        (106, 0, -100, 0, 0), 
        (107, -100, 0, 0, 0);
    `);    

    // População da tabela Scene  
        await pool.query(
          'INSERT INTO Scene (scene_id, name, image) VALUES ($1, $2, $3)',
          [1, 'Gato', insertImage('./images/scene/gato.png')]
        );
        await pool.query(
          'INSERT INTO Scene (scene_id, name, image) VALUES ($1, $2, $3)',
          [2, 'Chapeleiro Maluco', insertImage('./images/scene/gato.png')]
        );
        await pool.query(
          'INSERT INTO Scene (scene_id, name, image) VALUES ($1, $2, $3)',
          [3, 'Coelho Branco', insertImage('./images/scene/coelho.png')]
        );
        await pool.query(
          'INSERT INTO Scene (scene_id, name, image) VALUES ($1, $2, $3)',
          [4, 'Rainha de Copas', insertImage('./images/scene/rainha.png')]
        );
        await pool.query(
          'INSERT INTO Scene (scene_id, name, image) VALUES ($1, $2, $3)',
          [5, 'Lebre de Março', insertImage('./images/scene/lebre.png')]
        );
        await pool.query(
          'INSERT INTO Scene (scene_id, name, image) VALUES ($1, $2, $3)',
          [6, 'Absolem', insertImage('./images/scene/lagarta.png')]
        );
        await pool.query(
          'INSERT INTO Scene (scene_id, name, image) VALUES ($1, $2, $3)',
          [7, 'Tweedledee e Tweedledum', insertImage('./images/scene/irmaos.png')]
        );
    
        await pool.query(`
            INSERT INTO Dialogue (dialogue_id, description, answer_left, answer_right) VALUES 
            (1, 'Oi Alice, ouvi dizer que a rainha escuta tudo. Você deseja organizar uma revolução contra ela?', 'Sim', 'Não'),
            (2, 'O coelho gostaria de participar da revolução. Deveríamos deixá-lo?', 'Claro', 'Jamais'),
            (3, 'A Rainha de Copas está assistindo. Você vai encarar o olhar dela?', 'Encarar', 'Desviar'),
            (4, 'As rosas estão sendo pintadas de vermelho. Você acha que é melhor continuar?', 'Sim', 'Parar'),
            (5, 'Você está cansada de seguir regras, quer quebrar o protocolo?', 'Sempre', 'Nunca'),
            (6, 'A Absolem disse que sua mente está bagunçada. Está pronta para aceitar ajuda?', 'Sim', 'Não'),
            (7, 'Tweedledee e Tweedledum estão em desacordo. Vai tentar acalmá-los?', 'Tentar', 'Ignorar'),
            (8, 'O Chapeleiro te oferece chá. Vai aceitar a oferta?', 'Aceitar', 'Recusar'),
            (9, 'O coelho está atrasado de novo. Você o ajuda a correr?', 'Ajudar', 'Ignorar'),
            (10, 'As portas estão todas trancadas. Você vai esperar ou tentar arrombar?', 'Esperar', 'Arrombar'),
            (11, 'Você ouviu uma ordem estranha da Rainha. Vai obedecer?', 'Obedecer', 'Rejeitar'),
            (12, 'Absolem pergunta quem você realmente é. Vai responder?', 'Responder', 'Silenciar'),
            (13, 'Tweedledee quer que você o escolha. Tweedledum também. Vai escolher?', 'Dee', 'Dum'),
            (14, 'Chapeleiro está rindo descontroladamente. Isso te incomoda?', 'Sim', 'Não'),
            (15, 'A Rainha pede para jogar croquet com você. Aceita?', 'Aceitar', 'Recusar'),
            (16, 'O coelho oferece um biscoito. Vai comer?', 'Comer', 'Recusar'),
            (17, 'O Gato sorri enigmático. Você confia nele?', 'Sim', 'Não'),
            (18, 'A Lebre está furiosa com a Rainha. Você concorda?', 'Sim', 'Não'),
            (19, 'Tweedledum sugere fugir do País das Maravilhas. Você concorda?', 'Sim', 'Não'),
            (20, 'Absolem te mostra uma estrada oculta. Vai seguir?', 'Sim', 'Não'),
            (21, 'O Chapeleiro fala sobre sonhos. Você acha que está em um sonho?', 'Sim', 'Não'),
            (22, 'A Rainha pergunta se você é leal. O que vai dizer?', 'Sim', 'Não'),
            (23, 'A Lebre diz que seguir ordens é para fracos. Você concorda?', 'Sim', 'Não'),
            (24, 'O Gato oferece um caminho desconhecido. Vai seguir?', 'Sim', 'Não'),
            (25, 'O coelho está com medo. Vai confortá-lo?', 'Sim', 'Não'),
            (26, 'Tweedledee diz que a Rainha é justa. Você acredita?', 'Sim', 'Não'),
            (27, 'Absolem te avisa sobre as consequências. Vai prestar atenção?', 'Sim', 'Não'),
            (28, 'O Chapeleiro pergunta se você gosta de aventura. O que acha?', 'Sim', 'Não'),
            (29, 'A Rainha pergunta se você tem algo a esconder. Vai confessar?', 'Sim', 'Não'),
            (30, 'O Gato sugere que tudo é uma ilusão. Você acredita?', 'Sim', 'Não'),
            (31, 'O coelho está com pressa. Vai segui-lo?', 'Seguir', 'Ignorar'),
            (32, 'O Gato sugere que a Rainha sabe mais do que parece. Você concorda?', 'Sim', 'Não'),
            (33, 'A Lebre está rindo descontroladamente. Você ri com ela?', 'Rir', 'Sério'),
            (34, 'Absolem diz que a estrada é longa e cheia de mistérios. Vai continuar?', 'Sim', 'Parar'),
            (35, 'Tweedledee e Tweedledum estão brigando por uma pena. Vai intervir?', 'Sim', 'Não'),
            (36, 'Chapeleiro está te observando. Você pergunta o que ele quer?', 'Sim', 'Ignorar'),
            (37, 'A Rainha pede sua opinião sobre o trono. O que vai dizer?', 'Soberba', 'Justo'),
            (38, 'O Gato aparece de repente. Você o segue?', 'Sim', 'Não'),
            (39, 'O coelho te convida para uma corrida. Vai participar?', 'Correr', 'Esperar'),
            (40, 'Absolem pergunta se você entende o verdadeiro significado de poder. Entende?', 'Sim', 'Não'),
            (41, 'Tweedledum acusa Tweedledee de mentir. Vai investigar?', 'Sim', 'Não'),
            (42, 'O Chapeleiro está falando com enigmas. Vai tentar entender?', 'Tentar', 'Ignorar'),
            (43, 'A Rainha sugere que todos a amam. Você concorda?', 'Sim', 'Não'),
            (44, 'O coelho pergunta se tudo isso é real. O que você acha?', 'Real', 'Sonho'),
            (45, 'Absolem quer saber se você está preparada para o desconhecido. Está?', 'Sim', 'Não'),
            (46, 'Tweedledee pergunta se você confia no coelho. Confia?', 'Sim', 'Não'),
            (47, 'O Gato sugere que nada faz sentido. Você concorda?', 'Sim', 'Não'),
            (48, 'A Lebre te dá um relógio quebrado. Vai aceitar?', 'Aceitar', 'Recusar'),
            (49, 'Chapeleiro pergunta se o tempo é relativo. O que acha?', 'Sim', 'Não'),
            (50, 'A Rainha te dá um enigma para resolver. Vai tentar?', 'Sim', 'Não'),
            (51, 'O coelho diz que o tempo está acabando. Vai correr?', 'Correr', 'Ficar'),
            (52, 'Absolem te olha de forma curiosa. Você pergunta por quê?', 'Sim', 'Não'),
            (53, 'Tweedledum está escondendo algo. Você confronta?', 'Sim', 'Não'),
            (54, 'Chapeleiro menciona algo sobre a eternidade. Você acha que é real?', 'Sim', 'Não'),
            (55, 'A Rainha pergunta se você está com medo. Está?', 'Sim', 'Não'),
            (56, 'O Gato diz que a Rainha está mais perto do que você pensa. Você acredita?', 'Sim', 'Não'),
            (57, 'A Lebre te dá um bolo. Vai comer?', 'Comer', 'Recusar'),
            (58, 'Absolem te dá um conselho sobre paciência. Você vai seguir?', 'Sim', 'Não'),
            (59, 'Tweedledee sugere que você pode mudar seu destino. Concorda?', 'Sim', 'Não'),
            (60, 'O coelho está prestes a tomar uma decisão importante. Vai ajudar?', 'Sim', 'Não'),
            (61, 'O Gato diz que você está sendo observada. O que acha?', 'Sim', 'Não'),
            (62, 'A Lebre te dá um conselho sobre coragem. Você vai ouvir?', 'Sim', 'Não'),
            (63, 'Chapeleiro pergunta se você acredita em destino. Acredita?', 'Sim', 'Não'),
            (64, 'A Rainha pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (65, 'O coelho te dá um conselho sobre escolhas. Vai ouvir?', 'Sim', 'Não'),
            (66, 'O Gato diz que você está em perigo. O que acha?', 'Sim', 'Não'),
            (67, 'A Lebre te dá um conselho sobre confiança. Você vai seguir?', 'Sim', 'Não'),
            (68, 'Absolem pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (69, 'Tweedledee pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (70, 'Tweedledum pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (71, 'Chapeleiro pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (72, 'A Rainha pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (73, 'O coelho pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (74, 'O Gato pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (75, 'A Lebre pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (76, 'Absolem pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (77, 'Tweedledee pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (78, 'Tweedledum pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (79, 'Chapeleiro pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (80, 'A Rainha pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (81, 'O coelho pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (82, 'O Gato pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (83, 'A Lebre pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (84, 'Absolem pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (85, 'Tweedledee pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (86, 'Tweedledum pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (87, 'Chapeleiro pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (88, 'A Rainha pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (89, 'O coelho pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (90, 'O Gato pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (91, 'A Lebre pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (92, 'Absolem pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (93, 'Tweedledee pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (94, 'Tweedledum pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (95, 'Chapeleiro pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (96, 'A Rainha pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (97, 'O coelho pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (98, 'O Gato pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (99, 'A Lebre pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (100, 'Absolem pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (101, 'Tweedledee pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (102, 'Tweedledum pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (103, 'Chapeleiro pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (104, 'A Rainha pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (105, 'O coelho pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (106, 'O Gato pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não'),
            (107, 'A Lebre pergunta se você está pronta para o que vem a seguir. Está?', 'Sim', 'Não');
          `);
      
    // População da tabela Item
    await pool.query(`
      INSERT INTO Item (name, icon, status) VALUES
      ('Coma', 'cake', true),
      ('Beba', 'coffee', true),
      ('Chapel', 'hat', false),
      ('Flor', 'flower', false)
    `);

    // População da tabela Card
    await pool.query(`
        INSERT INTO Card (card_id, scene_id, dialogue_id, left_next_card, right_next_card, left_resource, right_resource, item_id) VALUES 
        (1, 2, 1, 2, 3, 23, 8, NULL),
        (2, 3, 2, 4, 5, 13, 24, NULL),
        (3, 4, 3, 6, 7, 11, 18, NULL),
        (4, 7, 4, 8, 9, 12, 21, NULL),
        (5, 6, 5, 10, 11, 0, 6, NULL),
        (6, 6, 6, 12, 13, 6, 10, NULL),
        (7, 7, 7, 14, 15, 5, 11, NULL),
        (8, 2, 8, 16, 17, 20, 18, NULL),
        (9, 3, 9, 18, 19, 13, 11, NULL),
        (10, 5, 10, 20, 21, 10, 16, NULL),
        (11, 4, 11, 22, 23, 11, 19, NULL),
        (12, 6, 12, 24, 25, 14, 6, NULL),
        (13, 7, 13, 26, 27, 9, 8, NULL),
        (14, 2, 14, 28, 29, 12, 7, NULL),
        (15, 4, 15, 30, 1, 21, 11, NULL),
        (16, 3, 16, 31, 32, 20, 10, NULL),
        (17, 1, 17, 33, 34, 10, 7, NULL),
        (18, 5, 18, 35, 36, 5, 14, NULL),
        (19, 7, 19, 37, 38, 6, 9, NULL),
        (20, 6, 20, 39, 40, 6, 10, NULL),
        (21, 2, 21, 41, 42, 0, 10, NULL),
        (22, 4, 22, 43, 44, 11, 19, NULL),
        (23, 5, 23, 45, 46, 14, 7, NULL),
        (24, 1, 24, 47, 48, 10, 7, NULL),
        (25, 3, 25, 49, 50, 12, 15, NULL),
        (26, 7, 26, 51, 52, 19, 5, NULL),
        (27, 6, 27, 53, 54, 6, 10, NULL),
        (28, 2, 28, 55, 56, 14, 10, NULL),
        (29, 4, 29, 57, 58, 11, 19, NULL),
        (30, 1, 30, 59, 60, 9, 13, NULL),
        (31, 3, 31, 32, 33, 13, 5, NULL),
        (32, 1, 32, 34, 35, 10, 8, NULL),
        (33, 5, 33, 36, 37, 11, 7, NULL),
        (34, 6, 34, 38, 39, 6, 12, NULL),
        (35, 7, 35, 40, 41, 8, 4, NULL),
        (36, 2, 36, 42, 43, 7, 10, NULL),
        (37, 4, 37, 44, 45, 11, 18, NULL),
        (38, 1, 38, 46, 47, 10, 8, NULL),
        (39, 3, 39, 48, 49, 13, 20, NULL),
        (40, 6, 40, 50, 51, 6, 12, NULL),
        (41, 7, 41, 52, 53, 11, 5, NULL),
        (42, 2, 42, 54, 55, 14, 7, NULL),
        (43, 4, 43, 56, 57, 11, 19, NULL),
        (44, 3, 44, 58, 59, 12, 9, NULL),
        (45, 6, 45, 60, 31, 6, 14, NULL),
        (46, 7, 46, 32, 33, 11, 7, NULL),
        (47, 1, 47, 34, 35, 9, 13, NULL),
        (48, 5, 48, 36, 37, 12, 10, NULL),
        (49, 2, 49, 38, 39, 14, 10, NULL),
        (50, 4, 50, 40, 41, 11, 19, NULL),
        (51, 3, 51, 42, 43, 10, 16, NULL),
        (52, 6, 52, 44, 45, 14, 7, NULL),
        (53, 7, 53, 46, 47, 19, 5, NULL),
        (54, 2, 54, 48, 49, 14, 10, NULL),
        (55, 4, 55, 50, 51, 11, 19, NULL),
        (56, 1, 56, 52, 53, 12, 9, NULL),
        (57, 5, 57, 54, 55, 20, 10, NULL),
        (58, 6, 58, 56, 57, 14, 7, NULL),
        (59, 7, 59, 58, 59, 6, 9, NULL),
        (60, 3, 60, 60, 31, 12, 9, NULL),
        (61, 6, 61, 32, 33, 6, 12, NULL),
        (62, 7, 62, 34, 35, 11, 19, NULL),
        (63, 2, 63, 36, 37, 14, 7, NULL),
        (64, 4, 64, 38, 39, 11, 19, NULL),
        (65, 1, 65, 40, 41, 12, 9, NULL),
        (66, 5, 66, 42, 43, 20, 10, NULL),
        (67, 6, 67, 44, 45, 14, 7, NULL),
        (68, 7, 68, 46, 47, 6, 9, NULL),
        (69, 2, 69, 48, 49, 14, 7, NULL),
        (70, 4, 70, 50, 51, 11, 19, NULL),
        (71, 3, 71, 52, 53, 12, 9, NULL),
        (72, 6, 72, 54, 55, 14, 7, NULL),
        (73, 7, 73, 56, 57, 19, 5, NULL),
        (74, 2, 74, 58, 59, 14, 10, NULL),
        (75, 4, 75, 60, 31, 11, 19, NULL),
        (76, 1, 76, 32, 33, 12, 9, NULL),
        (77, 5, 77, 34, 35, 20, 10, NULL),
        (78, 6, 78, 36, 37, 14, 7, NULL),
        (79, 7, 79, 38, 39, 6, 9, NULL),
        (80, 2, 80, 40, 41, 14, 7, NULL),
        (81, 4, 81, 42, 43, 11, 19, NULL),
        (82, 1, 82, 44, 45, 12, 9, NULL),
        (83, 5, 83, 46, 47, 20, 10, NULL),
        (84, 6, 84, 48, 49, 14, 7, NULL),
        (85, 7, 85, 50, 51, 19, 5, NULL),
        (86, 2, 86, 52, 53, 14, 10, NULL),
        (87, 4, 87, 54, 55, 11, 19, NULL),
        (88, 1, 88, 56, 57, 12, 9, NULL),
        (89, 5, 89, 58, 59, 20, 10, NULL),
        (90, 6, 90, 60, 31, 14, 7, NULL),
        (91, 6, 91, 32, 33, 6, 12, NULL),
        (92, 7, 92, 34, 35, 11, 19, NULL),
        (93, 2, 93, 36, 37, 14, 7, NULL),
        (94, 4, 94, 38, 39, 11, 19, NULL),
        (95, 1, 95, 40, 41, 12, 9, NULL),
        (96, 5, 96, 42, 43, 20, 10, NULL),
        (97, 6, 97, 44, 45, 14, 7, NULL),
        (98, 7, 98, 46, 47, 6, 9, NULL),
        (99, 2, 99, 48, 49, 14, 7, NULL),
        (100, 4, 100, 50, 51, 11, 19, NULL),
        (101, 3, 101, 52, 53, 12, 9, NULL),
        (102, 6, 102, 54, 55, 14, 7, NULL),
        (103, 7, 103, 56, 57, 19, 5, NULL),
        (104, 2, 104, 58, 59, 14, 10, NULL),
        (105, 4, 105, 60, 31, 11, 19, NULL),
        (106, 1, 106, 32, 33, 12, 9, NULL),
        (107, 5, 107, 34, 35, 20, 10, NULL);
      `);

      await pool.query(`
        -- Cria um deck e associa todas as cartas ao deck normal
        INSERT INTO Deck (deck_id, start_card_id, end_card_id) VALUES (1, 1, 107);
  
        -- Define que o deck é normal e associa o deck_id ao deck normal
        INSERT INTO Normal (deck_id, status, start_card_id, end_card_id) VALUES (1, TRUE, 1, 107);
      `);

    await pool.query('COMMIT');
    console.log('Seed completo executado com sucesso!');
  } catch (error) {
    await pool.query('ROLLBACK');
    console.error('Erro ao executar o seed:', error);
  } finally {
    await pool.end();
  }
};

seedDatabase();
