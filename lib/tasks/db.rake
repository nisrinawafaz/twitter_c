namespace :db do
    desc 'Create database schemas before going for the first migration'
    task init: ['db:drop','db:create'] do
    ActiveRecord::Base.connection.execute("CREATE SCHEMA twitter_dev AUTHORIZATION nisrinawafaz")
    ActiveRecord::Base.connection.execute("CREATE SCHEMA twitter_test AUTHORIZATION nisrinawafaz")
    puts 'Database initialised'
    end
  end