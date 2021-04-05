require 'pg'

class Bookmarks

  attr_reader :id, :title, :url

# begin
#
# 	con = PG.connect :dbname => 'bookmark_manager', :user => 'maxstrivens'
# 	rs = con.exec "SELECT * FROM bookmarks"

	def self.all

      ['http://www.makersacademy.com',
      'http://www.destroyallsoftware.com',
      'http://www.google.com']
		# if ENV['ENVIRONMENT'] == 'test'
		# 	connect = PG.connect :dbname => 'bookmark_manager_test'
		# else
		# 	connect = PG.connect :dbname => 'bookmark_manager'
		# end


		# result = connect.exec("SELECT * FROM bookmarks")
		# result.map do |bookmark|
	  # Bookmarks.new( id: bookmark['id'], title: bookmark['title'], url: bookmark['url'])
		end
	end

	# def self.add(url:, title:)
	# 	if ENV['ENVIRONMENT'] == 'test'
	# 		connection = PG.connect(dbname: 'bookmark_manager_test')
	# 	else
	# 		connection = PG.connect :dbname => 'bookmark_manager'
	# 	end

	# 	connection.exec("INSERT INTO bookmarks (url, title) VALUES('#{url}', '#{title}') RETURNING id, url, title;")
	# end

	# def self.delete(deleted_title:)
	# 	if ENV['ENVIRONMENT'] == 'test'
	# 		connection = PG.connect(dbname: 'bookmark_manager_test')
	# 	else
	# 		connection = PG.connect :dbname => 'bookmark_manager'
	# 	end
  #       connection.exec("DELETE FROM bookmarks WHERE title = '#{deleted_title}'")
	# end

# 	def initialize(id:, title:, url:)
# 	  @id = id
#     @title = title
#     @url = url
#   end
# end
