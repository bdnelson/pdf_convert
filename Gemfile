source 'https://rubygems.org'
git_source(:github) { |repo| 'https://github.com/#{repo}.git' }

ruby '>=2.6'

gem 'rails', '~> 6.0.3'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'puma'
gem 'sass-rails'
gem 'sqlite3'

gem 'awesome_print'
gem 'coffee-rails'
gem 'damerau-levenshtein'
gem 'enumerations'
gem 'httpclient'
gem 'jbuilder', '~> 2.5'
gem 'jwt'
gem 'logdna'
gem 'paper_trail'
gem 'prawn-rails'
gem 'prawn-svg'
gem 'seed-fu'
gem 'sentry-raven'
gem 'table_print'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development do
  gem 'capistrano', '~> 3.10', require: false
  gem 'capistrano-rails', '~> 1.3', require: false
  gem 'capistrano-passenger'
  gem 'ed25519'
  gem 'bcrypt_pbkdf'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'annotate'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'letter_opener'
  gem 'parser', '2.7.1'
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'rspec-core'
  gem 'rspec-expectations'
  gem 'rspec-mocks'
  gem 'rspec-rails', '~> 4.0.0'
  gem 'rspec-support'
  gem 'rubocop'
  gem 'rubocop-performance'
  gem 'rubycritic', require: false
  gem 'slim_lint'
  gem 'standard'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end
