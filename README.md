<img align="right" src="https://user-images.githubusercontent.com/761640/32694981-648f38c4-c704-11e7-9e9c-64db6e2bdd74.png" alt="rails-bamboo panda">

# rails-bamboo
`rails-bamboo` was created as a way to make it easier to start a new Rails project. In addition to including some gems that I find worth using in every project, I've made some changes to the default scaffolding templates and included a basic application layout with navigation bar.

## gems

### [`font-awesome-rails`](https://github.com/bokmann/font-awesome-rails)
A crazy-good collection of more than 2,000 vector icons which are dead simple to use. Plus, they're all [GPL licensed](http://fontawesome.io/license/), so you don't have to worry about using them in a commercial product.

### [`normalize-rails`](https://github.com/markmcconachie/normalize-rails)
An alternative to CSS resets. Default styling can be a huge pain in the ass, and `normalize.css` does a great job of fixing it. `normalize-rails` is a way to integrate it with the Rails asset pipeline. This one is very much a set-it-and-forget-it gem.

### [`responders`](https://github.com/plataformatec/responders)
A really easy way to DRY up your controller actions. Rails is generally pretty good at generating DRY code when scaffolding, but the giant `respond_to` blocks are an eyesore. This gem changes scaffolding to use a much simpler syntax without sacrificing any functionality. I've written [a blog post](http://taylorjthurlow.com/posts/rails-dry-controllers-with-responders-gem) about this subject, so if you want to know more, check it out.

### [`better_errors`](https://github.com/charliesome/better_errors)
Rails' default error/exception pages are... bad. There are no debugging tools by default and no source code is printed. This gem solves that and makes errors, an otherwise unpleasant sight, nice to look at and to deal with. Every page includes a full stack trace, source code with syntax highlighting, local/instance variable inspection, a fully live shell, and links directly to files in your preferred code editor.

### [`brakeman`](https://github.com/presidentbeef/brakeman)
A static code analysis tool which is able to analyze Rails applications for common security vulnerabilities. There are a lot of useful things that this gem can warn you about, including SQL injection and misuse of string interpolation in file paths.

### [`rack-mini-profiler`](https://github.com/MiniProfiler/rack-mini-profiler)
This gem provides a small, toggleable button in the corner of your browser which displays page loading speed information. Clicking it reveals an in-depth breakdown of what components of the page render took the most time. Database queries making your page loads slow? This little guy will clue you in.

### [`rubocop`](https://github.com/bbatsov/rubocop)
Rubocop is another static code analysis tool used for enforcing guidelines from the [ruby style guide](https://github.com/bbatsov/ruby-style-guide). Every style rule is configurable and toggleable, and as someone who has trouble remembering to follow a style guide, this gem combined with a lint plugin for Sublime Text is an absolute godsend. Never in my life have I wanted to spend so much time arguing with people about single-quotes versus double-quotes, though. I guess that's the tradeoff.

### [`traceroute`](https://github.com/amatsuda/traceroute)
A cool little rake task that analyzes your routes and will tell you if you have any unused routes, or if any of your controller action methods are unreachable.

### [`web-console`](https://github.com/rails/web-console)
This gem allows you to place a `<% console %>` tag in your views, or use `console` in your controllers, to enable a small rails console at the bottom of the page you're on. It can be handy to play around in the view context when you aren't exactly sure what's going on with a page. If you opt out of using the aforementioned `better_errors`, you'll also get one of these consoles on every error page. The console isn't always super helpful, though - it's not always run in the scope that you expect it to. Nevertheless, it comes in handy.

### [`mocha`](https://github.com/freerange/mocha)
A Ruby library for mocking and stubbing in tests. Supports full and partial mocking, with built-in support for `MiniTest` and `Test::Unit`. `RSpec` includes a Mocha adapter, so you can use it there too. But `MiniTest` is better, so... use it.

### [`bullet`](https://github.com/flyerhzm/bullet)
A tool which helps notify you when it thinks you might be able to reduce the number of database queries you're making. It'll let you know if you should add eager loading, or if you're using eager loading when you shouldn't.

### [`byebug`](https://github.com/deivid-rodriguez/byebug)
A simple but feature-rich ruby debugger.

### [`dotenv-rails`](https://github.com/bkeepers/dotenv)
A tool which allows environment variables to be set using a text file in a development environment. Deployed applications often rely on environment variables for API keys and other things which shouldn't be placed in the source code or in version control. This gem allows you to configure your application to use environment variables, and during development, read them from a file in your project directory. Handy for keeping secrets.

### [`faker`](https://github.com/stympy/faker)
Faker is the best way to generate random (but sensible) seed data. With an ever-expanding list of cool modules to pick from, I can generate anything from names and personal information, to "the most interesting man in the world" quotes. Lorem ipsu-what? Forget Latin, I'll take the *Fresh Prince of Bel Air* quote generator any day.

### [`guard`](https://github.com/guard/guard)
A tool which allows you to automate tasks when files or directories are modified. I use this in combination with [`guard-minitest`](https://github.com/guard/guard-minitest). When `guard` is running, it will automatically run the applicable tests when you save a source file. Additionally, [`guard-livereload`](https://github.com/guard/guard-livereload) can hook into a [browser extension](https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei?hl=en) and automatically reload the page when you edit your view files.

## layout
<img align="right" src="https://user-images.githubusercontent.com/761640/32695284-01305a08-c70c-11e7-9ff4-664317fab0d8.png" alt="rails-bamboo panda", style="width: 50%;">
Here's an example page, an index for a `User` model. This view is using the table partial generated by the scaffold template, which I also use for the `show` action. I find it a lot more useful than the default scaffolding view layouts. By default, this table will show all non-password attributes of the model.

Additionally, I've used the `font-awesome-rails` gem to turn the show/edit/delete action links into icons. They look much better this way.

Present normally, but omitted from the picture, is a small bar at the top of the page which shows itself in Rails' `development` environment. I use it as a way to visually distinguish the local, development application from a live or staging version that I might have open in another tab. Ask me how many times I chased "bugs" in the wrong tab. Ask me.

## todo, future plans
I don't want this project to get too bloated or specific, but I'm still looking to add or change a few things, in no particular order:
* Play around with [`guard-brakeman`](https://github.com/guard/guard-brakeman) and see if it might be worth adding to the list
* Figure out how to get the `MiniTest` generator templates to use single quotes instead of double quotes in the test names so `rubocop` stops complaining about them
