ready:
	docker network create --subnet=172.37.0.0/16 --ip-range=172.37.5.0/24 --gateway=172.37.5.254 superkma

# Development config
up:
	docker compose -f docker-compose.dev.yaml up -d

down:
	docker compose -f docker-compose.dev.yaml down

clean:
	docker compose -f docker-compose.dev.yaml down -v
	docker network rm superkma
	
# Production config
prod-up:
	docker compose up -d

prod-down:
	docker compose down

prod-clean:
	docker compose down -v
	docker network rm superkma
