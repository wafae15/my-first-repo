# Makefile pour générer le README et calculer le nombre de lignes de code

README.md: guessinggame.sh
	@echo "# Projet Guessing Game" > README.md
	@echo "Date de génération: $(shell date)" >> README.md
	@echo "Nombre de lignes de guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md
