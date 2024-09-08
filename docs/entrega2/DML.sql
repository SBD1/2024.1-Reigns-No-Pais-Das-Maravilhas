-- --------------------------------------------------------------------------------------
-- Data Criacao ...........: 20/08/2024                                                
-- Autor(es) ..............: Kauan Eiras                                            
-- Versao ..............: 1.0                                                          
-- Banco de Dados .........: PostgreSQL                                                
-- Descricao .........: Carga de todas as tabelas do banco de dados.                   
-- --------------------------------------------------------------------------------------

BEGIN TRANSACTION;

-- POSSIVEIS FINAIS

INSERT INTO End (cause, title, about, image) VALUES 
('Rainha 100', 'o enfeite da rainha', 'A Rainha te ama tanto que decidiu fazer de sua cabeça uma coroa. Agora, estarão juntas para sempre.', NULL),
('Rainha 100', 'sem coração', 'Seu coração pertence à Rainha. Ela o guardou em um lugar melhor que o seu corpo.', NULL),
('Rainha 100', 'a descabeçada', 'Sua cabeça é um belo ornamento. A Rainha a colocou ao lado do seu trono.', NULL), 
('Rainha 0', 'a prisioneira', 'Você desafiou a Rainha Vermelha, e ela garantiu que você nunca mais fosse vista.', NULL),
('Rainha 0', 'a exilada', 'A Rainha Vermelha te baniu do País das Maravilhas, jogando-a no desfiladeiro e ao esquecimento.', NULL),
('Rainha 0', 'inimiga da coroa', 'Você se tornou inimiga da Rainha Vermelha e pagou o preço com a vida.', NULL),
('popularity 100', 'aclamada e condenada', 'O povo te aclamou como heroína, mas a Rainha Vermelha não tolera rivais.', NULL),
('popularity 100', 'rainha usurpadora', 'O povo quis te coroar, mas a Rainha Vermelha garantiu que isso nunca acontecesse.', NULL),
('popularity 100', 'a rainha que nunca foi', 'O povo te considerou a nova rainha, mas não é assim que as coisas funcionam... Você foi atacada.', NULL),
('popularity 0', 'a banida', 'Rejeitada pelo povo, você foi expulsa e lançada no Abismo do Esquecimento.', NULL),
('popularity 0', 'forasteira solitária', 'Sem o apoio do povo, você foi deixada à própria sorte e desapareceu.', NULL),
('popularity 0', 'ostracizada', 'Detestada por todos, você foi banida e lançada à selva.', NULL),
('life 100', 'prisioneira da loucura', 'Você foi internada após ser consumida pela loucura do País das Maravilhas.', NULL),
('life 100', 'refém dos delírios', 'Você acordou do surto, mas, perdida em suas fantasias, foi internada para sempre.', NULL),
('life 100', 'consumida pela ilusão', 'Convencida de que estava em um mundo de fantasia, você foi internada.', NULL),
('life 0', 'a doente', 'Com imunidade baixa, você foi vítima da Gripe das Maravilhas e morreu sufocada.', NULL),
('life 0', 'de porcelana', 'Seus ossos eram frágeis como porcelana. Você caiu e se quebrou toda.', NULL),
('life 0', 'a desnutrida', 'Você se alimentou mal, só tomando porções e biscoitos. Eventualmente, seu corpo parou de funcionar.', NULL);

INSERT INTO Resource (id_resource, queen, popularity, life, size) VALUES 
(0, 0, 0, 0, 0),
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

