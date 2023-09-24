source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'bootsnap', require: false
gem 'dockerfile-rails', '>= 1.5', :group => :development
gem 'pg'
gem 'puma', '~> 5.0'
gem 'rack-cors'
gem 'rails', '~> 7.0.5'
gem 'sentry-rails', '~> 5.11'
gem 'sentry-ruby', '~> 5.11'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

# Using branch to support Rails 7
# https://github.com/the-refinery/sparkpost_rails/pull/89
gem 'sparkpost_rails',
    git: 'https://github.com/sunny/sparkpost_rails.git',
    branch: 'allow-rails-seven'
