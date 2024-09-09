document.addEventListener('DOMContentLoaded', () => {
    lucide.createIcons();

    let deck;
    let endings;
    let currentCardIndex = 0;
    const scores = { queen: 50, popularity: 50, health: 50, size: 50 };
    let isGameOver = false;

    const cardImage = document.getElementById('card-image');
    const cardTitle = document.getElementById('card-title');
    const cardText = document.getElementById('card-text');
    const leftButton = document.getElementById('left-button');
    const rightButton = document.getElementById('right-button');
    const eatButton = document.getElementById('eat-button');
    const drinkButton = document.getElementById('drink-button');

    async function fetchDeck() {
        try {
            const response = await fetch('http://localhost:3000/api/deck');
            deck = await response.json();
            updateCard();
        } catch (error) {
            console.error('Failed to fetch deck:', error);
        }
    }

    async function fetchEndings() {
        try {
            const response = await fetch('http://localhost:3000/api/end');
            endings = await response.json();
        } catch (error) {
            console.error('Failed to fetch endings:', error);
        }
    }

    function updateCard() {
        const currentCard = deck[currentCardIndex];
        if (currentCard) {
            cardImage.src = `data:image/png;base64,${currentCard.scene_image}`;
            cardImage.alt = `Image of ${currentCard.scene_name}`;
            cardTitle.textContent = currentCard.scene_name;
            cardText.textContent = currentCard.card_dialogue;
            leftButton.textContent = currentCard.answer_left;
            rightButton.textContent = currentCard.answer_right;
        }
    }

    function updateScores() {
        for (const [key, value] of Object.entries(scores)) {
            document.getElementById(`${key}-score`).textContent = value;
        }
    }

    function showRandomEnding() {
        const randomEnding = endings[Math.floor(Math.random() * endings.length)];
        cardImage.src = `data:image/png;base64,${randomEnding.image}`;
        cardImage.alt = `Image of ${randomEnding.title}`;
        cardTitle.textContent = randomEnding.title;
        cardText.textContent = randomEnding.description;
        leftButton.style.display = 'none';
        rightButton.style.display = 'none';
        eatButton.style.display = 'none';
        drinkButton.style.display = 'none';
    }

    function checkGameOver() {
        for (const [attribute, value] of Object.entries(scores)) {
            if (value <= 0 || value >= 100) {
                isGameOver = true;
                showRandomEnding();
                return true;
            }
        }
        return false;
    }

    function handleAction(direction) {
        if (isGameOver) return;

        const currentCard = deck[currentCardIndex];
        const effect = {
            queen: direction === 'left' ? currentCard.resource_queen : -currentCard.resource_queen,
            popularity: direction === 'left' ? currentCard.resource_popularity : -currentCard.resource_popularity,
            health: direction === 'left' ? currentCard.resource_health : -currentCard.resource_health,
            size: direction === 'left' ? currentCard.resource_size : -currentCard.resource_size,
        };
        
        for (const [key, value] of Object.entries(effect)) {
            scores[key] = Math.max(0, Math.min(100, scores[key] + value));
        }
        
        updateScores();
        if (!checkGameOver()) {
            currentCardIndex = direction === 'left' ? currentCard.next_card_left : currentCard.next_card_right;
            updateCard();
        }
    }

    function handleEatDrink(action) {
        if (isGameOver) return;

        scores.size = Math.max(0, Math.min(100, scores.size + (action === 'eat' ? 5 : -5)));
        updateScores();
        checkGameOver();
    }

    leftButton.addEventListener('click', () => handleAction('left'));
    rightButton.addEventListener('click', () => handleAction('right'));
    eatButton.addEventListener('click', () => handleEatDrink('eat'));
    drinkButton.addEventListener('click', () => handleEatDrink('drink'));

    // Inicialização do jogo
    Promise.all([fetchDeck(), fetchEndings()]).then(() => {
        updateCard();
        updateScores();
    });
});