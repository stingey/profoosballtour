source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
ruby '2.6.8'
gem 'rake','12.3.3'
gem 'rails', '~> 5.1.4'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0.6'
gem 'uglifier', '>= 1.3.0'
gem 'autoprefixer-rails'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'slim', '~> 3.0', '>= 3.0.9'
gem 'devise'
gem 'jquery-rails'
gem 'ffaker', '~> 2.8'
gem 'font-awesome-rails'
gem 'carrierwave', '~> 1.2', '>= 1.2.2'
gem 'mini_magick'
gem 'jquery-fileupload-rails', '~> 0.4.7'
gem 'simple_form'
gem 'delayed_job_active_record'
gem 'pg'
gem 'httparty', '~> 0.16.2'
gem 'awesome_print', require:"ap"
gem 'nokogiri'
gem 'bootstrap'
gem 'cancan'
gem 'kaminari'
gem 'bootstrap4-kaminari-views'
gem 'bcrypt'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # gem 'dotenv', '~> 2.1', '>= 2.1.1'
  gem 'dotenv-rails'
  gem 'rspec-rails'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-rails'
  # Adds support for Capybara system testing and selenium driver
end

group :development do

  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
