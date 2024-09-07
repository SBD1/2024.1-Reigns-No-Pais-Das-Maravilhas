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
INSERT INTO Dialogue (dialogue_id, description) VALUES 

-- Diálogos Gerais
(1, 'Desaparecer ou enfrentar?'), 
(2, 'Sonho ou lembrança?'),
(3, 'Confiar no que vê ou no que sente?'),
(4, 'Caos ou ordem?'),
(5, 'Jogar sabendo que a Rainha trapaceia?'),
(6, 'Sombra ou luz?'),
(7, 'Bênção ou maldição?'),
(8, 'Controle ou liberdade?'),
(9, 'Te transformou ou revelou?'),
(10, 'Desaparecer é inteligente?'),

-- Chapeleiro Maluco
(11, 'Todos somos loucos aqui?'),
(12, 'Ser normal é uma maldição?'),
(13, 'Chá ou Rainha?'),
(14, 'Lógica ou absurdo?'),
(15, 'Aceita um chapéu curioso?'),
(16, 'Tempo contra você?'),
(17, 'Tomaria chá para sempre?'),
(18, 'Agora ou poderia ser?'),
(19, 'Sentidos ou intuição?'),
(20, 'Minha loucura é contagiante?'),

-- Rainha de Copas
(21, 'Obedece sem questionar?'),
(22, 'Merece estar ao meu lado?'),
(23, 'Quem devo punir?'),
(24, 'Jura lealdade incondicional?'),
(25, 'Gosta de jogar croquet?'),
(26, 'Trairia minha confiança?'),
(27, 'No meu lugar, o que faria?'),
(28, 'Sou justa?'),
(29, 'Tem medo de mim?'),
(30, 'Confiança é uma via de mão dupla?'),

-- Lebre de Março
(31, 'Chá ou café?'),
(32, 'Aceita uma xícara?'),
(33, 'Tempo está contra nós?'),
(34, 'Passado ou presente?'),
(35, 'Realidade ou imaginação?'),

-- Arganaz (Dormouse)
(36, 'Dormir demais é problema?'),
(37, 'Sou preguiçoso?'),
(38, 'Confiaria em um conselheiro dorminhoco?'),
(39, 'Sonhar com a Rainha é estranho?'),

-- Coelho Branco
(40, 'Correr ou enfrentar?'),
(41, 'Pontual ou correto?'),
(42, 'Dever ou desejo?'),
(43, 'Recuperar o tempo perdido?'),
(44, 'Tempo escapa?'),
(45, 'Correndo em círculos?'),
(46, 'Cedo ou na hora?'),
(47, 'Atrasado para algo importante?'),
(48, 'Voltaria no tempo?'),
(49, 'Tempo conspira contra você?'),

-- Cachorro
(50, 'Confia em seus instintos?'),
(51, 'Proteger quem ama?'),
(52, 'Lealdade é absoluta?'),
(53, 'Força ou coração?'),
(54, 'Seguiria ordens contra sua moral?'),
(55, 'Como lida com traição?'),
(56, 'Proteger amigo ou cumprir dever?'),
(57, 'Ser forte e gentil ao mesmo tempo?'),
(58, 'Temido ou amado?'),
(59, 'Justiça severa ou misericordiosa?'),

-- Tweedledee e Tweedledum
(60, 'Verdade ou felicidade?'),
(61, 'Quem é mais inteligente, eu ou ele?'),
(62, 'Por que as coisas são assim?'),
(63, 'Se brigássemos, quem apoiaria?'),
(64, 'Nada disso é real?'),
(65, 'Escolheria a mim ou a ele?'),
(66, 'Rainha ou nós dois juntos?'),
(67, 'Ganhar todos os jogos?'),
(68, 'Se mentíssemos, em quem acreditaria?'),
(69, 'Sentiria falta se desaparecêssemos?'),

-- Homem Queixudo
(70, 'Digna da atenção da Rainha?'),
(71, 'Rainha tem companhias melhores?'),
(72, 'Rainha confiaria em você?'),
(73, 'Entende as complexidades da corte?'),
(74, 'Rainha te aceitaria conhecendo seus segredos?'),
(75, 'Pode superar minha influência?'),
(76, 'Rainha precisa de você para orientação?'),
(77, 'Lealdade ou segurança?'),
(78, 'Se atreveria a falar a verdade?'),
(79, 'Rainha pode confiar em você?'),

-- Mulher Orelhuda
(80, 'Quer saber o que ouvi sobre você?'),
(81, 'Rainha deveria confiar em você?'),
(82, 'Se Rainha soubesse, como se sentiria?'),
(83, 'Rainha deveria ouvir tudo?'),
(84, 'Devo compartilhar com a Rainha?'),
(85, 'Pode esconder algo de mim?'),
(86, 'Me daria uma razão para não contar à Rainha?'),
(87, 'Lealdade deve ser provada?'),
(88, 'Falar demais é perigoso?'),
(89, 'Rainha não gosta de segredos, concorda?'),

-- Jaguadarte
(90, 'Jaguadarte aparece para você, sente medo?'),

-- Absolem
(91, 'Quem é você?'),
(92, 'Acredita no destino?'),
(93, 'Entende a importância do tempo?'),
(94, 'Sabedoria vem com a idade?'),
(95, 'Está pronta para as mudanças?'),
(96, 'Reencarnação é real?'),
(97, 'Real ou ilusão?'),
(98, 'Ciente das consequências?'),
(99, 'Conhecimento é um fardo?'),
(100, 'Satisfeita com suas escolhas?'),

-- Rainha Branca
(101, 'Paz sem sacrifícios?'),
(102, 'Justiça ou misericórdia?'),
(103, 'Bondade é fraqueza?'),
(104, 'Bem maior ou felicidade de poucos?'),
(105, 'Todos merecem segunda chance?'),
(106, 'Mudaria o passado?'),
(107, 'Verdade ou harmonia?'),
(108, 'Gentileza vence adversidades?'),
(109, 'Dever ou felicidade?'),
(110, 'Uma pessoa pode mudar o mundo?'),

