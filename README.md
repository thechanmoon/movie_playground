movie_playground
### github
```shell
https://github.com/thechanmoon/movie_playground.git
```


### Frontend
* Install
```shell
npm install
```

* Run
```shell
npm start
```

### Backend 

* Prerequisite

An API key : (https://www.themoviedb.org/account).

Create a `.env` file in the project's root directory and specify your key as below
```
TMDB_API_KEY=XXXXXXXXXXXXXXXXXXXX
```

* Install
```shell
bundle install
rails db:create db:migrate db:seed
```

* Run
```shell
rails s
```

### Built With
- Ruby on Rails
- React and Redux

### Deployment
Project is deployed in Heroku http://moviepg.herokuapp.com/