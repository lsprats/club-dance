source 'https://rubygems.org'

ruby '2.1.3'

# Rails
gem 'rails', '4.1.8'

# Authentication
gem 'devise'

# Plugins
gem 'figaro'
gem "paperclip",       "~> 4.2"
gem 'aws-sdk'
gem 'inherited_resources'
gem 'decent_exposure'
gem 'friendly_id', '~> 5.1.0'
gem 'validates_timeliness', '~> 3.0'
gem 'will_paginate', '~> 3.0.6'


# Frontend
gem 'bourbon'
gem 'slim-rails'
gem 'sass-rails',      "~> 4.0.3"
gem 'uglifier',        ">= 1.3.0"
gem 'coffee-rails',    "~> 4.0.0"
gem 'jquery-rails'
gem 'swiper-rails'

# Production
group :production do
  gem 'pg'
  gem 'rails_12factor'
end

# Test Suite
group :development, :test do
  gem "factory_girl_rails", "~> 4.0"
  gem 'faker'
  gem 'sqlite3'
end

# Test Suite
group :test do
  gem "rspec-rails"
  gem 'capybara'
  gem "shoulda-matchers"
end

# Misc
group :doc do
  gem 'sdoc', require: false
end