-- Valete de Copas
(111, 'Justiça é cega?'),
(112, 'Temido ou respeitado?'),
(113, 'Lei é justa para todos?'),
(114, 'Punição ensina?'),
(115, 'Juiz ou executor?'),
(116, 'Lei é absoluta?'),
(117, 'O que faria com uma lei injusta?'),
(118, 'Justiça pode ser cega e surda?'),
(119, 'Mudaria uma lei?');



INSERT INTO Card (id_card, id_plot, id_dialogue, answer_left, answer_right)
(1, 1, 1, 'Desaparecer', 'Enfrentar'), -- ASW1: queen 10, popularity -10, life 10, size 0; ASW2: queen -10, popularity +10, life -10, size 0;
(2, 1, 2, 'Sonhos', 'Lembranças'), -- ASW1: queen 0, popularity 10, life -10, size 0; ASW2: queen 0, popularity 0, life +10, size 0;
(3, 1, 3, 'Ver', 'Sentir'), -- ASW1: queen 0, popularity 0, life 10, size 0; ASW2: queen 0, popularity 10, life -10, size 0;
(4, 1, 4, 'Caos', 'Ordem'), -- ASW1: queen -10, popularity 10, life 0, size 0; ASW2: queen 10, popularity -10, life 0, size 0;
(5, 1, 5, 'Sim', 'Não'), -- ASW1: queen 10, popularity 0, life 0, size 0; ASW2: queen -10, popularity 0, life -10, size 0;
(6, 1, 6, 'Sombra', 'Luz'), -- ASW1: queen 0, popularity 0, life 0, size 0; ASW2: queen 0, popularity 10, life 0, size 0;
(7, 1, 7, 'Bênção', 'Maldição'), -- ASW1: queen 10, popularity -10, life 0, size 0; ASW2: queen -10, popularity 0, life 0, size 0;
(8, 1, 8, 'Controle', 'Liberdade'), -- ASW1: queen -10, popularity -10, life 0, size 0; ASW2: queen -10, popularity 10, life 0, size 0;
(9, 1, 9, 'Transformou', 'Revelou'), -- ASW1: queen 0, popularity 0, life 10, size 0; ASW2: queen 0, popularity 0, life -10, size 0;
(10, 1, 10, 'Desaparecer', 'Enfrentar'), -- ASW1: queen 10, popularity -10, life 10, size 0; ASW2: queen -10, popularity 10, life -10, size 0;
(11, 2, 11, 'Eu não sou', 'Todos Somos Loucos'), -- ASW1: queen 0, popularity -10, life 10, size 0; ASW2: queen -10, popularity 10, life -10, size 0;
(12, 2, 12, 'Maldição', 'Bênção'), -- ASW1: queen 0, popularity -10, life 0, size 0; ASW2: queen 0, popularity 10, life 0, size 0;
(13, 2, 13, 'Chá', 'Rainha'), -- ASW1: queen -10, popularity 10, life 10, size -10; ASW2: queen 10, popularity -10, life 0, size 0;
(14, 2, 14, 'Lógica', 'Absurdo'), -- ASW1: queen 10, popularity 0, life 10, size 0; ASW2: queen 0, popularity 0, life -10, size 10;
(15, 2, 15, 'Adoraria', 'Não faz meu estilo'), -- ASW1: queen 0, popularity 10, life 0, size 10; ASW2: queen 0, popularity -10, life 0, size 10;
(16, 2, 16, 'Contra', 'A favor'), -- ASW1: queen 0, popularity 0, life 0, size 0; ASW2: queen -10, popularity 0, life 0, size 0;
(17, 2, 17, 'Sim', 'Não'), -- ASW1: queen 0, popularity 0, life 10, size 0; ASW2: queen 0, popularity 0, life -10, size 0;
(18, 2, 18, 'Agora', 'Poderia ser'), -- ASW1: queen 0, popularity -10, life 10, size 0; ASW2: queen 0, popularity 10, life -10, size 10;
(19, 2, 19, 'Sentidos', 'Intuição'), -- ASW1: queen 0, popularity -10, life 10, size 0, ASW2: queen 0, popularity 10, life -10, size 0;
(20, 2, 20, 'Sim', 'Não'), -- ASW1: queen 0, popularity -10, life -10, size 0; ASW2: queen 0, popularity 10, life 10, size 10; 
(21, 4, 21, 'Sim', 'Não'), -- ASW1: queen 10, popularity 0, life 0, size 0; ASW2: queen -10, popularity 0, life -10, size 0;
(22, 4, 22, 'Sim, Majestade', 'Não sou digna') -- ASW1: queen 10, popularity -10, life 0, size 10; ASW2: queen -10, popularity 10, life 0, size 0;
(23, 4, 23, 'Todos que desejar', 'Ninguem'), -- ASW1: queen 10, popularity -10, life -10, size -10; ASW2: queen -10, popularity 10, life -10, size 10;
(24, 4, 24, 'Sim', 'Não'), -- ASW1: queen 10, popularity -10, life 0, size -10; ASW2: queen -10, popularity 10, life 0, size 10;
(25, 4, 25, 'Sim', 'Não'), -- ASW1: queen 10, popularity 0, life 0, size 0; ASW2: queen -10, popularity 0, life 0, size 0;
(26, 4, 26, 'Sim', 'Não'), -- ASW1: queen -100, popularity 0, life 0, size 0; ASW2: queen 10, popularity 0, life 0, size 0; id_resource 107
(27, 4, 27, 'vossa excelencia é perfeita', 'Tudo'), -- ASW1: queen 10, popularity -10, life 0, size -10; ASW2: queen -10, popularity -10, life 0, size 10;
(28, 4, 28, 'Sim', 'Não'), -- ASW1: queen 10, popularity 0, life 0, size 0; ASW2: queen -10, popularity 0, life 0, size 0;
(29, 4, 29, 'Sim', 'Não'), -- ASW1: queen 10, popularity -10, life 0, size 0; ASW2: queen -10, popularity 10, life 0, size 0;
(30, 4, 30, 'Realidade', 'Imaginação'), -- ASW1: queen 10, popularity -10, life 0, size -10; ASW2: queen -10, popularity 10, life 0, size 10;
(31, 5, 31, 'Chá', 'Café'), -- ASW1: queen 0, popularity 10, life 10, size -10; ASW2: queen 0, popularity -10, life -10, size 0;
(32, 5, 32, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 10, size -10; ASW2: queen 0, popularity -10, life -10, size 0;
(33, 5, 33, 'Contra', 'A favor'), -- ASW1: queen 0, popularity 0, life 0, size 0; ASW2: queen 0, popularity 0, life 0, size 0;
(34, 5, 34, 'Passado', 'Presente'), -- ASW1: queen -10, popularity 0, life -10, size 0; ASW2: queen 0, popularity 0, life 10, size 0;
(35, 5, 35, 'Realidade', 'Imaginação'), -- ASW1: queen 0, popularity -10, life 10, size 0; ASW2: queen 0, popularity 10, life 10, size 10;
(36, 6, 36, 'Sim', 'Não'), -- ASW1: queen 0, popularity -10, life 10, size 0; ASW2: queen 0, popularity 10, life -10, size 0;
(37, 6, 37, 'Preguiçoso', 'Cansado'), -- ASW1: queen 0, popularity -10, life 0, size 0; ASW2: queen 0, popularity 10, life 0, size 0;
(38, 6, 38, 'Sim', 'Não'), -- ASW1: queen 0, popularity -10, life 0, size 0; ASW2: queen 0, popularity 10, life 0, size 0;
(39, 6, 39, 'Estranho', 'Uma benção'), -- ASW1: queen -10, popularity -10, life 0, size 0; ASW2: queen 10, popularity 10, life 0, size 0;
(40, 3, 40, 'Correr', 'Enfrentar'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(41, 3, 41, 'Pontual', 'Correto'), -- ASW1: queen 0, popularity -10, life 0, size 0; ASW2: queen 0, popularity 10, life 0, size 0;
(42, 3, 42, 'Dever', 'Desejo'), -- ASW1: queen 10, popularity -10, life 10, size 0; ASW2: queen -10, popularity 10, life -10, size 0;
(43, 3, 43, 'Sim', 'Não'), -- ASW1: queen 0, popularity 0, life -10, size 0; ASW2: queen 0, popularity 0, life 10, size 0;
(44, 3, 44, 'Deixo ele ir', 'Corro atrás dele'), -- ASW1: queen 0, popularity -10, life 0, size 0; ASW2: queen 0, popularity 10, life -10, size 0;
(45, 3, 45, 'Correr', 'Chegar'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(46, 3, 46, 'Chegar cedo', 'Na hora'), -- ASW1: queen 0, popularity -10, life 0, size 0; ASW2: queen 0, popularity 10, life 0, size 0;
(47, 3, 47, 'Correr', 'Enfrentar'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(48, 3, 48, 'Sim', 'Não'), -- ASW1: queen -10, popularity 0, life -10, size 0; ASW2: queen 0, popularity 0, life 10, size 0;
(49, 3, 49, 'Sim', 'Não'), -- ASW1: queen 0, popularity 0, life -10, size 0; ASW2: queen 0, popularity 0, life 10, size 0;
(50, 7, 50, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life -10, size 10; ASW2: queen 0, popularity -10, life 10, size 0;
(51, 7, 51, 'Proteger', 'Fugir'), -- ASW1: queen -10, popularity 10, life 0, size 10; ASW2: queen 10, popularity -10, life 0, size -10;
(52, 7, 52, 'Absoluta', 'Condicional'), -- ASW1: queen 10, popularity -10, life 0, size 0; ASW2: queen -10, popularity -10, life 0, size 0;
(53, 7, 53, 'Força', 'Coração'), -- ASW1: queen 10, popularity -10, life 0, size 0; ASW2: queen -10, popularity 10, life 0, size;
(54, 7, 54, 'Não', 'Sim'), -- ASW1: queen -10, popularity 10, life 0, size 0; ASW2: queen 10, popularity -10, life 0, size 0;
(55, 7, 55, 'Perdoo', 'Punir'), -- ASW1: queen 0, popularity 10, life 10, size 10; ASW2: queen 0, popularity -10, life 0, size -10;
(56, 7, 56, 'Proteger', 'Cumprir'), -- ASW1: queen -10, popularity 10, life 0, size 10; ASW2: queen 10, popularity -10, life 0, size 0;
(57, 7, 57, 'Sim', 'Não'), -- ASW1: queen -10, popularity 10, life 0, size 10; ASW2: queen 10, popularity -10, life 0, size -10;
(58, 7, 58, 'Temido', 'Amado'), -- ASW1: queen 10, popularity -10, life 0, size 0; ASW2: queen -10, popularity 10, life 0, size 0;
(59, 7, 59, 'Severa', 'Misericordiosa'), -- ASW1: queen 10, popularity -10, life 0, size 0; ASW2: queen -10, popularity 10, life 0, size 0;
(60, 8, 60, 'Verdade', 'Felicidade'), -- ASW1: queen 10, popularity -10, life 10, size 0; ASW2: queen -10, popularity 10, life 0, size 0;
(61, 8, 61, 'Ele', 'Eu'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(62, 8, 62, 'Sim', 'Não'), -- ASW1: queen -10, popularity 0, life 0, size 0; ASW2: queen 10, popularity 0, life 0, size 0;
(63, 8, 63, 'Ninguem', 'Você'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(64, 8, 64, 'Não é Real?', 'Continuaria'), -- ASW1: queen 0, popularity 0, life 100, size 0; ASW2: queen 0, popularity 10, life 0, size 0;
(65, 8, 65, 'Vocês são iguais', 'Nenhum'), -- ASW1: queen 0, popularity -10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(66, 8, 66, 'Rainha', 'Vocês'), -- ASW1: queen 10, popularity 10, life 0, size 0; ASW2: queen -10, popularity -10, life 0, size 0;
(67, 8, 67, 'Sim', 'Alguns são impossíveis'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 10, popularity 0, life 0, size 0;
(68, 8, 68, 'Eu nem sei quem é quem', 'Ele'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(69, 8, 69, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(70, 9, 70, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 10; ASW2: queen 10, popularity -10, life 0, size -10;
(71, 9, 71, 'Melhor que eu? quem?', 'Tem razão'), -- ASW1: queen 10, popularity -10, life 0, size 10; ASW2: queen -10, popularity 10, life 0, size 0;
(72, 9, 72, 'Sou mais incomum que você', 'não sei'), -- ASW1: queen 10, popularity 10, life -10, size 0; ASW2: queen -10, popularity -10, life 0, size -10;
(73, 9, 73, 'Sim', 'Não'), -- ASW1: queen 10, popularity -10, life 0, size 0; ASW2: queen -10, popularity -10, life 0, size 0;
(74, 9, 74, 'Sim', 'Não'), -- ASW1: queen 10, popularity -10, life 0, size 0; ASW2: queen -10, popularity 10, life 0, size 0;
(75, 9, 75, 'Sim', 'Não'), -- ASW1: queen 10, popularity 10, life 0, size 10; ASW2: queen -10, popularity -10, life 0, size -10;
(76, 9, 76, 'Sim', 'Não'), -- ASW1: queen -10, popularity 10, life 0, size 0; ASW2: queen 10, popularity -10, life 0, size 0;
(77, 9, 77, 'Lealdade', 'Segurança'), -- ASW1: queen 10, popularity -10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(78, 9, 78, 'Sim', 'Não'), -- ASW1: queen 10, popularity 10, life 0, size 0; ASW2: queen -10, popularity -10, life 0, size 0;
(79, 9, 79, 'Sim', 'Não'), -- ASW1: queen 10, popularity -10, life 0, size 0; ASW2: queen -10, popularity 10, life 0, size 0
(80, 10, 80, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(81, 10, 81, 'Sim', 'Não'), -- ASW1: queen 10, popularity -10, life 0, size 0; ASW2: queen -10, popularity 10, life 0, size 0;
(82, 10, 82, 'Não me importo', 'Ficaria magoada com você'), -- ASW1: queen 10, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life -10, size 0;
(83, 10, 83, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(84, 10, 84, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 10, size 10; ASW2: queen 0, popularity -10, life 0, size 0;
(85, 10, 85, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(86, 10, 86, 'Sim', 'Não'), -- ASW1: queen 10, popularity 10, life -10, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(87, 10, 87, 'Sim', 'Não'), -- ASW1: queen -10, popularity 10, life 0, size -100; ASW2: queen 0, popularity -10, life -10, size 0;
(88, 10, 88, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 10, size 0; ASW2: queen 0, popularity -10, life 10, size 0;
(89, 10, 89, 'Sim', 'Não'), -- ASW1: queen 10, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(90, 12, 90, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 10, size -10;
(91, 13, 91, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life -10, size -100; ASW2: queen 0, popularity -10, life 0, size 10;
(92, 13, 92, 'Sim', 'Não'), -- ASW1: queen -10, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(93, 13, 93, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size -10; ASW2: queen 0, popularity -10, life -10, size -10;
(94, 13, 94, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(95, 13, 95, 'Sim', 'Não'), -- ASW1: queen -10, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 10, size 0;
(96, 13, 96, 'Sim', 'Não'), -- ASW1: queen 10, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(97, 13, 97, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(80, 10, 80, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(81, 10, 81, 'Sim', 'Não'), -- ASW1: queen 10, popularity -10, life 0, size 0; ASW2: queen -10, popularity 10, life 0, size 0;
(82, 10, 82, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(83, 10, 83, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(84, 10, 84, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(85, 10, 85, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(86, 10, 86, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(87, 10, 87, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(88, 10, 88, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(89, 10, 89, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(90, 12, 90, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 10, size -10;
(91, 13, 91, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life -10, size -100; ASW2: queen 0, popularity -10, life 0, size 10;
(92, 13, 92, 'Sim', 'Não'), -- ASW1: queen -10, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(93, 13, 93, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size -10; ASW2: queen 0, popularity -10, life -10, size -10;
(94, 13, 94, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(95, 13, 95, 'Sim', 'Não'), -- ASW1: queen -10, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 10, size 0;
(96, 13, 96, 'Sim', 'Não'), -- ASW1: queen 10, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(97, 13, 97, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life
(98, 13, 98, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(99, 13, 99, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(100, 14, 100, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(101, 14, 101, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(102, 14, 102, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(103, 14, 103, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(104, 14, 104, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(105, 14, 105, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(106, 14, 106, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(107, 14, 107, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(108, 14, 108, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(109, 14, 109, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(110, 11, 110, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(111, 11, 111, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(112, 11, 112, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(113, 11, 113, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(114, 11, 114, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(115, 11, 115, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(116, 11, 116, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(117, 11, 117, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(118, 11, 118, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
(119, 11, 119, 'Sim', 'Não'), -- ASW1: queen 0, popularity 10, life 0, size 0; ASW2: queen 0, popularity -10, life 0, size 0;
-- Floresta Encantada
(120, 'A floresta parece viva, com árvores cujos galhos se movem sutilmente. Há uma energia mágica no ar.'), 
(121, 'Sombras misteriosas se movem entre as árvores, e o silêncio é quebrado apenas pelo sussurro do vento.'),
(122, 'Luzes fracas brilham entre as folhas, como se pequenas criaturas estivessem observando.'),

-- Salão das Portas
(125, 'Você se encontra em um vasto salão com várias portas de diferentes tamanhos. Cada uma parece levar a um destino incerto.'),
(126, 'Algumas portas são pequenas demais para você passar, enquanto outras são grandes demais para abrir.'),
(127, 'Há um silêncio estranho no ar, como se cada porta guardasse um segredo.'),

-- Jardim das Flores Falantes
(130, 'O jardim está repleto de flores coloridas, mas estas flores parecem estar conversando entre si.'),
(131, 'As flores viram seus rostos em sua direção, como se estivessem curiosas sobre sua presença.'),
(132, 'O aroma das flores é forte e inebriante, enquanto seus sussurros preenchem o ar ao seu redor.'),

-- Jogo de Croquet da Rainha
(135, 'No campo de croquet, flamingos são usados como tacos e ouriços como bolas. A Rainha observa tudo de perto.'),
(136, 'A Rainha de Copas grita ordens enquanto você tenta jogar com as regras constantemente mudando.'),
(137, 'A atmosfera é tensa, com todos os jogadores tentando agradar a Rainha para evitar sua ira.'),

-- Mesa de Chá do Chapeleiro Maluco
(140, 'Você se senta à mesa com o Chapeleiro e seus amigos, onde o chá nunca parece acabar.'),
(141, 'Xícaras de chá, bolos e pratos sujos cobrem toda a mesa, enquanto a conversa é um caos incompreensível.'),
(142, 'O tempo parece ter parado, com todos presos em um chá eterno e sem sentido.'),

-- Tribunal da Rainha de Copas
(145, 'No tribunal da Rainha de Copas, as acusações são feitas rapidamente, e as punições são ainda mais rápidas.'),
(146, 'As testemunhas parecem aterrorizadas, e a Rainha exige obediência absoluta de todos presentes.'),
(147, 'O julgamento parece uma farsa, com a decisão da Rainha já tomada antes mesmo de ouvir o caso.'),

-- Corrida Maluca
(150, 'A corrida começou, mas ninguém sabe onde está a linha de chegada. Todos correm em direções diferentes.'),
(151, 'A corrida não segue nenhuma lógica, e os participantes parecem correr por puro caos.'),
(152, 'Você se vê no meio de uma multidão, correndo sem saber por quê, apenas sentindo o vento no rosto.'),

-- País das Maravilhas
(155, 'O País das Maravilhas é uma mistura caótica de cores vibrantes e paisagens impossíveis.'),
(156, 'Nada parece fazer sentido aqui, e tudo parece estar em constante mudança, como se o mundo estivesse vivo.'),
(157, 'Você sente que o próprio chão sob seus pés poderia mudar a qualquer momento.'),

-- Espelho Mágico
(160, 'O espelho à sua frente reflete uma imagem de você, mas algo parece estar errado com o reflexo.'),
(161, 'O reflexo parece ter vida própria, como se estivesse te observando de volta.'),
(162, 'Você toca o espelho e ele parece ceder, como se fosse possível atravessá-lo.'),

-- Enchente
(165, 'A água começa a subir rapidamente ao seu redor, cobrindo o chão e subindo pelas paredes.'),
(166, 'Tudo ao seu redor está sendo engolido pela água, e você sente a urgência de escapar.'),
(167, 'A enchente não mostra sinais de parar, e você se vê sendo levado pela correnteza.'),

-- Buraco no Chão
(170, 'Você olha para baixo e vê um buraco profundo, escuro e aparentemente sem fim.'),
(171, 'O buraco parece te chamar, e ao se aproximar, você sente o impulso de saltar.'),
(172, 'A sensação de queda é constante, como se o fundo nunca fosse realmente chegar.'),


INSERT INTO Item (name, effect, condition, dropped) VALUES 
('Bolo do Crescimento', 'Size 10', NULL, FALSE),
('Bebida da Diminuição', 'Size -10', NULL, FALSE);


INSERT INTO Card_Action (id_card, id_next_card_left, id_next_card_right, id_item, id_resource_left, id_resource_right) VALUES 
-- Carta 1
(1, 3, 2, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life -10 AND size 0)),

-- Carta 2
(2, 5, 4, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life -10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 10 AND size 0)),

-- Carta 3
(3, 6, 1, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life -10 AND size 0)),

-- Carta 4
(4, 2, 3, NULL, (SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size 0)),

-- Carta 5
(5, 1, 6, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity 0 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 0 AND life -10 AND size 0)),

-- Carta 6
(6, 4, 5, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 0 AND size 0)).

-- Carta 7
(7, 3, 6, NULL, (SELECT id_resource FROM Resource WHERE queen = 10 AND popularity = -10 AND life = 0 AND size = 0), 
(SELECT id_resource FROM Resource WHERE queen = -10 AND popularity = 0 AND life = 0 AND size = 0)),

-- Carta 8
(8, 5, 4, NULL, (SELECT id_resource FROM Resource WHERE queen = -10 AND popularity = -10 AND life = 0 AND size = 0), 
(SELECT id_resource FROM Resource WHERE queen = -10 AND popularity = 10 AND life = 0 AND size = 0)),

-- Carta 9
(9, 2, 7, NULL, (SELECT id_resource FROM Resource WHERE queen = 0 AND popularity = 0 AND life = 10 AND size = 0), 
(SELECT id_resource FROM Resource WHERE queen = 0 AND popularity = 0 AND life = -10 AND size = 0)),

-- Carta 10
(10, 1, 8, NULL, (SELECT id_resource FROM Resource WHERE queen = 10 AND popularity = -10 AND life = 10 AND size = 0), 
(SELECT id_resource FROM Resource WHERE queen = -10 AND popularity = 10 AND life = -10 AND size = 0)),

-- Carta 11
(11, 4, 9, NULL, (SELECT id_resource FROM Resource WHERE queen = 0 AND popularity = -10 AND life = 10 AND size = 0), 
(SELECT id_resource FROM Resource WHERE queen = -10 AND popularity = 10 AND life = -10 AND size = 0)),

-- Carta 12
(12, 3, 10, NULL, (SELECT id_resource FROM Resource WHERE queen = 0 AND popularity = -10 AND life = 0 AND size = 0), 
(SELECT id_resource FROM Resource WHERE queen = 0 AND popularity = 10 AND life = 0 AND size = 0)),

-- Carta 13
(13, 7, 11, NULL, (SELECT id_resource FROM Resource WHERE queen = -10 AND popularity = 10 AND life = 10 AND size = -10), 
(SELECT id_resource FROM Resource WHERE queen = 10 AND popularity = -10 AND life = 0 AND size = 0)),

-- Carta 14
(14, 12, 8, NULL, (SELECT id_resource FROM Resource WHERE queen = 10 AND popularity = 0 AND life 10 AND size = 0), 
(SELECT id_resource FROM Resource WHERE queen = 0 AND popularity = 0 AND life = -10 AND size = 10)),

-- Carta 15
(15, 13, 6, NULL, (SELECT id_resource FROM Resource WHERE queen = 0 AND popularity = 10 AND life = 0 AND size = 10), 
(SELECT id_resource FROM Resource WHERE queen = 0 AND popularity = -10 AND life = 0 AND size = 10)),

-- Carta 16
(16, 14, 9, NULL, (SELECT id_resource FROM Resource WHERE queen = 0 AND popularity = 0 AND life = 0 AND size = 0), 
(SELECT id_resource FROM Resource WHERE queen = -10 AND popularity = 0 AND life = 0 AND size = 0)),

-- Carta 17
(17, 10, 7, NULL, (SELECT id_resource FROM Resource WHERE queen = 0 AND popularity = 0 AND life = 10 AND size = 0), 
(SELECT id_resource FROM Resource WHERE queen = 0 AND popularity = 0 AND life = -10 AND size = 0)),

-- Carta 18
(18, 5, 11, NULL, (SELECT id_resource FROM Resource WHERE queen = 0 AND popularity = -10 AND life = 10 AND size = 0), 
(SELECT id_resource FROM Resource WHERE queen = 0 AND popularity = 10 AND life = -10 AND size = 10)),

-- Carta 19
(19, 2, 14, NULL, (SELECT id_resource FROM Resource WHERE queen = 0 AND popularity = -10 AND life 10 AND size = 0), 
(SELECT id_resource FROM Resource WHERE queen = 0 AND popularity 10 AND life -10 AND size = 0)),

-- Carta 20
(20, 1, 3, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life -10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 10 AND size 10)),

-- Carta 21
(21, 4, 13, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity 0 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 0 AND life -10 AND size 0)),

-- Carta 22
(22, 5, 8, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size 10), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 0 AND size 0)),

-- Carta 23
(23, 11, 7, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life -10 AND size -10), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life -10 AND size 10)),

-- Carta 24
(24, 10, 14, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size -10), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 0 AND size 10)),

-- Carta 25
(25, 2, 12, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity 0 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 0 AND life 0 AND size 0)),

-- Carta 26
(26, 8, 13, 2, (SELECT id_resource FROM Resource WHERE queen -100 AND popularity 0 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 10 AND popularity 0 AND life 0 AND size 0)),

-- Carta 27
(27, 14, 3, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size -10), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity -10 AND life 0 AND size 10)),

-- Carta 28
(28, 6, 12, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity 0 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 0 AND life 0 AND size 0)),

-- Carta 29
(29, 4, 10, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 0 AND size 0)),

-- Carta 30
(30, 7, 5, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size -10), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 0 AND size 10)),

-- Carta 31
(31, 3, 9, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 10 AND size -10), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life -10 AND size 0)),

-- Carta 32
(32, 8, 11, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 10 AND size -10), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life -10 AND size 0)),

-- Carta 33
(33, 2, 14, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 0 AND size 0)),

-- Carta 34
(34, 9, 6, NULL, (SELECT id_resource FROM Resource WHERE queen -10 AND popularity 0 AND life -10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 10 AND size 0)),

-- Carta 35
(35, 5, 7, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 10 AND size 10)),

-- Carta 36
(36, 1, 13, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life -10 AND size 0)),

-- Carta 37
(37, 4, 10, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 0 AND size 0)),

-- Carta 38
(38, 7, 3, NULL, (SELECT id_resource FROM Resource WHERE queen -10 AND popularity -10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 10 AND popularity 10 AND life 0 AND size 0)),

-- Carta 39
(39, 6, 12, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 0 AND size 0)),

-- Carta 40
(40, 11, 14, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 0 AND size 0)),

-- Carta 41
(41, 5, 9, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 0 AND size 0)),

-- Carta 42
(42, 7, 13, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life -10 AND size 0)),

-- Carta 43
(43, 3, 10, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life -10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 10 AND size 0)),

-- Carta 44
(44, 12, 6, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life -10 AND size 0)),

-- Carta 45
(45, 2, 8, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 0 AND size 0)),

-- Carta 46
(46, 14, 11, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 0 AND size 0)),

-- Carta 47
(47, 10, 4, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 0 AND size 0)),

-- Carta 48
(48, 13, 9, NULL, (SELECT id_resource FROM Resource WHERE queen -10 AND popularity 0 AND life -10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 10 AND size 0)),

-- Carta 49
(49, 1, 5, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life -10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 10 AND size 0)),

-- Carta 50
(50, 6, 12, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life -10 AND size 10), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 10 AND size 0)),

-- Carta 51
(51, 8, 3, NULL, (SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 0 AND size 10), 
(SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size -10)),

-- Carta 52
(52, 9, 7, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 0 AND size 0)),

-- Carta 53
(53, 14, 11, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity 0 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 0 AND life 0 AND size 0)),

-- Carta 54
(54, 4, 13, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 10 AND size -10), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life -10 AND size 0)),

-- Carta 55
(55, 7, 2, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity 10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity -10 AND life 0 AND size 0)),

-- Carta 56
(56, 3, 5, NULL, (SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 0 AND size 10), 
(SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size -10)),

-- Carta 57
(57, 12, 10, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size 10), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 0 AND size -10)),

-- Carta 58
(58, 6, 9, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 10 AND size 10), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life -10 AND size -10)),

-- Carta 59
(59, 1, 13, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 0 AND size 0)),

-- Carta 60
(60, 14, 4, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life -10 AND size 0)),

-- Carta 61
(61, 2, 8, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 0 AND size 0)),

-- Carta 62
(62, 7, 5, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life -10 AND size 0)),

-- Carta 63
(63, 11, 12, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life -10 AND size 0)),

-- Carta 64
(64, 9, 1, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 0 AND size 10), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 0 AND size -10)),

