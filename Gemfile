source "http://rubygems.org"

ruby "2.1.0"

gem "thin"
gem "sinatra", :require => "sinatra/base"
gem "sinatra-contrib", :require => ["sinatra/content_for", "sinatra/respond_with", "sinatra/reloader"]
gem "haml"
gem "coffee-script"
gem "sass"
gem "compass"
gem "bootstrap-sass", "~> 2.1.0"
gem "sprockets"
gem "mail"
gem "dotenv"

group :test do
  gem "rspec", :require => "rspec/core/rake_task"
  gem "rack-test"
  gem "capybara", require: "capybara/dsl"
end

group :development do
  gem "pry"
end
