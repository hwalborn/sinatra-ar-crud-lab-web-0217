ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)
  # sql = <<-SQL
  #   CREATE TABLE IF NOT EXISTS posts(
  #       id INTEGER PRIMARY KEY,
  #       name TEXT,
  #       content TEXT
  #   )
  # SQL
  #
  # ActiveRecord::Base.connection.execute(sql)


require_all 'app'
