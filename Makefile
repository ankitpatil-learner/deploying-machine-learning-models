NAME=firstherokulearn
COMMIT_ID=$(shell git rev-parse HEAD)


build-ml-api-heroku:
	docker build --build-arg PIP_EXTRA_INDEX_URL=https://xzfCWW4PxKNnKL4KzVsz@pypi.fury.io/myorgcheck/ -t registry.heroku.com/$(NAME)/web:latest .

push-ml-api-heroku:
	docker push registry.heroku.com/firstherkoulearn/web:latest
