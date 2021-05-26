require 'pg'
require './lib/database_connection.rb'
require 'spec_helper'

def persisted_data(id:)
  result = DatabaseConnection.query("SELECT * FROM bookmarks;")
  result.first['id']
end