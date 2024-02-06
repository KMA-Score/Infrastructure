ready:
	docker network create --subnet=172.37.0.0/16 --ip-range=172.37.5.10/24 --gateway=172.37.5.254 superkma

# Development config
up:
	docker compose -f postgresql/docker-compose.yaml -f keycloak/docker-compose.dev.yaml up -d

down:
	docker compose -f postgresql/docker-compose.yaml -f keycloak/docker-compose.dev.yaml down

clean:
	docker compose -f postgresql/docker-compose.yaml -f keycloak/docker-compose.dev.yaml down -v
	docker network rm superkma
	


# Production config
prod-up:
	docker compose -f postgresql/docker-compose.yaml -f keycloak/docker-compose.yaml up -d

prod-down:
	docker compose -f postgresql/docker-compose.yaml -f keycloak/docker-compose.yaml down

prod-clean:
	docker compose -f postgresql/docker-compose.yaml -f keycloak/docker-compose.yaml down -v
	docker network rm superkma