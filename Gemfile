source 'http://ruby.taobao.org/'
ruby '1.9.3'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'
gem "heroku"

#Sinatra is a DSL for quickly creating web applications in Ruby with minimal effort
gem 'sinatra'

#rails debug tool
gem 'pry'
gem 'pry-debugger'
gem 'pry-stack_explorer'
gem 'pry-nav'

#rails tool

# Use sqlite3 as the database for Active Record


# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
 gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
group :development, :test do
  gem 'mysql2'
end
gem 'thin'#use thin instead of Webrick //with production
group :production do
  
  gem 'pg'
end
#oAuth2,for sina
  gem 'devise'
  gem 'omniauth'
  gem 'omniauth-weibo-oauth2'
  gem 'weibo_2'
# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