INSERT INTO Scene (scene_id, name, image) VALUES 
(1, 'Chessur', NULL),
(2, 'Chapeleiro Maluco', NULL),
(3, 'Coelho Branco', NULL),
(4, 'Rainha de Copas', NULL),
(5, 'Lebre de Março', NULL),
(6, 'Arganaz', NULL),
(7, 'Cachorro', NULL),
(8, 'Tweedledee e Tweedledum', NULL),
(9, 'Homem Queixudo', NULL),
(10, 'Mulher Orelhuda', NULL),
(11, 'Valete de Copas', NULL),
(12, 'Jaguadarte', NULL),
(13, 'Absolem', NULL),
(14, 'Rainha Branca', NULL),
(1000, 'Coelho Correndo', NULL),
(1001, 'Queda no Buraco', NULL),
(1002, 'Biscoito do Crescimento', NULL),
(1003, 'Liquido do Encolhimento', NULL),
(1004, 'Porta Trancada', NULL),
(1005, 'País das Maravilhas', NULL),
(1010, 'Enchente', NULL),
(1012, 'Coelho Apressado', NULL),
(1013, 'Espelho', NULL),
(1014, 'Buraco', NULL),
(1015, 'Febre', NULL),
(1016, 'Espinho', NULL),
(1017, 'Gato Risonho Desaparecendo', NULL),
(1018, 'Salão das Portas', NULL),
(1019, 'Jardim das Flores Falantes', NULL),
(1020, 'Jogo de Croquet', NULL),
(1021, 'Mesa de Chá do Chapeleiro', NULL),
(1022, 'Tribunal da Rainha de Copas', NULL),
(1023, 'Brincadeira de Palavras', NULL),
(1024, 'Corrida Maluca', NULL),
(1025, 'Transformação de Alice', NULL),
(1026, 'O Sonho', NULL);

-- Inserindo diálogos na tabela Dialogue
INSERT INTO Dialogue (dialogue_id, description, answer_left, answer_right) VALUES 

-- Diálogos Gerais
(1, 'Desaparecer ou enfrentar?', 'desaparecer', 'enfrentar'), 
(2, 'Sonho ou lembrança?', 'sonho', 'lembrança'),
(3, 'Confiar no que vê ou no que sente?', 'ver', 'sentir'),
(4, 'Caos ou ordem?', 'caos', 'ordem'),
(5, 'Jogar sabendo que a Rainha trapaceia?', 'jogar', 'trapacear'),
(6, 'Sombra ou luz?', 'sombra', 'luz'),
(7, 'Bênção ou maldição?', 'bênção', 'maldição'),
(8, 'Controle ou liberdade?', 'controle', 'liberdade'),
(9, 'Te transformou ou revelou?', 'transformou', 'revelou'),
(10, 'Desaparecer é inteligente?', 'desaparecer', 'inteligente'),

-- Chapeleiro Maluco
(11, 'Todos somos loucos aqui?', 'Sim', 'Não'),
(12, 'Ser normal é uma maldição?', 'Sim', 'Não'),
(13, 'Chá ou Rainha?', 'Chá', 'Rainha'),
(14, 'Lógica ou absurdo?', 'Lógica', 'Absurdo'),
(15, 'Aceita um chapéu curioso?', 'Sim', 'Não'),
(16, 'Tempo contra você?', 'Sim', 'Não'),
(17, 'Tomaria chá para sempre?', 'Sim', 'Não'),
(18, 'Agora ou poderia ser?', 'Agora', 'Poderia ser'),
(19, 'Sentidos ou intuição?', 'Sentidos', 'Intuição'),
(20, 'Minha loucura é contagiante?', 'Sim', 'Não'),

-- Rainha de Copas
(21, 'Obedece sem questionar?', 'Sim', 'Não'),
(22, 'Merece estar ao meu lado?', 'Sim', 'Não'),
(23, 'Quem devo punir?', 'Você', 'Outro'),
(24, 'Jura lealdade incondicional?', 'Sim', 'Não'),
(25, 'Gosta de jogar croquet?', 'Sim', 'Não'),
(26, 'Trairia minha confiança?', 'Sim', 'Não'),
(27, 'No meu lugar, o que faria?', 'Cortaria Cabeças', 'Seria Amigável'),
(28, 'Sou justa?', 'Sim', 'Não'),
(29, 'Tem medo de mim?', 'Sim', 'Não'),
(30, 'Confiança é uma via de mão dupla?', 'Sim', 'Não'),

