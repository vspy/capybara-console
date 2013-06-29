namespace :capybara do

  desc "starts capybara console"
  task :console => [:environment] do

    require 'capybara'
    Capybara.default_driver = :selenium
    require 'capybara/rails'
    require 'capybara/dsl'
    include Capybara::DSL

    require 'irb'
    ARGV.clear

    prepare_task = 'capybara:prepare_console'
    if Rake::Task.task_defined?(prepare_task)
      Rake::Task[prepare_task].invoke
    end

    IRB.start
  end

end
