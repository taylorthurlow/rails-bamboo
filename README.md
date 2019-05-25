<img align="right" src="https://user-images.githubusercontent.com/761640/32694981-648f38c4-c704-11e7-9e9c-64db6e2bdd74.png" alt="rails-bamboo panda">

# rails-bamboo <img align="right" src="https://img.shields.io/badge/rails-5.2.3-green.svg" /><img align="right" src="https://img.shields.io/badge/ruby-2.6.3-green.svg" /><img align="right" src="https://img.shields.io/travis/taylorthurlow/rails-bamboo/master.svg" />

`rails-bamboo` was created as a way to make it easier to start a new Rails project. In addition to including some gems that I find worth using in every project, I've made some changes to the default scaffolding templates and included a basic application layout with navigation bar.

## Gems

### [`font-awesome-rails`](https://github.com/bokmann/font-awesome-rails)

A crazy-good collection of more than 2,000 vector icons which are dead simple to use. Plus, they're all [GPL licensed](http://fontawesome.io/license/), so you don't have to worry about using them in a commercial product.

### [`normalize-rails`](https://github.com/markmcconachie/normalize-rails)

An alternative to CSS resets. Default styling can be a huge pain in the ass, and `normalize.css` does a great job of fixing it. `normalize-rails` is a way to integrate it with the Rails asset pipeline. This one is very much a set-it-and-forget-it gem.

### [`better_errors`](https://github.com/charliesome/better_errors)

Rails' default error/exception pages are... bad. There are no debugging tools by default. This gem solves that and makes errors, an otherwise unpleasant sight, nice to look at and to deal with. Every page includes a full stack trace, source code with syntax highlighting, local/instance variable inspection, a fully live shell, and links directly to files in your preferred code editor.

### [`brakeman`](https://github.com/presidentbeef/brakeman)

A static code analysis tool which is able to analyze Rails applications for common security vulnerabilities. There are a lot of useful things that this gem can warn you about, including SQL injection and misuse of string interpolation in file paths.

### [`rack-mini-profiler`](https://github.com/MiniProfiler/rack-mini-profiler)

This gem provides a small, toggleable button in the corner of your browser which displays page loading speed information. Clicking it reveals an in-depth breakdown of what components of the page render took the most time. Database queries making your page loads slow? This little guy will clue you in.

### [`rubocop`](https://github.com/bbatsov/rubocop)

Rubocop is another static code analysis tool used for enforcing guidelines from the [Ruby style guide](https://github.com/bbatsov/ruby-style-guide). Every style rule is configurable and toggleable, and as someone who has trouble remembering to follow a style guide, this gem combined with a lint plugin for your preferred editor or IDE is an absolute godsend.

### [`traceroute`](https://github.com/amatsuda/traceroute)

A cool little rake task that analyzes your routes and will tell you if you have any unused routes, or if any of your controller action methods are unreachable.

### [`web-console`](https://github.com/rails/web-console)

This gem allows you to place a `<% console %>` tag in your views, or use `console` in your controllers, to enable a small rails console at the bottom of the page you're on. It can be handy to play around in the view context when you aren't exactly sure what's going on with a page. If you opt out of using the aforementioned `better_errors`, you'll also get one of these consoles on every error page. The console isn't always super helpful, though - it's not always run in the scope that you expect it to. Nevertheless, it comes in handy.

### [`mocha`](https://github.com/freerange/mocha)

A Ruby library for mocking and stubbing in tests. Supports full and partial mocking, with built-in support for `MiniTest` and `Test::Unit`. `RSpec` includes a Mocha adapter, so you can use it there too. But `MiniTest` is better, so... use it.

### [`bootsnap`](https://github.com/Shopify/bootsnap)

Rails apps don't always start quickly, and `bootsnap` aims to fix that. By caching the contents of directories in your `$PATH` and caching your Ruby bytecode, the time it takes to spin up your app can decrease dramatically, often by 50-75%. I've excluded this gem from the `production` environment because the caching does use more memory - and in memory-dependent environments like Heroku, this can often be really undesired. If the app is running in an environment where some extra memory usage is OK, then it is definitely worth also using it in production. It's worth noting that this gem is set to be shipped with Rails `5.2`.

### [`bullet`](https://github.com/flyerhzm/bullet)

A tool which helps notify you when it thinks you might be able to reduce the number of database queries you're making. It'll let you know if you should add eager loading, or if you're using eager loading when you shouldn't.

### [`byebug`](https://github.com/deivid-rodriguez/byebug)

A simple but feature-rich Ruby debugger.

### [`dotenv-rails`](https://github.com/bkeepers/dotenv)

A tool which allows environment variables to be set using a text file in a development environment. Deployed applications often rely on environment variables for API keys and other things which shouldn't be placed in the source code or in version control. This gem allows you to configure your application to use environment variables, and during development, read them from a file in your project directory. Handy for keeping secrets.

### [`faker`](https://github.com/stympy/faker)

Faker is the best way to generate random (but sensible) seed data. With an ever-expanding list of cool modules to pick from, I can generate anything from names and personal information, to "the most interesting man in the world" quotes. Lorem ipsu-what? Forget Latin, I'll take the _Fresh Prince of Bel Air_ quote generator any day.

### [`guard`](https://github.com/guard/guard)

A tool which allows you to automate tasks when files or directories are modified. I use this in combination with [`guard-minitest`](https://github.com/guard/guard-minitest). When `guard` is running, it will automatically run the applicable tests when you save a source file. Additionally, [`guard-livereload`](https://github.com/guard/guard-livereload) can hook into a [browser extension](https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei?hl=en) and automatically reload the page when you edit your view files.
