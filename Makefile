.PHONY: deploy init

init:
	git config --global user.name "Serhioromano"
	git config --global user.email "Serhioromano@outlook.com"

deploy:
	@echo "Deploying the application..."
	mkdocs hg-deploy
	@echo "Deployment complete."