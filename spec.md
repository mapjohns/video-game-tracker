# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app - Sinatra base utilized for controllers
- [x] Use ActiveRecord for storing information in a database - ActiveRecord, and associations used for db setup and manipulation of date
- [x] Include more than one model class (e.g. User, Post, Category) - Classes for a user and games were used
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) - A User has_many games
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) - A game belongs_to User
- [x] Include user accounts with unique login attribute (username or email) - Username field present with a validation for uniqueness
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying - Games can be CRUD
- [x] Ensure that users can't modify content created by other users - If a user attempts to access a game owned by another, redirect's them away.
- [x] Include user input validations - Fields cannot be null for UN/PW, Ratings fields must be a number. UN can only be Letters or Numbers
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code - README has been detailed

Confirm
- [x] You have a large number of small Git commits - Many commits done over the course of this project
- [x] Your commit messages are meaningful - Individual commit messages done for each change
- [x] You made the changes in a commit that relate to the commit message - Done
- [x] You don't include changes in a commit that aren't related to the commit message - Done
