require 'pg'


def connect_to_test_database
	 PG.connect(dbname: 'bookmark_manager_test')
end

def clean_test_database(connection)
	 connection.exec("DROP TABLE IF EXISTS bookmarks;")
end

def create_bookmarks_table_in_test(connection)
	 connection.exec("CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60), title VARCHAR(60));")
end

# def populate_tables(connection)
#   connection.exec("INSERT INTO users (email, password, name, username) VALUES('test@email.com', 'testpass', 'test_user', 'test_username');")
# end

def setup_test_database
  connection = connect_to_test_database
  clean_test_database(connection)
  create_bookmarks_table_in_test(connection)
  # populate_tables(connection)
end