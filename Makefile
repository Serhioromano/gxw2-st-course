.PHONY deploy

deploy:
	@echo "Deploying the application..."
	mkdocs hg-deploy
	@echo "Deployment complete."