# Variables
DOCKER_COMPOSE = docker-compose
PROJECT_NAME = ygo_app

# Commands
.PHONY: build up down stop logs clean restart

# Build all Docker containers
build:
	$(DOCKER_COMPOSE) build

# Start all services
up:
	$(DOCKER_COMPOSE) up -d

# Stop all services (but keep containers)
stop:
	$(DOCKER_COMPOSE) stop

# Bring down all services (remove containers)
down:
	$(DOCKER_COMPOSE) down

# View logs for all services
logs:
	$(DOCKER_COMPOSE) logs -f

# Clean the environment (remove containers, images, and volumes)
clean:
	$(DOCKER_COMPOSE) down --rmi all --volumes --remove-orphans

# Restart the application
restart: stop up