-- Carta 65
(65, 13, 6, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 0 AND size 0)),

-- Carta 66
(66, 3, 7, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size 10), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 0 AND size -10)),

-- Carta 67
(67, 5, 10, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity 0 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 0 AND life 0 AND size 0)),

-- Carta 68
(68, 12, 14, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size 10), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 0 AND size -10)),

-- Carta 69
(69, 2, 11, NULL, (SELECT id_resource FROM Resource WHERE queen -10 AND popularity 0 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 10 AND popularity 0 AND life 0 AND size 0)),

-- Carta 70
(70, 11, 4, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity 10 AND life 0 AND size 10), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity -10 AND life 0 AND size -10)),

-- Carta 71
(71, 3, 9, NULL, (SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 0 AND size 10), 
(SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size -10)),

-- Carta 72
(72, 14, 7, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life -10 AND size 0)),

-- Carta 73
(73, 5, 13, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life -10 AND size 0)),

-- Carta 74
(74, 2, 8, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity 10 AND life 0 AND size 10), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity -10 AND life 0 AND size -10)),

-- Carta 75
(75, 10, 6, NULL, (SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size 0)),

-- Carta 76
(76, 12, 3, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 10 AND size -10), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life -10 AND size 0)),

-- Carta 77
(77, 4, 11, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity 0 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 0 AND life 0 AND size 0)),

