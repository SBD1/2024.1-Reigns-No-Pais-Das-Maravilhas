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
(107, -100, 0, 0, 0),

-- Criando NPCs com IDs automáticos

INSERT INTO Plot (id_plot, name, image) VALUES 
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
(1003, 'Liquido do Encolhimento ', NULL),
(1004, 'Porta Trancada', NULL),
(1005, 'País das Maravilhas', NULL);
(1010, 'Enchente', NULL),
(1012, 'Coelho Apressado', NULL),
(1013, 'Espelho', NULL),
(1014, 'Buraco', NULL),
(1015, 'Febre', NULL),
(1016, 'Espinho', NULL);

INSERT INTO Dialogue (id_dialogue, dialogue) VALUES 
(1, 'Você acredita que é mais seguro desaparecer ou enfrentar seus medos?'), 
(2, 'O que é mais real, os sonhos ou as lembranças?'),
(3, 'Você confia no que vê, ou no que sente?'),
(4, 'Qual é a verdadeira loucura, o caos ou a ordem?'),
(5, 'Você jogaria um jogo sabendo que a Rainha trapaceia?'),
(6, 'Se pudesse escolher, preferiria a sombra ou a luz?'),
(7, 'Poder absoluto é uma bênção ou uma maldição?'),
(8, 'O que você mais deseja: controle ou liberdade?'),
(9, 'O País das Maravilhas te transformou ou revelou quem você realmente é?'),
(10, 'Desaparecer pode ser uma estratégia inteligente, não acha?'),

-- Chapeleiro Maluco
(11, 'Você já parou para pensar que todos somos loucos aqui?'),
(12, 'Ser normal é uma maldição ou uma bênção?'),
(13, 'O que você prefere, uma xícara de chá ou a companhia da Rainha?'),
(14, 'Se pudesse escolher, viveria na lógica ou no absurdo?'),
(15, 'Aceitaria um chapéu que te deixaria mais... curioso?'),
(16, 'O tempo corre contra ou a favor de você?'),
(17, 'Se pudesse tomar chá para sempre, o faria?'),
(18, 'O que é mais real, o agora ou o que poderia ser?'),
(19, 'Você seguiria seus sentidos ou sua intuição?'),
(20, 'Você acha que minha loucura é contagiante?'),

-- Rainha de Copas
(21, 'Você obedece sem questionar?'),
(22, 'Você acha que merece estar ao meu lado?'),
(23, 'Quem você acha que devo punir hoje?'),
(24, 'Você me juraria lealdade incondicional?'),
(25, 'Você gosta de jogar croquet?'),
(26, 'Você já pensou em trair minha confiança?'),
(27, 'O que faria se estivesse no meu lugar?'),
(28, 'Acha que sou justa em minhas decisões?'),
(29, 'Você tem medo de mim?'),
(30, 'Você acredita que a confiança é uma via de mão dupla?'),

-- Lebre de Março
(31, 'Você prefere chá ou café?'),
(32, 'Aceitaria uma xícara de chá?'),
(33, 'Você acredita que o tempo está contra nós?'),
(34, 'Se pudesse escolher, preferiria viver no passado ou no presente?'),
(35, 'Você confia mais na realidade ou na imaginação?'),

-- Arganaz (Dormouse)
(36, 'Você acha que dormir demais é um problema?'),
(37, 'Eu sou preguiçoso ou apenas cansado?'),
(38, 'Você confiaria em um conselheiro que dorme tanto quanto eu?'),
(39, 'O que você acha de alguém que sonha com a Rainha?'),

-- Coelho Branco
(40, 'Estou atrasado! Devo correr ou enfrentar as consequências?'),
(41, 'Você acha que é mais importante ser pontual ou ser correto?'),
(42, 'Se você tivesse pouco tempo, o que priorizaria: dever ou desejo?'),
(43, 'Você acha que é possível recuperar o tempo perdido?'),
(44, 'O que você faz quando o tempo parece escapar?'),
(45, 'Você já sentiu que está correndo em círculos?'),
(46, 'Você acha que é melhor chegar cedo ou exatamente na hora?'),
(47, 'O que você faria se soubesse que está atrasado para algo importante?'),
(48, 'Se pudesse voltar no tempo, mudaria alguma coisa?'),
(49, 'Você já sentiu que o tempo está conspirando contra você?'),

-- Cachorro
(50, 'Você confia em seus instintos?'),
(51, 'O que você faria para proteger aqueles que ama?'),
(52, 'A lealdade é absoluta ou condicional?'),
(53, 'Você já se perguntou o que é mais importante: a força ou o coração?'),
(54, 'Você seguiria ordens que vão contra sua moral?'),
(55, 'Como você lida com a traição?'),
(56, 'Se tivesse que escolher entre proteger um amigo ou cumprir um dever, o que faria?'),
(57, 'Você acha que é possível ser forte e gentil ao mesmo tempo?'),
(58, 'O que você prefere: ser temido ou ser amado?'),
(59, 'Você acredita que a justiça deve ser severa ou misericordiosa?'),

