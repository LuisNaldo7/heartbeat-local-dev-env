# Heartbeat Local Development Environment

This is a local setup for all components of the heartbeat project.

## Components

[Heartbeat-Client](https://github.com/LuisNaldo7/heartbeat-client)

[Heartbeat-Server](https://github.com/LuisNaldo7/heartbeat-server)

[Heartbeat-Alert](https://github.com/LuisNaldo7/heartbeat-alert)

[Heartbeat-Dashboard](https://github.com/LuisNaldo7/heartbeat-dashboard)

![Diagram](./docs/components.png)

## Run

Copy .env.example to .env and adjust values.

start containers

```
docker-compose up -d
```

stop containers

```
docker-compose down
```

## Dashboard

Visit http://localhost/ to get an overview of registered clients and their latest states.

## Trigger Alert Mail

stop execution of any heartbeat-client

```
docker stop client-1
```

alert mail will be sent after max_timeout exceeds

## Managing Database

Visit [http://localhost:8080/](http://localhost:8080/?server=db&username=heartbeat&db=heartbeat) to view admin frontend. Credentials are defined in service "database" of docker-compose.yml
