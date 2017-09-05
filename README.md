# Homework 1 - Debugging Rails Application

## Due Date

TBD

## Goals

- The purpose of this homework assignment is to use unit tests to debug a Rails
  application.

## Readings and Resources

NA

## Project Setup

  ```
  $ sudo apt-get update
  $ sudo apt-get install sqlite3 libsqlite3-dev
  $ unzip homework-01.zip
  $ cd /path/to/rails/homework-01
  $ bundle install
  $ rails db:create
  $ rails db:migrate
  ```

  Note:  Do not type `$` in the above.  Just the command that follows.

- Test your basic understanding of debugging a Rails application through the
  following:

  - verify that the following works as expected

    - creating author

    - editing author

    - deleting author

    - listing author

    Note:  You can execute the units tests to verify that things are working
           correctly by running the unit tests as follows in the root directory
           of the project:

           ```
           $ rspec
           ```

           Note:  Do not type `$` in the above.  Just the command that follows.

           You are done when the above command generates the similar output:

           ```
           .............................

           Finished in 0.50812 seconds (files took 1.37 seconds to load)
           29 examples, 0 failures
           ```

    - running a specific test

    ```
    $ rspec ./spec/controllers/authors_controller_spec.rb:36
    $ rspec ./spec/controllers/authors_controller_spec.rb:52
    $ rspec ./spec/controllers/authors_controller_spec.rb:68
    $ rspec ./spec/controllers/authors_controller_spec.rb:74
    $ rspec ./spec/controllers/authors_controller_spec.rb:80
    $ rspec ./spec/controllers/authors_controller_spec.rb:87
    $ rspec ./spec/controllers/authors_controller_spec.rb:93
    $ rspec ./spec/controllers/authors_controller_spec.rb:106
    $ rspec ./spec/controllers/authors_controller_spec.rb:112
    $ rspec ./spec/controllers/authors_controller_spec.rb:118
    $ rspec ./spec/controllers/authors_controller_spec.rb:126
    $ rspec ./spec/controllers/authors_controller_spec.rb:132
    $ rspec ./spec/controllers/authors_controller_spec.rb:141
    $ rspec ./spec/controllers/authors_controller_spec.rb:148
    $ rspec ./spec/requests/authors_spec.rb:5
    $ rspec ./spec/views/authors/index.html.erb_spec.rb:19
    ```

## Deliverables

  - create a repo called `homework-01` and push your solution to Github.com

## Have Questions

Please make a reasonable effort to complete the homework prior to our next session.  If you have any questions regarding this homework, please do send me a message via Slack.