-- Lebre de Março
(31, 'Chá ou café?', 'Chá', 'Café'),
(32, 'Aceita uma xícara?', 'Sim', 'Não'),
(33, 'Tempo está contra nós?', 'Contra', 'A favor'),
(34, 'Passado ou presente?', 'Passado', 'Presente'),
(35, 'Realidade ou imaginação?', 'Realidade', 'Imaginação'),

-- Arganaz (Dormouse)
(36, 'Dormir demais é problema?', 'Sim', 'Não'),
(37, 'Sou preguiçoso?', 'Sim', 'Não'),
(38, 'Confiaria em um conselheiro dorminhoco?', 'Sim', 'Não'),
(39, 'Sonhar com a Rainha é estranho?', 'Sim', 'Não'),
(40, 'Dormir é fugir?', 'Sim', 'Não'),

-- Coelho Branco
(40, 'Correr ou enfrentar?', 'Correr', 'Enfrentar'),
(41, 'Pontual ou correto?', 'Pontual', 'Correto'),
(42, 'Dever ou desejo?', 'Dever', 'Desejo'),
(43, 'Dá para recuperar o tempo perdido?', 'Sim', 'Não'),
(44, 'Tempo escapa?', 'Sim', 'Não'),
(45, 'Correr deixa o tempo para trás?', 'Sim', 'Não'),
(46, 'Chegar mais cedo ou na hora?', 'Cedo', 'Na hora'),
(47, 'Atrasado para algo importante?', 'Sim', 'Não'),
(48, 'Voltaria no tempo?', 'Sim', 'Não'),
(49, 'Tempo conspira contra você?', 'Sim', 'Não'),

-- Cachorro
(50, 'Confia em seus instintos?', 'Sim', 'Não'),
(51, 'Proteger quem ama?', 'Sim', 'Não'),
(52, 'Lealdade é absoluta?', 'Sim', 'Não'),
(53, 'Força ou coração?', 'Força', 'Coração'),
(54, 'Seguiria ordens contra sua moral?', 'Sim', 'Não'),
(55, 'Como lida com traição?' 'Perdão', 'Vingança'),
(56, 'Proteger amigo ou cumprir dever?', 'Amigo', 'Dever'),
(57, 'É possivel ser forte e gentil ao mesmo tempo?', 'Sim', 'Não'),
(58, 'Temido ou amado?', 'Temido', 'Amado'),
(59, 'Justiça severa ou misericordiosa?', 'Severa', 'Misericordiosa'),

-- Tweedledee e Tweedledum
(60, 'Verdade ou felicidade?', 'Verdade', 'Felicidade'),
(61, 'Quem é mais inteligente, eu ou ele?', 'Você', 'Ele'),
(62, 'Por que as coisas são assim?', 'Destino', 'Escolha'),
(63, 'Se brigássemos, quem apoiaria?', 'Você', 'Ele'),
(64, 'Nada disso é real?', 'Sim', 'Não'),
(65, 'Escolheria a mim ou a ele?', 'Você', 'Ele'),
(66, 'Rainha ou nós dois juntos?', 'Rainha', 'Nós dois'),
(67, 'Ganhar todos os jogos?', 'Sim', 'Não'),
(68, 'Se mentíssemos, em quem acreditaria?', 'Você', 'Ele'),
(69, 'Sentiria falta se desaparecêssemos?', 'Sim', 'Não'),

-- Homem Queixudo
(70, 'Digna da atenção da Rainha?', 'Sim', 'Não'),
(71, 'Rainha tem companhias melhores?', 'Sim', 'Não'),
(72, 'Rainha confiaria em você?', 'Sim', 'Não'),
(73, 'Entende as complexidades da corte?', 'Sim', 'Não'),
(74, 'Rainha te aceitaria conhecendo seus segredos?', 'Sim', 'Não'),
(75, 'Pode superar minha influência?', 'Sim', 'Não'),
(76, 'Rainha precisa de você para orientação?', 'Sim', 'Não'),
(77, 'Lealdade ou segurança?', 'Lealdade', 'Segurança'),
(78, 'Se atreveria a falar a verdade?', 'Sim', 'Não'),
(79, 'Rainha pode confiar em você?', 'Sim', 'Não'),

