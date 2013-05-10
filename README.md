= CapybaraConsole

This tiny gem provides you with a capybara console for your Rails project.
Simply include it in your Gemfile:

    gem 'capybara-console'

, then simly run

    rake capybara:console

and you're completely set to go REPLing with capybara, like

    > visit 'http://github.com'

or

    > visit '/'

to get to the root of your project.

If you need something included in your console by default, create an `capybara:prepare_console` task:

    namespace :capybara do

      task :prepare_console do

        def test_path opts 
          path = opts[:path] || "/"
          subdomain = opts[:subdomain] || 'test'
          port = Capybara.current_session.server.port
          url = "http://#{subdomain}.mytestdomain.home:#{port}#{path}"
        end

      end

    end

Enjoy

Licensed under MIT-LICENSE.
