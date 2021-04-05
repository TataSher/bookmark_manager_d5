require 'bookmarks.rb'
require 'database_helper'

describe Bookmarks do
  describe '.all' do
    it 'returns all bookmarks' do
      connect = PG.connect(dbname: 'bookmark_manager_test')

      bookmark = Bookmarks.create(url:'http://www.makersacademy.com', title:"Makers")
      persisted_data = persisted_data(id: bookmark.id)
        
      expect(bookmark).to be_a Bookmarks
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq 'Makers'
      expect(bookmark.url).to eq 'http://www.makersacademy.com'

    end
  end

  describe '.create' do
	  it 'creates a new bookmark' do
      bookmark = Bookmarks.create(url:'http://www.makersacademy.com', title:"Makers")
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmarks
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq 'Makers'
      expect(bookmark.url).to eq 'http://www.makersacademy.com'
	  end
  end

  describe '.delete' do
    it 'deletes a bookmark' do
    bookmark = Bookmarks.create(url:'http://www.makersacademy.com', title:"Makers")
    Bookmarks.delete(id: bookmark.id)
    expect(Bookmarks.all.length).to eq 0
    end
  end
end

