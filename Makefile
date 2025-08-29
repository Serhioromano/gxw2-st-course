.PHONY: deploy init serve gitc ts bashhist

serve:
	@echo "Starting the MkDocs server..."
	mkdocs serve

ts:
	@sudo tailscale login
	@sudo tailscale up --reset --hostname=mkdocs --accept-routes

bashhist:
	@export $(grep -v '^#' .env | xargs)
	@sudo mkdir /commandhistory
	@sudo touch /commandhistory/.bash_history
	@sudo chown -R $(whoami) /commandhistory
	@SNIPPET="export PROMPT_COMMAND='history -a' && export HISTFILE=commandhistory/.bash_history"
	@echo "$SNIPPET" >> "/home/$(whoami)/.bashrc"

start:
	@npm install -g @google/gemini-cli@latest
	@gemini

init: gitc
	@echo "Start PIP configuration"
	@pip install --upgrade pip
	@pip3 install mkdocs
	@pip3 install mkdocs-material
	@pip3 install mkdocs-git-authors-plugin
	@pip3 install mkdocs-git-revision-date-localized-plugin
	@pip3 install mkdocs-git-committers-plugin
	@echo "Configuration is done"

gitc:
	git config pull.rebase false
	git config --global user.name "Serhioromano"
	git config --global user.email "Serhioromano@outlook.com"

deploy:
	@echo "Deploying the application..."
	@mkdocs gh-deploy
	@echo "Deployment complete."