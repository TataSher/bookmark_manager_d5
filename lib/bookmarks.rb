require 'pg'

class Bookmarks

  attr_reader :id, :title, :url

  def initialize(id:, title:, url:)
    @id = id
    @title = title
    @url = url
  end

	def self.all

	  if ENV['ENVIRONMENT'] == 'test'
	    connect = PG.connect(dbname: 'bookmark_manager_test')
	  else
		  connect = PG.connect(dbname: 'bookmark_manager')
		end
		result = connect.exec("SELECT * FROM bookmarks")
		  result.map do |bookmark|
        Bookmarks.new(id: bookmark['id'], title: bookmark['title'], url: bookmark['url'])
      end
	end

	def self.create(url:, title:)
	 	if ENV['ENVIRONMENT'] == 'test'
	 		connect = PG.connect(dbname: 'bookmark_manager_test')
	 	else
	 		connect = PG.connect(:dbname => 'bookmark_manager')
	 	end

	 	result = connect.exec("INSERT INTO bookmarks (url, title) VALUES('#{url}', '#{title}') RETURNING id, title, url;")
    Bookmarks.new(id: result[0]['id'], title: result[0]['title'], url: result[0]['url'])
	end

	 def self.delete(id:)
	 	if ENV['ENVIRONMENT'] == 'test'
	 		connection = PG.connect(dbname: 'bookmark_manager_test')
	 	else
	 		connection = PG.connect :dbname => 'bookmark_manager'
	 	end
      connection.exec("DELETE FROM bookmarks WHERE id = #{id}")
	 end
end
