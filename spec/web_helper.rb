def clear_and_pop_db
  connection = PG.connect(dbname: 'bookmark_manager_test')

  Bookmarks.add(url:'http://www.makersacademy.com', title:"Makers")
  Bookmarks.add(url:'http://www.destroyallsoftware.com', title:"Destroy All Software")
  Bookmarks.add(url:'http://www.google.com', title:"Google")


 visit '/bookmarks'

 expect(page).to have_link('Makers', href: 'http://www.makersacademy.com')
 expect(page).to have_link('Destroy All Software',  href: 'http://www.destroyallsoftware.com')
 expect(page).to have_link('Google', href: 'http://www.google.com')
end

# Used this to kee feature test DRY. Maybe bteer way to do
# it keeping expect in features
