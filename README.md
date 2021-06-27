# heartbeat-local-dev-env

Local setup for components of heartbeat project.

## Run

Copy .env.example to .env and adjust values.

start containers
```bash
docker-compose up -d
```

stop containers
```bash
docker-compose down
```

## Trigger Alert Mail

stop execution of any heartbeat-client
```bash
docker stop client-1
```

alert mail will be sent after max_timeout exceeds