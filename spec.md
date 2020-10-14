# Specifications for the Sinatra Assessment

Specs:

- [x] Use Sinatra to build the app
      The 'sinatra' gem is installed.

- [x] Use ActiveRecord for storing information in a database
      ActiveRecord::Migration
      ActiveRecord::Base

- [x] Include more than one model class (e.g. User, Post, Category)
      The app has a User & RawMaterial model.

- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
      A user has a has_many relationship with RawMaterial.

- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
      RawMaterial has a belongs_to relationship with User.

- [x] Include user accounts with unique login attribute (username or email)
      This is done by the following lines:
      if User.find_by(:username => params[:username].downcase) != nil
      flash[:message] = "The username has been taken. Please try again."

- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
      A user can create, read, update, and destroy a raw material.

- [x] Ensure that users can't modify content created by other users
      The creator to the content was saved by the following lines:
      @raw_material.user == current_user
      @raw_material.save

      Pseudo-code:
      if @raw_material.user == current_user
      then the creator of the content will be able to edit or delete the selected content.

- [x] Include user input validations
      An error flash message pops up if any of the following text fields are empty:
      params[:username], params[:password],
      params[:chemical], params[:company], params[:lot_number], params[:amount].

- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
      The gem 'sinatra-flash' was added to the Gemfile.

- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message

Notes After Assessment
- Try to incorporate the build method.
- Only "child table" gets the foreign key. The way it's set up now is that the parent table also has the foreign key. This can be eliminated by using the build method(?).
- Read up on the '||=' (or-equals) operator.