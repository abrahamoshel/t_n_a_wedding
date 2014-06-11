source "http://rubygems.org"

ruby "2.1.0"

gem "thin"
gem "sinatra", :require => "sinatra/base"
gem "sinatra-contrib", :require => ["sinatra/content_for", "sinatra/respond_with", "sinatra/reloader"]
gem "sprockets-helpers", :require => 'sinatra/sprockets-helpers'
gem "haml"
gem "coffee-script"
gem "sass", "~> 3.3.8"
gem "compass", "~> 1.0.0.alpha.19"
gem "bootstrap-sass", "~> 3.1.1"
gem "sprockets"
gem "mandrill-api", :require => "mandrill"
gem "dotenv"

group :test do
  gem "rspec", :require => "rspec/core/rake_task"
  gem "rack-test"
  gem "capybara", require: "capybara/dsl"
end

group :development do
  gem "pry"
end