-- Carta 78
(78, 9, 5, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 0 AND size 0)),

-- Carta 79
(79, 6, 14, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 0 AND size 10), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 0 AND size -10)),

-- Carta 80
(80, 13, 2, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 0 AND size 0)),

-- Carta 81
(81, 7, 10, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 0 AND size 0)),

-- Carta 82
(82, 3, 12, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity 0 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 0 AND life 0 AND size 0)),

-- Carta 83
(83, 5, 8, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life -10 AND size 0)),

-- Carta 84
(84, 9, 14, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life -10 AND size 0)),

-- Carta 85
(85, 6, 11, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity 0 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 0 AND life 0 AND size 0)),

-- Carta 86
(86, 12, 4, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 0 AND size 0)),

-- Carta 87
(87, 2, 13, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life -10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 10 AND size 0)),

-- Carta 88
(88, 7, 10, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity 10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity -10 AND life 0 AND size 0)),

-- Carta 89
(89, 5, 8, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 10 AND size -10), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life -10 AND size 0)),

-- Carta 90
(90, 11, 14, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 10 AND size -10)),

-- Carta 91
(91, 3, 9, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 0 AND size 0)),

-- Carta 92
(92, 4, 7, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 0 AND size 0)),

-- Carta 93
(93, 8, 12, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 0 AND size 0)),

