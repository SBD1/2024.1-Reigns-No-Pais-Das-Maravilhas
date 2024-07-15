### Entidades e Relacionamentos

## 1. **Capitão Pirata**
- **Atributos**: 
  - id: Identificador único
  - nome: Nome do capitão
  - recompensa: Valor da recompensa pela cabeça do capitão
  - lealdade: Nível de lealdade da tripulação
  - poder_tripulacao: Nível de poder da tripulação
  - ouro: Quantidade de ouro
  - fruta_diabo: Fruta do diabo consumida (se houver)

## 2. **Carta**
- **Atributos**:
  - id: Identificador único
  - descricao: Descrição da carta
  - tipo: Tipo de carta (decisão, pirata, marinheiro, evento, fim de jogo)
  - efeito_recompensa: Efeito na recompensa
  - efeito_lealdade: Efeito na lealdade
  - efeito_poder_tripulacao: Efeito no poder da tripulação
  - efeito_ouro: Efeito no ouro
  - proxima_carta: Referência à próxima carta (para sequências)

## 3. **Desafio**
- **Atributos**:
  - id: Identificador único
  - descricao: Descrição do desafio

## 5. **Pirata**
- **Atributos**:
  - id: Identificador único
  - nome: Nome do tripulante
  - tipo: Tipo de tripulante, inimigo, neutro.
  - forca: Força do tripulante
  - akuma_no_mi: Fruta do diabo consumida (se houver)

## 6. **Ilha**
- **Atributos**:
  - id: Identificador único
  - nome: Nome da ilha
  - descricao: Descrição da ilha

## 7. **Fruta do Diabo**
- **Atributos**:
  - id: Identificador único
  - nome: Nome da fruta
  - poder: Poder concedido pela fruta
  - efeito_secundario: Efeito secundário da fruta

## 8. **evento**
- **Atributos**:
  - id: Identificador único
  - tipo: (decisão, evento, luta, fim de jogo)
  - descricao: Descrição do evento
  - efeito_recompensa: Efeito na recompensa
  - efeito_lealdade: Efeito na lealdade
  - efeito_poder_tripulacao: Efeito no poder da tripulação
  - efeito_ouro: Efeito no ouro

## 9. **Fim de Jogo**
- **Atributos**:
  - id: Identificador único
  - tipo: (recompensa alta, recompensa baixa, lealdade alta, lealdade baixa, poder_tripulacao alta, poder_tripulacao baixa, ouro alto, ouro baixo)
  - descricao: Motivo pelo qual o jogo terminou

## 10. **Tripulação**
- **Atributos**:
  - id: Identificador único
  - espaço: tamanho do navio
  - contem: (médico, espadachim, cozinheiro, navegador, arqueiro, atirador, carpinteiro, músico, arqueólogo, historiador, botânico, zoólogo, arquiteto, engenheiro, cientista, médico, espião, assassino, caçador de recompensas, mercenário, marinheiro, soldado, guerreiro, bárbaro, ladrão, pirata, nobre, realeza, plebeu, escravo, criminoso, fugitivo, refugiado, exilado, prisioneiro, condenado, foragido, procurado, perseguido, caçado, rastreado).

## 11. **Marinheiro**
- **Atributos**:
  - id: Identificador único
  - nome: Nome do marinheiro
  - tipo: Tipo de marinheiro
  - forca: Força do marinheiro
  - akuma_no_mi: Fruta do diabo consumida (se houver)

## Relacionamentos

1. **Capitão Pirata** recruta **Tripulante**.
2. **Capitão Pirata** visita **Ilha**.
3. **Capitão Pirata** come **Frutas do Diabo**.
4. **Capitão Pirata** vence **Desafios**.
5. **Capitão Pirata** lidera **Tripulação**.
6. **Ilha** contém **Cartas**.
7. **Cartas** desencadeia **Eventos**.
8. **Eventos** finaliza **Fim de Jogo**.
9. **Eventos** retorna **Cartas**.
10. 

### Exemplos de Cartas e Decisões

## Carta 1: "Espadachim"
- **Descrição**: "Capitão, você me permite sair para comprar uma espada mais forte?"
  - **Decisão 1**: Não (efeito: -tripulação, -reputação)
  - **Decisão 2**: Sim (efeito: +tripulação, +reputação, -ouro)

## Carta 2: "Ladra"
- **Descrição**: "Capitão, vi um acampamento cheio de ouro, me permite saquear e trazer esse ouro para a gente?"
  - **Decisão 1**: Não (efeito: +tripulação, -reputação, -ouro, -recompensa)
  - **Decisão 2**: Sim (efeito: -tripulação, +reputação, +ouro, +recompensa)

### Funções e Mecanismos

1. **Eventos Aleatórios**: Geração de cartas e eventos aleatórios para criar variedade no jogo.
2. **Sistema de Equilíbrio**: Manter o equilíbrio entre os fatores (Recompensa, Lealdade, Ouro, Saúde) é crucial para o sucesso.
3. **Desenvolvimento de História**: As decisões tomadas pelo jogador afetam a narrativa e desbloqueiam novas cartas e eventos.

### Implementação de Eventos e Desafios

## Desafio: "Conquistar uma Ilha"
- **Descrição**: Uma ilha rica em recursos está sob controle de piratas inimigos. Conquiste a ilha.
  - **Recompensa**: +Recursos
  - **Dificuldade**: Alta

## Luta: "Ataque de Piratas"
- **Descrição**: Você é atacado por piratas rivais.
  - **Perda de Tripulantes**: -3 Tripulantes
  - **Perda de Poder da Tripulação**: -10
  - **Perda de Saúde**: -15

## Doença: "Febre Marítima"
- **Nome**: Febre Marítima
- **Efeito na Saúde**: -20 Saúde
- **Duração**: 3 Turnos

### Função de Dados Aleatórios

Para incorporar a função de lançar dados ocasionalmente, podemos criar eventos que exijam uma jogada de dados para determinar o resultado.

## Evento: "Lançar os Dados"
- **Descrição**: Você encontrou um baú misterioso. Lance os dados para determinar o conteúdo.
  - **Decisão 1**: Lançar os dados (Efeito: Resultado aleatório de +Ouro, +Recompensa, +Saúde, ou uma nova Doença)
  - **Decisão 2**: Não lançar (Efeito: Nenhum)

