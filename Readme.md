# Crond

Simple container cron job based apline. Designed as sidecar for Kubernetes pods run cron job.

## Usage

- Use shared volumes to share path if needed
- Set `CRON_SCHEDULE` to configure cron job
- See [demo-cron.yaml](example/demo-cron.yaml) for a sample app

### Standalone
Run in Docker
```sh
docker run -d --name crond --rm \
    --env CRON_SCHEDULE='$(CRON_SCHEDULE)'\
    qingwave/crond:latest
```

Run in k8s
```sh
kuectl run crond\
    --image=qingwave/crond:latest\
    --env="CRON_SCHEDULE=$(CRON_SCHEDULE)"
```