-- Carta 94
(94, 6, 10, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity 10 AND life 0 AND size 10), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity -10 AND life 0 AND size -10)),

-- Carta 95
(95, 13, 2, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life -10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 10 AND size 0)),

-- Carta 96
(96, 9, 14, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity 10 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity -10 AND life 0 AND size 0)),

-- Carta 97
(97, 3, 7, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 0 AND size 10), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 0 AND size -10)),

-- Carta 98
(98, 4, 8, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity 0 AND life 0 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 0 AND life 0 AND size 0)),

-- Carta 99
(99, 12, 10, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 10 AND size 0), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life -10 AND size 0)),

-- Carta 100
(100, 14, 5, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 10 AND size -10), 
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life -10 AND size 0)).

-- Carta 1000
(1000, 1001, 1001, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 0 AND size 0),
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 0 AND size 0)),

-- Carta 1001
(1001, 1002, 1009, 1, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life -10 AND size 10),
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 0 AND size 0)),

-- Carta 1002
(1002, 1003, 1009, 2, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life -10 AND size -10),
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 10 AND size 0)),

-- Carta 1003
(1003, 1004, 1009, 3, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 10 AND size 0),
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 10 AND size 0)),

-- Carta 1004
(1004, 1005, 1005, 4, (SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life -10 AND size 0),
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 10 AND size 0)),

