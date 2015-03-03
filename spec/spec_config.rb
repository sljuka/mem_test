require "rubygems"
require "sequel"
require "database_cleaner"

RSpec.configure do |config|

  config.before(:suite) do

    # using the sqlite memory database
    db = Sequel.sqlite

    # migrate and require all data models
    Sequel.extension :migration, :core_extensions
    Sequel::Migrator.run(db, File.expand_path("#{File.expand_path(File.dirname(__FILE__))}/../migrations"), :use_transactions=>false)

    Dir["#{File.dirname(__FILE__)}/../data_model/*.rb"].each { |path| require_relative path }

    # set database clean type
    DatabaseCleaner.strategy = :deletion
    DatabaseCleaner.clean_with(:deletion)

  end

  config.before(:each) do
    DatabaseCleaner.clean
  end

end
