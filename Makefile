IMAGE = qingwave/crond
TAG = latest

build:
	docker build -t $(IMAGE):$(TAG) .

push: build
	docker push $(IMAGE):$(TAG)

run: build
	docker run -it --name crond --rm --env CRON_SCHEDULE='$(CRON_SCHEDULE)' $(IMAGE):$(TAG)
