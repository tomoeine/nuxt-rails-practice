clear:
	docker-compose down
	docker-compose run --rm back bash -c ' \
        bundle install && \
        bundle exec rails db:migrate:reset
	docker-compose run --rm front bash -c ' \
	    yarn install && \
	docker-compose up

yarn:
	docker-compose run --rm front bash -c ' \
	    yarn install'

bundle:
	docker-compose run --rm back bash -c ' \
	    bundle install'

migrate:
	docker-compose run --rm back bash -c ' \
	    bundle exec rails db:environment:set RAILS_ENV=development && \
	    bundle exec rails db:migrate'

migrate-fresh:
	docker-compose run --rm back bash -c ' \
	    bundle exec rails db:environment:set RAILS_ENV=development && \
	    bundle exec rails db:migrate:reset'
