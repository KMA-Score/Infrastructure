#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER "kma_score" WITH PASSWORD '$POSTGRES_KMA_SCORE_PASSWORD';
	CREATE DATABASE "kma_score";
	GRANT ALL PRIVILEGES ON DATABASE "kma_score" TO "kma_score";
    ALTER DATABASE "kma_score" OWNER TO "kma_score";

    CREATE USER "keycloak" WITH PASSWORD '$KEYCLOAK_DATABASE_PASSWORD';
	CREATE DATABASE "keycloak";
	GRANT ALL PRIVILEGES ON DATABASE "keycloak" TO "keycloak";
    ALTER DATABASE "keycloak" OWNER TO "keycloak";
EOSQL