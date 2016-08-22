source 'https://rubygems.org'
# Setting
gem 'rails-settings-cached'

gem 'awesome_nested_set'

# User Avatar
gem 'letter_avatar'

gem 'bootstrap', '4.0.0.alpha3.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 5.0.0.rc1', '< 5.1'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.5'
# Use Puma as the app server
gem 'puma', '~> 3.0'
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
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.x'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# 角色系统
gem 'devise', git: 'https://github.com/plataformatec/devise.git'
# 权限相关
# gem 'cancan'
gem 'cancancan'
gem 'rolify'

# Sidekiq
gem 'sidekiq', '~> 4.1', '>= 4.1.4'
gem 'sinatra', github: 'sinatra/sinatra', :require => false

# 分页
# gem 'will_paginate'
gem 'will_paginate', github: 'jonatack/will_paginate'
# 搜索
gem 'ransack', github: 'activerecord-hackery/ransack'
# 表单
gem 'simple_form'
# OAuth
# gem 'doorkeeper'
# API
# gem 'active_model_serializers'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# s
# gem 'rails-i18n', '~> 5.0.0.beta3'
# gem 'devise-i18n‘
# gem 'will-paginate-i18n‘
# gem 'doorkeeper-i18n'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'pry', '>= 0.10.4'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'capistrano-rails'
  gem 'capistrano-rvm'
  gem 'capistrano3-puma'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
