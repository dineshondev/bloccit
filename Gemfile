source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use sqlite3 as the database for Active Record
 group :production do
   gem 'pg'
   gem 'rails_12factor'
 end
 
 group :development do
   gem 'sqlite3'
 end
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# bootstrap
gem 'bootstrap-sass'

#pry
gem 'pry-rails', :group => :development

#Mock seed data
gem 'faker'

# MVC Gem for authentication
gem 'devise'

# Figaro to store env variables
gem 'figaro', '1.0'

# Gem for authorization
gem 'pundit'

# Markdown library that is used in github
gem 'redcarpet'

# This gem provides a simple and extremely flexible way to upload files from Ruby applications. 
gem 'carrierwave'

# A ruby wrapper for ImageMagick command line.
gem 'mini_magick'

# Ruby cloud services library. http://fog.io
gem 'fog'

# for pagination
gem 'will_paginate', '~> 3.0.5'

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
end

# Tool for rails feature spec
group :test do
  gem 'capybara'
end

gem 'newrelic_rpm'

gem 'puma', group: :production
gem 'thin', group: :development
gem 'factory_girl_rails', '~> 4.0'