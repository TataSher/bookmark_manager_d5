require './app.rb'
require 'spec_helper'

feature 'Update a bookmark' do
    scenario 'A user can update a bookmark' do
      bookmark = Bookmarks.create(url: 'http://www.makersacademy.com', title: 'Makers')
      visit('/bookmarks')
      expect(page).to have_link('Makers', href: 'http://www.makersacademy.com')

      first('.bookmark').click_button 'Edit'
      expect(current_path).to eq "/bookmarks/#{bookmark.id}/edit"

      fill_in('url', with: 'http://www.shakersacademy.com')
      fill_in('title', with: 'Shakers')
      click_button('Submit')

      expect(current_path).to eq '/bookmarks'
      expect(page).not_to have_link('Makers', href: 'http://www.makersacademy.com')
      expect(page).to have_link('Shakers', href: 'http://www.shakersacademy.com')
    end
end