--Mulher Orelhuda
(80, 'Quer saber o que ouvi sobre você?', 'Sim', 'Não'),
(81, 'Rainha deveria confiar em você?', 'Sim', 'Não'),
(82, 'Se Rainha soubesse, como se sentiria?', 'Bem', 'Mal'),
(83, 'Rainha deveria ouvir tudo?', 'Sim', 'Não'),
(84, 'Devo compartilhar com a Rainha?', 'Sim', 'Não'),
(85, 'Pode esconder algo de mim?', 'Sim', 'Não'),
(86, 'Me daria uma razão para não contar à Rainha?', 'Sim', 'Não'),
(87, 'Lealdade deve ser provada?', 'Sim', 'Não'),
(88, 'Falar demais é perigoso?', 'Sim', 'Não'),
(89, 'Rainha não gosta de segredos, concorda?', 'Sim', 'Não'),

-- -- Jaguadarte
-- (90, 'Jaguadarte aparece para você, sente medo?'),

-- Jaguadarte
(90, 'Jaguadarte aparece para você, sente medo?', 'Sim', 'Não'),

-- Absolem
(91, 'Quem é você?', 'Alice', 'Ninguém'),
(92, 'Acredita no destino?', 'Sim', 'Não'),
(93, 'Entende a importância do tempo?', 'Sim', 'Não'),
(94, 'Sabedoria vem com a idade?', 'Sim', 'Não'),
(95, 'Está pronta para as mudanças?', 'Sim', 'Não'),
(96, 'Reencarnação é real?', 'Sim', 'Não'),
(97, 'Real ou ilusão?', 'Real', 'Ilusão'),
(98, 'Ciente das consequências?', 'Sim', 'Não'),
(99, 'Conhecimento é um fardo?', 'Sim', 'Não'),
(100, 'Satisfeita com suas escolhas?', 'Sim', 'Não'),
-- Rainha Branca
(101, 'Paz sem sacrifícios?', 'Sim', 'Não'),
(102, 'Justiça ou misericórdia?', 'Justiça', 'Misericórdia'),
(103, 'Bondade é fraqueza?', 'Sim', 'Não'),
(104, 'Bem maior ou felicidade de poucos?', 'Bem maior', 'Felicidade de poucos'),
(105, 'Todos merecem segunda chance?', 'Sim', 'Não'),
(106, 'Mudaria o passado?', 'Sim', 'Não'),
(107, 'Verdade ou harmonia?', 'Verdade', 'Harmonia'),
(108, 'Gentileza vence adversidades?', 'Sim', 'Não'),
(109, 'Dever ou felicidade?', 'Dever', 'Felicidade'),
(110, 'Uma pessoa pode mudar o mundo?', 'Sim', 'Não'),

-- Valete de Copas
(111, 'Justiça é cega?', 'Sim', 'Não'),
(112, 'Temido ou respeitado?', 'Temido', 'Respeitado'),
(113, 'Lei é justa para todos?', 'Sim', 'Não'),
(114, 'Punição ensina?', 'Sim', 'Não'),
(115, 'Juiz ou executor?', 'Juiz', 'Executor'),
(116, 'Lei é absoluta?', 'Sim', 'Não'),
(117, 'O que faria com uma lei injusta?', 'Cumprir', 'Desobedecer'),
(118, 'Justiça pode ser cega e surda?', 'Sim', 'Não'),
(119, 'Mudaria uma lei?', 'Sim', 'Não'),

-- Valete de Copas
(120, 'Justiça é cega?', 'Sim', 'Não'),
(121, 'Temido ou respeitado?', 'Temido', 'Respeitado'),
(122, 'Lei é justa para todos?', 'Sim', 'Não'),
(123, 'Punição ensina?', 'Sim', 'Não'),
(124, 'Juiz ou executor?', 'Juiz', 'Executor'),
(125, 'Lei é absoluta?', 'Sim', 'Não'),
(126, 'O que faria com uma lei injusta?', 'Cumprir', 'Desobedecer'),
(127, 'Justiça pode ser cega e surda?', 'Sim', 'Não'),
(128, 'Mudaria uma lei?', 'Sim', 'Não'),

