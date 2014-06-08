source 'https://rubygems.org'


gem 'rails', '4.1.1'
gem 'slim-rails'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyracer',  platforms: :ruby
gem 'spring',        group: :development
gem 'sprockets', '~> 2.10'

gem 'jquery-rails'
gem 'less-rails'
gem 'twitter-bootstrap-rails', github: 'seyhunak/twitter-bootstrap-rails', branch: 'bootstrap3'
gem 'bootstrap_form'

group :production do
  gem "rails_12factor"
end

group :production, :staging do
  gem "pg"
end

group :development, :test do
  gem 'sqlite3'
end
