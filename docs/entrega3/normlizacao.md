# Primeira Forma Normal (1FN):

A 1FN requer que todas as colunas contenham valores atômicos (ou seja, cada célula tenha apenas um valor) e que cada registro tenha uma chave primária única.

    Todas as tabelas fornecidas atendem a esta forma normal, pois todas possuem chaves primárias, e os valores em cada célula são atômicos (não há atributos compostos ou multivalorados).

# Segunda Forma Normal (2FN):

A 2FN exige que a tabela já esteja na 1FN e que todos os atributos não-chave sejam totalmente dependentes da chave primária. Ou seja, não pode haver dependências parciais (dependência apenas em uma parte da chave primária, em casos de chaves compostas).

    Todas as tabelas seguem a 2FN, pois as tabelas que têm chaves compostas são especializações que herdam uma chave de outra tabela (Deck), e seus atributos dependem completamente dessas chaves. As tabelas que possuem chaves simples, como Ending, Adventure, Scene, entre outras, têm todos os seus atributos diretamente dependentes da chave primária.

# Terceira Forma Normal (3FN):

A 3FN requer que a tabela esteja na 2FN e que todos os atributos não-chave sejam independentes entre si, ou seja, não pode haver dependências transitivas entre os atributos.

- As tabelas Ending, Adventure, Deck, Scene, Dialogue, Item, e Resource atendem à 3FN, pois todos os atributos que não são chave são diretamente dependentes da chave primária e não existem dependências transitivas.

- No caso da tabela Card, também podemos afirmar que ela está na 3FN, já que todas as chaves estrangeiras são referências diretas a outras entidades (como Scene, Dialogue, Resource, Item), e os atributos que fazem referência a outros Cards (como left_next_card e right_next_card) são dependentes da chave primária card_id.

# Boyce-Codd Normal Form (BCNF):

A BCNF é uma versão mais rigorosa da 3FN. Ela exige que, para cada dependência funcional na tabela, a determinante (o atributo que determina outro) seja uma chave candidata. Uma tabela estará na BCNF se não houver dependências funcionais em que o determinante não seja uma chave candidata.

- As tabelas fornecidas seguem a BCNF, pois as únicas dependências funcionais são entre a chave primária e os outros atributos. Em nenhum caso há dependências funcionais em que o determinante não seja uma chave candidata.

# Quarta Forma Normal (4FN):

Para uma tabela estar na Quarta Forma Normal (4FN) ela já deve estar na BCNF, então já não existam dependências multivaloradas. Ou seja, uma tabela não pode ter um atributo que dependa de mais de uma chave de forma independente.

- As tabelas fornecidas atendem à 4FN, pois não há dependências multivaloradas em nenhuma delas.