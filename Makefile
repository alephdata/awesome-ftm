all: install build publish

install:
	pip install -r requirements.txt

build:
	mkdocs build

publish:
	aws --endpoint-url https://s3.dataresearchcenter.net s3 sync ./site s3://static/tools.followthemoney.tech
