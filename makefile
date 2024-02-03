build:
	docker compose up --build --detach

install-script:
	@echo 'alias ws="docker exec -it workspace /bin/zsh"' >> ~/.zshrc
	@echo "Please run:"
	@echo "source ~/.zshrc"