-- Carta 1005
(1005, 1006, 1006, 5, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life -10 AND size 0),
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity 10 AND life 10 AND size 0)),

-- Carta 1006
(1006, 1007, 1007, 6, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life -10 AND size 0),
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity -10 AND life 10 AND size 0)),

-- Carta 1007
(1007, 1008, 1008, 7, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity -10 AND life -10 AND size 0),
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 10 AND life 10 AND size 0)),

-- Carta 1008
(1008, 1009, 1009, 8, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 10 AND size -10),
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life -10 AND size 0)),

-- Carta 1009
(1009, 1, 1, 9, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity 10 AND life 10 AND size 10),
(SELECT id_resource FROM Resource WHERE queen 10 AND popularity 10 AND life 10 AND size 10)),

-- Carta 1010
(1010, 31, 4, NULL, (SELECT id_resource FROM Resource WHERE queen 10 AND popularity 10 AND life 10 AND size 10),
(SELECT id_resource FROM Resource WHERE queen 10 AND popularity 10 AND life 10 AND size 10)),

-- Carta 1011
(1011, 5, 6, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 0 AND size 0),
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 0 AND size 0)),

-- Carta 1012
(1012, 6, 1, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 0 AND size 0),
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 100 AND size 0)),

-- Carta 1013
(1013, 7, 2, NULL, (SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life -10 AND size 0),
(SELECT id_resource FROM Resource WHERE queen 0 AND popularity 0 AND life 100 AND size 0)),

