# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization
rails g resource User username email first_name last_name password_digest imageurl --no-test-framework

rails g resource movie username title overview poster_path tmdb_id:integer --no-test-framework

rails g resource journal title text user:belongs_to movie:belongs_to --no-test-framework

rails g resource review comment rating user:belongs_to movie:belongs_to --no-test-framework

rails g resource favorite user:belongs_to movie:belongs_to --no-test-framework

rails g resource trivia text user_id movie:belongs_to --no-test-framework


rails d resource User username email first_name last_name password_digest imageurl --no-test-framework

rails d resource journal title text user_id movie_id --no-test-framework

rails g controller api --no-test-framework

<!-- rails g scaffold User username email first_name last_name password_digest imageurl --no-test-framework -->

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
backend : /movie_pg_api/rails s
frontend : /movie_pg/npm start
* ...
