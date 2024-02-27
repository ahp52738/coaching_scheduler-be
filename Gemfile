source 'https://rubygems.org'
git_source(:github) { |repo| 'https://github.com/#{repo}.git' }

ruby '3.2.0'
gem 'rails', '~> 7.0.8', '>= 7.0.8.1'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'tzinfo-data', platforms: %i[ mingw mswin x64_mingw jruby ]
gem 'bootsnap', require: false
gem 'rack-cors'

group :development do
  gem 'annotate'
  gem 'better_errors'
end

group :development, :test, :staging do
  gem 'byebug', '~> 9.0.6'
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'rspec-rails'
end

group :test do
end
