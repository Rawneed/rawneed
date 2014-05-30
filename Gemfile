# Rawneed app Gemfile
# Bode Fuwa
# 2014

source 'https://rubygems.org'
ruby '2.1.1'

# General gems

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc
# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

gem 'sprockets', '2.11.0'
gem 'acts-as-taggable-on'
gem 'font-awesome-sass'

# Authentication
gem 'devise'

# Tools
gem 'carrierwave'
gem 'mini_magick', '~> 3.5.0'
gem 'biblesearch-api', '1.1.0'
gem 'will_paginate', '~> 3.0.4'

# Production
group :production do
# gem 'pg'
 gem 'rails_12factor', '0.0.2'
 gem 'unicorn', '~> 4.8.0'
end

# Testing
group :test do
 gem 'selenium-webdriver', '~> 2.35.1'
 gem 'capybara', '~> 2.1.0'
 gem 'cucumber-rails', '1.4.0', :require => false
 gem 'factory_girl_rails', '~> 4.2.0'
end

# Development
group :development, :test do
# Use sqlite3 as the database for Active Record
 gem 'sqlite3'
 gem 'rspec-rails', '~> 2.13.1'
 gem 'capistrano', group: :development
 gem 'capistrano-rails', '~> 1.1.1'
 gem 'capistrano-bundler', '~> 1.1.1'
 gem 'capistrano-rbenv', '~> 2.0.2'
end
