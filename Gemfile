source 'https://rubygems.org'
ruby '2.2.4'

gem 'rails', '4.2.3'
gem 'pg'
gem 'rails_12factor', group: :production

gem 'bootstrap-sass', '3.3.6'
gem 'sass-rails', '~> 5.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

gem 'slim'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby, group: :production

gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'


gem 'devise'

group :puma_server do
  gem 'puma'
end

group :unicorn_server do
  gem 'unicorn'
end

group :development do
  gem 'capistrano-rails'
  gem 'capistrano-rvm'
  gem 'capistrano3-puma'
  gem 'derailed'
  gem 'stackprof'
end
