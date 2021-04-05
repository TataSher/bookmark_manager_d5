require './app.rb'
require 'spec_helper'

feature 'Viewing bookmarks' do

    scenario 'visiting the index page' do
      visit('/')
      expect(page).to have_content 'Bookmark Manager'
    end
  scenario 'A user can see bookmarks' do

    Bookmarks.create(title: 'Makers', url: 'http://www.makersacademy.com')
    Bookmarks.create(title: 'Destroy All Software', url: 'http://www.destroyallsoftware.com')
    Bookmarks.create(title: 'Google', url: 'http://www.google.com')
    
    visit('/bookmarks')

    expect(page).to have_link('Makers', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Destroy All Software', href: 'http://www.destroyallsoftware.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
  end
end