-- Carta 1014
(1014, 8, 3, NULL, (SELECT id_resource FROM Resource WHERE queen -10 AND popularity -10 AND life -10 AND size -10),
(SELECT id_resource FROM Resource WHERE queen -10 AND popularity -10 AND life -10 AND size -10));


INSERT INTO Deck (id_deck) VALUES
(1),
(2),
(3),
(4),
(5);

INSERT INTO Deck_Normal (id_deck, completed) VALUES
(1, FALSE),
(2, FALSE),
(3, FALSE),
(4, TRUE),
(5, FALSE);

INSERT INTO Deck_Event (id_deck, sequence_order, attempts) VALUES
(1, 1, NULL),
(2, 2, NULL),
(3, 3, NULL),
(4, 4, NULL),
(5, 5, NULL);

-- Deck 1
INSERT INTO Deck_Card (id_deck, id_card) VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10),
(1, 11), (1, 12), (1, 13), (1, 14), (1, 15), (1, 16), (1, 17), (1, 18), (1, 19), (1, 20),
(1, 21), (1, 22), (1, 23), (1, 24), (1, 25), (1, 26), (1, 27), (1, 28), (1, 29), (1, 30),
(1, 31), (1, 32), (1, 33), (1, 34), (1, 35), (1, 36), (1, 37), (1, 38), (1, 39), (1, 40),
(1, 41), (1, 42), (1, 43), (1, 44), (1, 45), (1, 46), (1, 47), (1, 48), (1, 49), (1, 50);

