source 'https://rubygems.org'
ruby '2.2.2'

gem 'rails', '4.2.5'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'puma'  # webserver
gem 'rails_12factor'  # enables Heroku's platform features
gem 'neat'  # CSS grid framework

group :development, :test do
  gem 'pry', require: false  # interactive debugger
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  gem 'rspec-rails'
  gem 'simplecov', require: false
  gem 'nokogiri',  require: false  # HTML parser: Used to ensure HTML links can be followed
end
