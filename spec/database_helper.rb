require 'pg'

def persisted_data(id:)
  connect = PG.connect(dbname: 'bookmark_manager_test')
  result = connect.query("SELECT id FROM bookmarks;")
  result.first
end