-- Deck 2
INSERT INTO Deck_Card (id_deck, id_card) VALUES
(2, 51), (2, 52), (2, 53), (2, 54), (2, 55), (2, 56), (2, 57), (2, 58), (2, 59), (2, 60),
(2, 61), (2, 62), (2, 63), (2, 64), (2, 65), (2, 66), (2, 67), (2, 68), (2, 69), (2, 70),
(2, 71), (2, 72), (2, 73), (2, 74), (2, 75), (2, 76), (2, 77), (2, 78), (2, 79), (2, 80),
(2, 81), (2, 82), (2, 83), (2, 84), (2, 85), (2, 86), (2, 87), (2, 88), (2, 89), (2, 90),
(2, 91), (2, 92), (2, 93), (2, 94), (2, 95), (2, 96), (2, 97), (2, 98), (2, 99), (2, 100);

-- Deck 3
INSERT INTO Deck_Card (id_deck, id_card) VALUES
(3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (3, 7), (3, 8), (3, 9), (3, 10),
(3, 11), (3, 12), (3, 13), (3, 14), (3, 15), (3, 16), (3, 17), (3, 18), (3, 19), (3, 20),
(3, 21), (3, 22), (3, 23), (3, 24), (3, 25), (3, 26), (3, 27), (3, 28), (3, 29), (3, 30),
(3, 31), (3, 32), (3, 33), (3, 34), (3, 35), (3, 36), (3, 37), (3, 38), (3, 39), (3, 40),
(3, 41), (3, 42), (3, 43), (3, 44), (3, 45), (3, 46), (3, 47), (3, 48), (3, 49), (3, 50);

-- Deck 4
INSERT INTO Deck_Card (id_deck, id_card) VALUES
(4, 51), (4, 52), (4, 53), (4, 54), (4, 55), (4, 56), (4, 57), (4, 58), (4, 59), (4, 60),
(4, 61), (4, 62), (4, 63), (4, 64), (4, 65), (4, 66), (4, 67), (4, 68), (4, 69), (4, 70),
(4, 71), (4, 72), (4, 73), (4, 74), (4, 75), (4, 76), (4, 77), (4, 78), (4, 79), (4, 80),
(4, 81), (4, 82), (4, 83), (4, 84), (4, 85), (4, 86), (4, 87), (4, 88), (4, 89), (4, 90),
(4, 91), (4, 92), (4, 93), (4, 94), (4, 95), (4, 96), (4, 97), (4, 98), (4, 99), (4, 100);

-- Deck 5
INSERT INTO Deck_Card (id_deck, id_card) VALUES
(5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6), (5, 7), (5, 8), (5, 9), (5, 10),
(5, 11), (5, 12), (5, 13), (5, 14), (5, 15), (5, 16), (5, 17), (5, 18), (5, 19), (5, 20),
(5, 21), (5, 22), (5, 23), (5, 24), (5, 25), (5, 26), (5, 27), (5, 28), (5, 29), (5, 30),
(5, 31), (5, 32), (5, 33), (5, 34), (5, 35), (5, 36), (5, 37), (5, 38), (5, 39), (5, 40),
(5, 41), (5, 42), (5, 43), (5, 44), (5, 45), (5, 46), (5, 47), (5, 48), (5, 49), (5, 50);

-- Deck 6
INSERT INTO Deck_Card (id_deck, id_card) VALUES
(6, 51), (6, 52), (6, 53), (6, 54), (6, 55), (6, 56), (6, 57), (6, 58), (6, 59), (6, 60),
(6, 61), (6, 62), (6, 63), (6, 64), (6, 65), (6, 66), (6, 67), (6, 68), (6, 69), (6, 70),
(6, 71), (6, 72), (6, 73), (6, 74), (6, 75), (6, 76), (6, 77), (6, 78), (6, 79), (6, 80),
(6, 81), (6, 82), (6, 83), (6, 84), (6, 85), (6, 86), (6, 87), (6, 88), (6, 89), (6, 90),
(6, 91), (6, 92), (6, 93), (6, 94), (6, 95), (6, 96), (6, 97), (6, 98), (6, 99), (6, 100);

COMMIT;