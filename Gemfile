# frozen_string_literal: true

source "https://rubygems.org"

gem "bootsnap"                                        # Load your Rails server quicker using bytecode caching and $PATH caching
gem "font-awesome-rails"                              # Awesome set of GPL friendly vector icons
gem "normalize-rails"                                 # Integrate normalize.css with the Rrails asset pipeline
gem "puma"                                            # Use the puma application server
gem "rails", "5.2.3"                                  # A web application development framework for Ruby
gem "sassc-rails"                                     # Use SCSS for stylesheets
gem "sqlite3"                                         # Use SQLite3 as the default database
gem "turbolinks"                                      # Make navigating your web application faster by preloading pages
gem "uglifier"                                        # a Ruby wrapper for the UglifyJS javascript compressor

group :development do
  gem "better_errors"                                 # Better Rails error pages
  gem "binding_of_caller"                             # Execution context info on better_errors pages
  gem "brakeman", require: false                      # Find common security vulnerabilities
  gem "rack-mini-profiler", require: false            # Profile page loading and display load time analysis
  gem "rufo"                                          # An opinionated Ruby formatter
  gem "solargraph"                                    # A Ruby language server for your editor/IDE
  gem "spring"                                        # Speeds up development by keeping your application running in the background
  gem "spring-watcher-listen"                         # Use the listen gem to find filesystem changes instead of polling the filesystem
  gem "traceroute"                                    # Find unused routes and unreachable action methods
  gem "web-console"                                   # In-page console by using <% console %> in views or controllers
end

group :test do
  gem "capybara"                                      # Capybara system testing DSL
  gem "chromedriver-helper"                           # Run system tests in Chrome
  gem "selenium-webdriver"                            # Run system tests with a Selenium backend
  gem "simplecov", require: false                     # Code test coverage reports
end

group :development, :test do
  gem "bullet"                                        # Find n+1 queries and unused eager loading
  gem "faker"                                         # Handy library for generating all kinds of fake data
  gem "guard"                                         # Run custom rules when files or directories are modified
  gem "guard-livereload", require: false              # Reload browser when view files are modified (requires LiveReload browser ext.)
  gem "guard-rspec", require: false                   # Contextually re-run tests when saving test files
  gem "pry"                                           # Supercharged IRB replacement
  gem "pry-byebug"                                    # Use pry as a debugger
  gem "pry-rails"                                     # Automatically replace IRB with pry
  gem "rspec-rails"                                   # A better Ruby testing framework
end
