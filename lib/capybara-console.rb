module CapybaraConsole
  class Railtie < Rails::Railtie
    railtie_name :capybara_console

    rake_tasks do
      load "tasks/capybara-console_tasks.rake"
    end
  end
end