-- Floresta Encantada
(125, 'A floresta parece viva, com árvores cujos galhos se movem sutilmente. Há uma energia mágica no ar.', 'Olá?', 'Quem está aí?'),
(126, 'Sombras misteriosas se movem entre as árvores, e o silêncio é quebrado apenas pelo sussurro do vento.', 'Quem está aí?', 'Olá?'),
(127, 'Luzes fracas brilham entre as folhas, como se pequenas criaturas estivessem observando.', 'Olá?', 'Quem está aí?'),

-- Salão das Portas
(130, 'Você se encontra em um vasto salão com várias portas de diferentes tamanhos. Cada uma parece levar a um destino incerto.', 'Abrir uma porta', 'Esperar'),
(131, 'Algumas portas são pequenas demais para você passar, enquanto outras são grandes demais para abrir.', 'Abrir uma porta', 'Esperar'),
(132, 'Há um silêncio estranho no ar, como se cada porta guardasse um segredo.', 'Abrir uma porta', 'Esperar'),

-- Jardim das Flores Falantes
(135, 'O jardim está repleto de flores coloridas, mas estas flores parecem estar conversando entre si.', 'Olá?', 'Quem está aí?'),
(136, 'As flores viram seus rostos em sua direção, como se estivessem curiosas sobre sua presença.', 'Quem está aí?', 'Olá?'),
(137, 'O aroma das flores é forte e inebriante, enquanto seus sussurros preenchem o ar ao seu redor.', 'Olá?', 'Quem está aí?'),

-- Jogo de Croquet da Rainha
(175, 'No campo de croquet, flamingos são usados como tacos e ouriços como bolas. A Rainha observa tudo de perto.', 'Jogar', 'Desistir'),
(176, 'A Rainha de Copas grita ordens enquanto você tenta jogar com as regras constantemente mudando.', 'Jogar', 'Desistir'),
(177, 'A atmosfera é tensa, com todos os jogadores tentando agradar a Rainha para evitar sua ira.', 'Jogar', 'Desistir'),

-- Mesa de Chá do Chapeleiro Maluco
(180, 'Você se senta à mesa com o Chapeleiro e seus amigos, onde o chá nunca parece acabar.', 'Aceitar', 'Recusar'),
(181, 'Xícaras de chá, bolos e pratos sujos cobrem toda a mesa, enquanto a conversa é um caos incompreensível.', 'Aceitar', 'Recusar'),
(182, 'O tempo parece ter parado, com todos presos em um chá eterno e sem sentido.', 'Aceitar', 'Recusar'),

-- Tribunal da Rainha de Copas
(185, 'No tribunal da Rainha de Copas, as acusações são feitas rapidamente, e as punições são ainda mais rápidas.', 'Defender', 'Acusar'),
(186, 'As testemunhas parecem aterrorizadas, e a Rainha exige obediência absoluta de todos presentes.', 'Defender', 'Acusar'),
(187, 'O julgamento parece uma farsa, com a decisão da Rainha já tomada antes mesmo de ouvir o caso.', 'Defender', 'Acusar'),

-- Corrida Maluca
(190, 'A corrida começou, mas ninguém sabe onde está a linha de chegada. Todos correm em direções diferentes.', 'Correr', 'Parar'),
(191, 'A corrida não segue nenhuma lógica, e os participantes parecem correr por puro caos.', 'Correr', 'Parar'),
(192, 'Você se vê no meio de uma multidão, correndo sem saber por quê, apenas sentindo o vento no rosto.', 'Correr', 'Parar'),


 
INSERT INTO Item (item_id, name, icon, status) VALUES
(1, 'Coma', 'cake', true),
(2, 'Beba', 'coffee', true),
(3, 'Chapel', 'hat', false),
(4, 'Flor', 'flower', false);

INSERT INTO Card (scene_id, dialogue_id, left_next_card, right_next_card, left_resource, right_resource, item_id) VALUES
(1, 1, 2,

COMMIT;