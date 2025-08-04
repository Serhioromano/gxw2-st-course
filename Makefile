.PHONY: deploy init serve

serve:
	@echo "Starting the MkDocs server..."
	mkdocs serve

init:
	@pip install --upgrade pip
	@pip3 install mkdocs
	@pip3 install mkdocs-material
	@pip3 install mkdocs-git-authors-plugin
	@pip3 install mkdocs-git-revision-date-localized-plugin
	@pip3 install mkdocs-git-committers-plugin
	git config --global user.name "Serhioromano"
	git config --global user.email "Serhioromano@outlook.com"

deploy:
	@echo "Deploying the application..."
	@mkdocs gh-deploy
	@echo "Deployment complete."