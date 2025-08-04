.PHONY: deploy init serve gitc

serve:
	@echo "Starting the MkDocs server..."
	mkdocs serve

init: gitc
	@pip install --upgrade pip
	@pip3 install mkdocs
	@pip3 install mkdocs-material
	@pip3 install mkdocs-git-authors-plugin
	@pip3 install mkdocs-git-revision-date-localized-plugin
	@pip3 install mkdocs-git-committers-plugin

gitc:
	git config --global user.name "Serhioromano"
	git config --global user.email "Serhioromano@outlook.com"

deploy:
	@echo "Deploying the application..."
	@mkdocs gh-deploy
	@echo "Deployment complete."