-- Tweedledee e Tweedledum
(60, 'Se você tivesse que escolher, preferiria a verdade ou a felicidade?'),
(61, 'Quem você acha que é o mais inteligente, eu ou ele?'),
(62, 'Você já se perguntou por que as coisas são assim?'),
(63, 'Se nós brigássemos, quem você apoiaria?'),
(64, 'O que você faria se descobrisse que nada disso é real?'),
(65, 'Se você tivesse que nos escolher, escolheria a mim ou a ele?'),
(66, 'Quem é mais assustador, a Rainha ou nós dois juntos?'),
(67, 'Você acha que é possível ganhar todos os jogos, ou alguns são feitos para perder?'),
(68, 'Se nós dois estivéssemos mentindo, você acreditaria em quem?'),
(69, 'Se um de nós desaparecesse, sentiria falta?'),

-- Homem Queixudo
(70, 'Você realmente acha que é digna da atenção da Rainha?'),
(71, 'Não acha que a Rainha já tem companhias melhores do que você?'),
(72, 'A Rainha realmente confiaria em alguém tão... comum como você?'),
(73, 'Você acha que pode realmente entender as complexidades da corte?'),
(74, 'Se a Rainha soubesse de todos os seus segredos, ainda te aceitaria?'),
(75, 'Você realmente acredita que pode superar minha influência na corte?'),
(76, 'Você acha que a Rainha precisa de alguém como você para orientá-la?'),
(77, 'Se tivesse que escolher entre sua lealdade e sua segurança, o que faria?'),
(78, 'A Rainha gosta de pessoas que falam a verdade, mas será que você se atreveria?'),
(79, 'Você acha que a Rainha pode confiar totalmente em você?'),

-- Mulher Orelhuda
(80, 'Eu ouvi algo muito interessante sobre você, gostaria de saber?'),
(81, 'Você acha que é prudente que a Rainha confie em alguém como você?'),
(82, 'Se a Rainha soubesse o que eu ouvi sobre você, como você se sentiria?'),
(83, 'Você acha que a Rainha deveria ouvir tudo, ou algumas coisas devem ser mantidas em segredo?'),
(84, 'Eu sempre ouço o que as pessoas dizem sobre você, deveria compartilhar com a Rainha?'),
(85, 'Você acha que pode esconder algo de mim?'),
(86, 'Eu poderia contar tantas coisas à Rainha, mas você me daria uma boa razão para não fazer isso?'),
(87, 'Você acredita que a lealdade deve ser provada ou apenas declarada?'),
(88, 'Você acha que falar demais pode ser perigoso?'),
(89, 'Eu ouvi dizer que a Rainha não gosta de quem esconde segredos, você concorda?'),

-- Jaguadarte
(90, 'Jaguadarte aparece para você'),

-- Absolem dialogue
(90, 'Quem é você?'),
(91, 'Você acredita no destino?'),
(92, 'Você entende a importância do tempo?'),
(93, 'A sabedoria vem com a idade?'),
(94, 'Você está pronta para as mudanças que virão?'),
(95, 'Você acredita em reencarnação?'),
(96, 'Você sabe o que é real e o que é ilusão?'),
(97, 'Você está ciente das consequências de suas ações?'),
(98, 'O conhecimento é um fardo ou uma bênção?'),
(99, 'Você está satisfeita com suas escolhas até agora?'),

-- Rainha Branca
(100, 'Você acredita que a paz pode ser alcançada sem sacrifícios?'),
(101, 'Se pudesse escolher entre justiça e misericórdia, o que escolheria?'),
(102, 'Você acha que a bondade pode ser uma fraqueza?'),
(103, 'O que você faria se enfrentasse uma escolha entre o bem maior e a felicidade de poucos?'),
(104, 'Você acredita que todos merecem uma segunda chance?'),
(105, 'Se pudesse mudar o passado para corrigir um erro, o faria?'),
(106, 'O que você acha mais importante: a verdade ou a harmonia?'),
(107, 'Você acredita que a gentileza pode vencer qualquer adversidade?'),
(108, 'O que faria se tivesse que escolher entre seu dever e sua felicidade?'),
(109, 'Você acha que o mundo pode ser mudado por uma pessoa?'),

-- Valete de Copas
(110, 'Você acredita que a justiça é cega?'),
(111, 'Se pudesse escolher, preferiria ser temido ou respeitado?'),
(112, 'Você acha que a lei é justa para todos?'),
(113, 'O que você faria se soubesse que alguém está quebrando a lei?'),
(114, 'Você acredita que a punição é a melhor forma de ensinar?'),
(115, 'Se pudesse escolher, preferiria ser juiz ou executor?'),
(116, 'Você acha que a lei é absoluta ou pode ser interpretada?'),
(117, 'O que você faria se soubesse que a lei é injusta?'),
(118, 'Você acredita que a justiça pode ser cega e surda?'),
(119, 'Se pudesse mudar uma lei, o faria?'),

