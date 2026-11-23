# Rust Tweets App

Rust Tweets App is a small Rust and PostgreSQL application for managing tweets,
users, and follows. SQLx is used for database access, and Docker Compose provides
the local PostgreSQL database.

## Prerequisites

- Docker with Docker Compose
- Rust and Cargo

## Configure the Docker environment

Create a `.env` file in the project root with the database settings:

```env
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres
POSTGRES_DATABASE=twitter
POSTGRES_PORT=5432
DATABASE_URL=postgres://postgres:postgres@127.0.0.1:5432/twitter
```

The values for `POSTGRES_USER`, `POSTGRES_PASSWORD`, and `POSTGRES_DATABASE`
must match the user, password, and database used in `DATABASE_URL`.

## Start PostgreSQL

Start the database in the background:

```bash
docker compose up -d postgres
```

Check that it is ready:

```bash
docker compose ps
```

## Initialize the database

Apply the SQL migrations from the project root, in order:

```bash
docker compose exec -T postgres \
  psql -U postgres -d twitter -f /dev/stdin < migrations/01_create_users.sql
docker compose exec -T postgres \
  psql -U postgres -d twitter -f /dev/stdin < migrations/02_create_tweets.sql
docker compose exec -T postgres \
  psql -U postgres -d twitter -f /dev/stdin < migrations/03_create_follows.sql
```

If you changed `POSTGRES_USER` or `POSTGRES_DATABASE`, replace those values in
the commands with the values from `.env`.

## Access PostgreSQL

Open an interactive PostgreSQL shell:

```bash
docker compose exec postgres psql -U postgres -d twitter
```

Useful SQL commands inside `psql`:

```sql
\dt
TABLE users;
\q
```

## Run the Rust application

```bash
cargo run
```

## Stop the environment

Stop PostgreSQL without deleting the database data:

```bash
docker compose down
```

To also delete the persisted PostgreSQL volume:

```bash
docker compose down -v
```
