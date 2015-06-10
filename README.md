##Description##
Teacherbook is an app that allows teachers to keep track of data about parents of students in their classes.  Each Teacher will be able to sign in and view a list of their parents names and emails.

##Getting Started##
First, download the app via `github.com` and migrate the database using `rake db:migrate`  Start a server by using the `rails server` command, start `rails console` and create a teacher using `Teacher.create` including params of `name`,`email`.  Save the created object in any `variable` and then set your password using `variable.password =`.

##Actions##
Once on the website you must login in order to view any of the pages.  The actions available to users include `create` new parent, `edit` parent, `destroy` parent, `edit` teacher and display all parents.  
