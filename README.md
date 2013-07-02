CapybaraConsole
===============

This tiny gem provides you with a [Capybara](https://github.com/jnicklas/capybara) console for your Rails project.
Simply include it in your Gemfile:

```ruby
gem 'capybara-console'
```

then run

``` bash
rake capybara:console
```

and you're completely set to go REPLing with Capybara, like
``` bash
> visit 'http://github.com'
```
or
``` bash
> visit '/'
```

If you need something included in your console by default, create a `capybara:prepare_console` task:

``` ruby
namespace :capybara do

  task :prepare_console do

    def test_path opts 
      path = opts[:path] || '/'
      subdomain = opts[:subdomain] || 'test'
      port = Capybara.current_session.server.port
      url = "http://#{subdomain}.mytestdomain.home:#{port}#{path}"
    end

  end

end
```

Enjoy!

Licensed under MIT-LICENSE.
