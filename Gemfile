# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'rails', '~> 6.1.4'
# Essentials
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.4.0'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Reactive Rails
gem 'stimulus_reflex', '3.5.0.pre2'
gem 'turbo-rails', '~> 0.7'

# Auth
gem 'devise'

gem 'redis', '>= 4.0', require: ['redis', 'redis/connection/hiredis']
# Native adapter for a much faster redis
gem 'hiredis'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 5.0.0'
end

group :development do
  gem 'launchy'
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'stimulus_reflex_testing'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'capybara'
  gem 'cuprite'
  gem 'simplecov', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
