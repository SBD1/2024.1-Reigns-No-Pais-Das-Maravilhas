-- --------------------------------------------------------------------------------------
-- Data Criacao ...........: 09/08/2024                                                --
-- Autor(es) ..............: [Kauan Eiras]                                             --
-- Versao .................: 1.0                                                       --
-- Banco de Dados .........: PostgreSQL                                                --
-- Descricao ..............: Inclusão de CREATE TABLE para todas as tabelas do jogo Reigns. --
-- --------------------------------------------------------------------------------------


-- Trigger que impede que um deck seja Normal e Evento ao mesmo tempo, ou que não seja nenhum dos dois
CREATE OR REPLACE FUNCTION check_deck_type() 
RETURNS TRIGGER AS $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Normal WHERE deck_id = NEW.deck_id)
       AND NOT EXISTS (SELECT 1 FROM Event WHERE deck_id = NEW.deck_id) THEN
        RAISE EXCEPTION 'Deck deve ser do tipo Normal ou Evento';
    END IF;
    IF EXISTS (SELECT 1 FROM Normal WHERE deck_id = NEW.deck_id)
       AND EXISTS (SELECT 1 FROM Event WHERE deck_id = NEW.deck_id) THEN
        RAISE EXCEPTION 'Deck não pode ser Normal e Evento ao mesmo tempo';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_check_deck_type
BEFORE INSERT OR UPDATE ON Deck
FOR EACH ROW EXECUTE FUNCTION check_deck_type();

-- Trigger que atualiza o status do item para TRUE quando uma carta com item é selecionada
CREATE OR REPLACE FUNCTION activate_item_on_card_selection()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.item_id IS NOT NULL THEN
        UPDATE Item
        SET status = TRUE
        WHERE item_id = NEW.item_id;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger que garante que uma aventura finalizada tem um final associado
CREATE OR REPLACE FUNCTION check_adventure_has_ending()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.end_id IS NULL THEN
        RAISE EXCEPTION 'A aventura deve ter um final associado';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger para garantir que uma aventura finalizada tenha um final
CREATE TRIGGER trg_check_adventure_has_ending
BEFORE UPDATE ON Adventure
FOR EACH ROW EXECUTE FUNCTION check_adventure_has_ending();
