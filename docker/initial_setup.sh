docker-compose run puma_local_web bundle install
docker-compose run puma_local_web rake db:create db:setup
docker-compose stop
