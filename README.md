# README

Assement project to validate my skills in ruby on rails.

Things you may want to cover:


* Ruby version
    - 3.2.1

* Configuration
    - docker desktop with WSL2 on windows 11


# Installation

Build project
```bash
docker compose build
```

Start project
```bash
docker compose up
```
### Database
- creation
    ```bash
    docker compose run --rm app rails db:create
    ```

* initialization
    ```bash
    docker compose run --rm app rails db:migrate
    ```

* seeds
    ```bash
    docker compose run --rm app rails db:seed
    ```

* tests

    Run the migration before
    ```bash
    docker compose run --rm app rails db:migrate RAILS_ENV=test
    ```
    Run test
    ```bash
    docker compose run --rm app rails spec
    ```

