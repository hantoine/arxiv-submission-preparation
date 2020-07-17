# Prepare an Overleaf Paper for ArXiv submission

## Installation
	
	docker build -t prepare-arxiv-submission .
## Usage
	cat overleaf_paper.zip | docker run -i prepare-arxiv-submission > paper_ready.zip
