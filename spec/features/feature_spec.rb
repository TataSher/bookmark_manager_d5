require './app.rb'
require 'spec_helper'

feature 'Viewing bookmarks' do

    scenario 'visiting the index page' do
      visit('/')
      expect(page).to have_content 'Bookmark Manager'
    end
  scenario 'A user can see bookmarks' do
    visit('/bookmarks')

    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
    expect(page).to have_content 'http://www.google.com'
  end
# feature 'Adding a new bookmark' do
#   scenario 'A user can add a bookmark to Bookmark Manager' do
#     visit('./bookmarks/new')
#     fill_in('url', with  'http://bookmarktest.com')
#     click_button('Submit')

#     expect(page).to have_content 'http://bookmarktest.com'
#   end
end


