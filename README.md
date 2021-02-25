## What's this repo?

To practice how to develop a single page application with Nuxt.js using Ruby on Rails backend.

## Versions

- Ruby: 3.0
- Rails: 6.1.3
- Node.js: 14
- Nuxt.js: 2.14

## Initialize

```bash
cp ./front/.env.example ./front/.env
docker-compose build

// Initialize database
docker-compose run --rm back bundle exec rails db:create
docker-compose run --rm back bundle exec rails db:migrate
docker-compose run --rm back bundle exec rails db:seed_fu
```

## Start development

```bash
docker-compose up -d
```

Now you can access nuxt app on your web browser.
http://localhost:3000

## How to
### Add libraries for front

```bash
docker-compose exec front yarn add @nuxtjs/axios
```