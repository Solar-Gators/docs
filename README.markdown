# Solar Gators Master Documentation

[![Documentation Status](https://readthedocs.org/projects/solar-gators-docs/badge/?version=latest)](https://docs.ufsolargators.org/en/latest/?badge=latest)

Documentation url: https://solar-gators-docs.readthedocs.io/

This repository is the master documentation for solar gators. The docs are hosted by [Read The Docs](https://readthedocs.org/) for free. Any updates made to this repo will be automatically deployed. They are generated using [sphinx](https://www.sphinx-doc.org/en/master/) with the [sphinx_rtd_theme](https://github.com/readthedocs/sphinx_rtd_theme) template.

## Why this repo exists?

1. `If people don’t know why your project exists, they won’t use it.`
2. `If people can’t figure out how to install your code, they won’t use it.`
3. `If people can’t figure out how to use your code, they won’t use it.`

source: [Medium Article](https://link.medium.com/UeKmgYx9E7)

Anything and everything should be documented!

## How to Make Documentation

All of the documentation is written in markdown (.md or .markdown) and reStructuredText (.rst) files. markdown is the documentation language of choice for GitHub and are many guides available. Here is a [good markdown guide](https://www.markdownguide.org/getting-started/) and here is a [good markdown refrence](https://www.markdownguide.org/basic-syntax/). reStructuredText is less supported and I suggest to only use it over markdwon when you have to. There is a [reStructuredText guide here.](https://thomas-cokelaer.info/tutorials/sphinx/rest_syntax.html)

There are two options for documenting code.

- committing directly from GitHub.
- Cloning the repository and making changes locally.

### Editing from GitHub

This option is good for making small changes to existing pages, but making new pages is a little more complicated using this method. At the top of every page is "Edit on GitHub" link to directly edit the pages on GitHub.

### Editing locally

Required packages:
- Python 3.6
- Pip
- Git or GitHub Desktop or Any other GIT provider 

The first thing to do is clone the repository locally, you can either use the following command or install [GitHub Desktop](https://desktop.github.com/).

```Bash
$ git clone https://github.com/Solar-Gators/docs
```

After cloning run the following command from the root of the repository.
```Bash
$ python3 -m pip install --user pipenv
$ python3 -m pipenv install
```

The project comes configured with a make command that works with Windows, OSX, and Linux. There are various commands that can be used run `make help` to see them all. The command we are most interested in is the following command. 

```Bash
$ make livehtml
```

This command will start a local server on `http://localhost:8000`. Navigate to the URL to see the locally hosted site! Any changes you make to the source will automatically be reflected on your local site.

## Adding a New Package

If a new package is desired, then run the following command after replacing `${PACKAGE_NAME}` with the package desired.
```Bash
$ python3 -m pipenv install ${PACKAGE_NAME}
```

Read The Docs requires there to be a requirements.txt file in the repository for it to build. To generate this file run the following command.

```Bash
$ python3 -m pipenv lock -r > requirements.txt
```
