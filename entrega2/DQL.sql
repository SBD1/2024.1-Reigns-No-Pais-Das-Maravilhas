-- --------------------------------------------------------------------------------------
-- Data Criacao ...........: 20/08/2024                                                --
-- Autor(es) ..............: Kauan Eiras                                                --
-- Versao .................: 1.0                                                       --
-- Banco de Dados .........: PostgreSQL                                                --
-- Descricao ..............: Queries DQL para o jogo Reigns no País das Maravilhas     --
- --------------------------------------------------------------------------------------
-- ALTERAÇÕES 
-- --------------------------------------------------------------------------------------
-- DATA   | AUTOR   | DESCRICAO                                                        --
-- --------------------------------------------------------------------------------------
-- 20/08  | Kauan   | Criação do arquivo DDL.sql com as tabelas do jogo Reigns.        --
-- --------------------------------------------------------------------------------------
-- 09/09 | Kauan   | Atualização das  tabelas.                                         --

-- Selecionar itens ativos que devem aparecer
SELECT * 
FROM Item
WHERE status = TRUE;

-- Selecionar um Deck Normal aleatório com todas as cartas no intervalo do deck, que ainda não esteja completo
SELECT * 
FROM Normal n
JOIN Deck d ON n.deck_id = d.deck_id
WHERE n.status = FALSE
ORDER BY RANDOM()
LIMIT 1;

-- Selecionar todas as scenes
SELECT * 
FROM Scene;

-- Selecionar cartas com join de cenas e diálogos, por ID
SELECT c.card_id, s.name AS scene_name, d.description AS dialogue_description
FROM Card c
JOIN Scene s ON c.scene_id = s.scene_id
JOIN Dialogue d ON c.dialogue_id = d.dialogue_id
WHERE c.card_id = <ID>;

-- Selecionar cartas com join de cenas e diálogos, por nome da cena
SELECT c.card_id, s.name AS scene_name, d.description AS dialogue_description
FROM Card c
JOIN Scene s ON c.scene_id = s.scene_id
JOIN Dialogue d ON c.dialogue_id = d.dialogue_id
WHERE s.name ILIKE '%<nome_da_cena>%';

-- Listar todos os finais possíveis
SELECT * 
FROM Ending;

-- Atualizar o status de um item quando ele for dropado por uma carta
UPDATE Item
SET status = TRUE
WHERE item_id = <ID_DO_ITEM>;

-- Atualizar o status do Deck Normal quando ele for completo
UPDATE Normal
SET status = TRUE
WHERE deck_id = <ID_DO_DECK>;

-- Listar aventuras com seus finais
SELECT a.adventure_id, e.title AS end_title, e.description AS end_description
FROM Adventure a
LEFT JOIN Ending e ON a.end_id = e.end_id;

-- Listar todas as cartas, mostrando as cenas e diálogos associados
SELECT c.card_id, s.name AS scene_name, d.description AS dialogue_description
FROM Card c
JOIN Scene s ON c.scene_id = s.scene_id
JOIN Dialogue d ON c.dialogue_id = d.dialogue_id;

-- Listar todas as cartas com informações sobre recursos que elas afetam
SELECT c.card_id, s.name AS scene_name, d.description AS dialogue_description, 
       r.queen, r.popularity, r.health, r.size
FROM Card c
JOIN Scene s ON c.scene_id = s.scene_id
JOIN Dialogue d ON c.dialogue_id = d.dialogue_id
LEFT JOIN Resource r ON c.left_resource = r.resource_id OR c.right_resource = r.resource_id;

-- Contar o número de cartas por deck
SELECT d.deck_id, COUNT(c.card_id) AS total_cards
FROM Deck d
LEFT JOIN Card c ON d.start_card_id <= c.card_id AND d.end_card_id >= c.card_id
GROUP BY d.deck_id;

-- Selecionar um Deck de Evento com todas as cartas no intervalo do deck
SELECT e.deck_id, e.attempt, c.card_id, s.name AS scene_name, d.description AS dialogue_description
FROM Event e
JOIN Deck d ON e.deck_id = d.deck_id
JOIN Card c ON d.start_card_id <= c.card_id AND d.end_card_id >= c.card_id
JOIN Scene s ON c.scene_id = s.scene_id
JOIN Dialogue d ON c.dialogue_id = d.dialogue_id
WHERE e.attempt < 3;

-- Atualizar o status de um Deck Normal para completo
UPDATE Normal
SET status = TRUE
WHERE deck_id = <ID_DO_DECK>;