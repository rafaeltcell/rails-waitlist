docker-compose run puma_web bundle install
docker-compose run puma_web rake db:create db:setup
docker-compose stop
