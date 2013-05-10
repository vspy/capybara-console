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

    prepare = Rake::Task['capybara:prepare_console']
    prepare.invoke if prepare

    IRB.start
  end

end
