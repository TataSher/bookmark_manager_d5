# Bookmark_manager

A bookmark manager is a website to maintain a collection of bookmarks (URLs).
- You can use it to save a webpage you found useful.
- You can add tags to the webpages you saved to find them later.
- You can browse bookmarks other users have added.
- You can comment on the bookmarks.

## User Stories

As a user

So that I can choose a website

I would like to see a list of bookmarks


| class     | instances | methods  |
|-----------|-----------|----------|
| user      | @username |          |
| bookmarks | @website  | list     |
|           |           |          |

As a user

So that I can add a new website

I would like to add a bookmark


| class     | responsibilities | colabs   |
|-----------|------------------|----------|
|           |                  |          |
| bookmarks | add-bookmark     |          |
|           |                  |          |

- post request to app
- app adds new bookmark to database
- database return updated table
- app reuqests feedback from views
- views send updated list/message

As a user

So that i can remove bookmarks from my bookmarks manager

I would like to delete a bookmark


| class     | responsibilities | colabs   |
|-----------|------------------|----------|
|           |                  |          |
| bookmarks | delete-bookmark  |          |
|           |                  |          |

- post request to app
- app deletes bookmark from database
- database return updated table
- app requests feedback from views
- views send updated list/message

## Domain Model
![Untitled](https://user-images.githubusercontent.com/77491121/119644899-584d8c80-be15-11eb-829e-1cf536b9da79.png)

## Setting up test database

Connect to psql

Create the database using the psql command

> CREATE DATABASE bookmark_manager_test;

Connect to the database using the pqsl command

> \c bookmark_manager_test;

Run the query we have saved in the file 01_create_bookmarks_table.sql

**Using TablePlus as GUI to manage databases**

## Current project status

- 2 RSPEC tests failing due to the bookmarks only diplaying the url
- could change the result.map in bookmarks.all to display the title but would need to change tests
- Also need to look at initializing :id and :url
- Also need to href the url to make it a clickable link
- Go back overstep 10 walkthrouh and implement missing features
- Go through step 11 walkthrough and implement missing features
