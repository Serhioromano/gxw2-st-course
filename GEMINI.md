# Project Overview

This is a documentation project that uses MkDocs to generate a static website. The project contains materials for a course on programming PLCs of the Mitsubishi FX series using GX Works 2. The source files are written in Markdown and are located in the `docs` directory. The website is configured in Russian. Document files are prepare for narration for video series lessons and meant not to be read but to be said.

## Building and Running

To work with the project, you need to have Python and pip installed.

**Installation:**

To install the necessary dependencies, run the following command:

```bash
pip install mkdocs mkdocs-material mkdocs-git-authors-plugin mkdocs-git-revision-date-localized-plugin mkdocs-git-committers-plugin
```

**Local Development:**

To start a local development server, run the following command. This will allow you to see your changes in real-time.

```bash
mkdocs serve
```

**Deployment:**

To deploy the website to GitHub Pages, run the following command:

```bash
mkdocs gh-deploy
```

## Key Files

* `mkdocs.yml`: The main configuration file for the MkDocs project. It defines the site structure, navigation, plugins, and theme.
* `docs/`: This directory contains all the documentation source files in Markdown format.
* `Makefile`: This file contains helper commands for common tasks like installing dependencies, running the local server, and deploying the site.
* `GEMINI.md`: This file, providing context and instructions for interacting with the project.