-- Tutorial
(1000, 'Você avista um coelho muito estranho e apressado, com um relógio de bolso na mão e um colete'),
(1001, 'Ao perserguir o coelho, você cai em um buraco que parece uma casa de gigante. Em sua frente, há um bolinho escrito "Coma-me"')
(1002, 'Você cresceu de tamanho demais, porém, há um líquido na mesa escrito "Beba-me"')
(1003, 'Você encontrou uma porta no seu tamanho, mas está trancada. Há uma chave em cima da mesa')
(1004, 'Você se depara com um mundo diferente lá fora.'),
(1005, 'Um rapaz estranho com um chapéu muito grande aparece e fala com você.'),
(1006, 'Oi, eu sou o Chapeleiro Maluco. Bem vinda ao País das Maravilhas'),
(1007, 'Você acredita que é mais seguro desaparecer ou enfrentar seus medos?'),
(1008, 'Querida Alice, tome cuidado nesse mundo, há seres muito crueis aqui'),
(1009, 'Um vazamento de água começou a encher rapidamente o local. O que você fará?'),

-- Inicios
(1010, 'Você retorna ao País das Maravilhas.')
(1011, 'Você acorda em um lugar estranho, com um coelho branco te apressando para segui-lo.'),
(1012, 'Você encontra um espelho que reflete uma versão mais jovem de você. Ela te chama para o outro lado.')
(1013, 'Você encontra um buraco no chão e decide cair nele.')
(1014, 'Você fica com febre e começa a perder sua conciencia.'),


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
(1000, 1000, 1000, 'Seguir ele', 'Correr atrás'), -- ASW1: queen 0, popularity 0, life 0, size 0; ASW2: queen 0, popularity 0, life 0, size 0;
(1001, 1001, 1001, 'Comer', 'Não Comer'), -- ASW1: queen 0, popularity 0, life -10, size 10; ASW2: queen 0, popularity 0, life 0, size 0;
(1002, 1002, 1002, 'Beber', 'Não Beber'), -- ASW1: queen 0, popularity 0, life -10, size -10; ASW2: queen 0, popularity 0, life 10, size 0;
(1003, 1003, 1003, 'Abrir porta', 'Não abrir'), -- ASW1: queen 0, popularity 0, life 10, size 0; ASW2: queen 0, popularity 0, life 10, size 0;
(1004, 1004, 1004, 'Que lindo', 'Parece falso'), -- ASW1: queen -10, popularity 10, life -10, size 0; ASW2: queen 0, popularity -10, life 10, size 0;
(1005, 1005, 1005, 'Quem é você?', 'Fica longe'), -- ASW1: queen -10, popularity 10, life -10, size 0; ASW2: queen 10, popularity -10, life 10, size 0;
(1006, 1006, 1006, 'Olá', 'Não falo com estranhos'), -- ASW1: queen 0, popularity 10, life -10, size 0; ASW2: queen 0, popularity -10, life 10, size 0;
(1007, 1007, 1007, 'Desaparecer', 'Engrentar'), -- ASW1: queen 10, popularity -10, life -10, size 0; ASW2: queen -10, popularity 10, life 10, size 0;
(1008, 1008, 1008, 'Eu sou o perigo', 'Obrigada pela dica'), -- ASW1: queen 10, popularity -10, life -10, size 0; ASW2: queen 0, popularity 10, life 10, size 0;
(1009, 1009, 1009, 'Sair pela porta', 'Ficar'), -- ASW1: queen 0, popularity 0, life 10, size -10; ASW2: queen 0, popularity 0, life -10, size 0;
(1010, 1010, 1010, 'Como?', 'O que?'), -- ASW1: queen 10, popularity 10, life 10, size 10; ASW2: queen 10, popularity 10, life 10, size 10;
(1011, 1011, 1011, 'Seguir o coelho', 'Ficar'), -- ASW1: queen 0, popularity 0, life 0, size 0; ASW2: queen 0, popularity 0, life 0, size 0;
(1012, 1012, 1012, 'Entrar no Espelho', 'Ficar'), -- ASW1: queen 0, popularity 0, life 0, size 0; ASW2: queen 0, popularity 0, life 100, size 0;
(1013, 1013, 1013, 'Pular dentro', 'Sair'), -- ASW1: queen 0, popularity 0, life -10, size 0; ASW2: queen 0, popularity 0, life 100, size 0;
(1014, 1014, 1014, 'O que?', 'Onde estou'), -- ASW1: queen -10, popularity -10, life -10, size -10; ASW2: queen -10, popularity -10, life -10, size -10;

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