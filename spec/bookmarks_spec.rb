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

  describe '.update' do
    it 'updates a bookmark with given data' do
      bookmark = Bookmarks.create(url:'http://www.makersacademy.com', title:"Makers")
      updated_bookmark = Bookmarks.update(id: bookmark.id, url:'http://www.shakersacademy.com', title:"Shakers")
    
      expect(updated_bookmark).to be_a Bookmarks
      expect(updated_bookmark.id).to eq bookmark.id
      expect(updated_bookmark.title).to eq 'Shakers'
      expect(updated_bookmark.url).to eq 'http://www.shakersacademy.com'
    end
  end

  describe '.find' do
    it 'finds the requested bookmark' do
      bookmark = Bookmarks.create(url:'http://www.makersacademy.com', title:"Makers")
      result = Bookmarks.find(id: bookmark.id)
    
      expect(result).to be_a Bookmarks
      expect(result.id).to eq bookmark.id
      expect(result.title).to eq 'Makers'
      expect(result.url).to eq 'http://www.makersacademy.com'
    end
  end
end

