Application:  Jeanette's Professional Profile - Part 3
Author: Jeanette Fairless
Description:  Adds authentication and authorization features to the
week one version.  Use SimpleCov and FactoryGirl for integration
testing.

Tries to add Ajax to the week 2 version.  Unfortunately, Ajax and I are not
friends.  All the code is there for Ajax, but its just not working.  No errors,
the app runs as it should, just without Ajax.

It seems that I cannot deploy to Heroku because I need an upgrade to my
client version of git.  BUT, the os-x on my laptop needs to be upgraded
before I can install it.  Since the laptop belongs to my son, I will need to
check with him before I upgrade anything.

OK, enough sob story :(

Application Setup:

Start Postgres

In project directory run:
- rake db:create
- rake db:migrate
- rake db:test:prepare
- start rails server
- go to localhost:3000
- in the app create 2 accounts

Since I cannot deploy to Heroku, the following sql commands need to be run
in psql:

 - \c jeanette_development
 - \dt
 - UPDATE users SET admin = true WHERE id = 1;
 - UPDATE users SET owner = true WHERE id = 2;

 This will set up the user accounts to test the authentication/authorization.

 Testing:  Some of my tests are failing!
