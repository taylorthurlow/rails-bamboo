# frozen_string_literal: true

source "https://rubygems.org"

gem "font-awesome-rails"                              # awesome set of GPL friendly vector icons
gem "normalize-rails"                                 # integrate normalize.css with rails asset pipeline
gem "puma"                                            # use the puma application server
gem "rails", "5.2.3"                                  # a web application development framework for ruby
gem "responders"                                      # easier controller responses
gem "sass-rails"                                      # use SCSS for stylesheets
gem "sqlite3"                                         # use SQLite3 as the default database
gem "turbolinks"                                      # make navigating your web application faster by preloading pages
gem "uglifier"                                        # a ruby wrapper for the UglifyJS javascript compressor

group :development do
  gem "better_errors"                                 # better, more useful rails error pages
  gem "binding_of_caller"                             # execution context info on better error pages
  gem "brakeman", require: false                      # find common security vulnerabilities
  gem "rack-mini-profiler", require: false            # profile page loading and display load time analysis
  gem "rufo"                                          # an opinionated Ruby formatter
  gem "solargraph"                                    # a Ruby language server for your editor/IDE
  gem "spring"                                        # speeds up development by keeping your application running in the background
  gem "spring-watcher-listen"                         # use the Listen gem to find filesystem changes instead of polling the filesystem
  gem "traceroute"                                    # find unused routes and unreachable action methods
  gem "web-console"                                   # in-page console by using <% console %> in views or controllers
end

group :test do
  gem "mocha"                                         # stubbing and mocking
  gem "rails-controller-testing"                      # allows 'assigns' in controller tests in rails 5
end

group :development, :test do
  gem "bootsnap"                                      # load your rails server quicker using bytecode caching and $PATH caching
  gem "bullet"                                        # find n+1 queries and unused eager loading
  gem "byebug"                                        # a console debugger
  gem "dotenv-rails"                                  # load environment variables from .env
  gem "faker"                                         # handy library for generating all kinds of fake data
  gem "guard"                                         # run custom rules when files or directories are modified
  gem "guard-livereload", require: false              # reload browser when view files are modified (requires LiveReload browser ext.)
  gem "guard-minitest"                                # contextually re-run tests when saving test files
end
