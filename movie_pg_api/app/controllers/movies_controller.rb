class MoviesController < ApplicationController
    # before_action :authenticated
    def index     

		# byebug
		if params[:query] === 'now_playing'
			movies = Tmdb::Movie.now_playing({region: 'us'})
		elsif params[:query] === 'popular'
			movies = Tmdb::Movie.popular({region: 'us'})	
		elsif params[:query] === 'top_rated'
			movies = Tmdb::Movie.top_rated({region: 'us'})
		else #params[:query] === 'upcoming'
			movies = Tmdb::Movie.upcoming({region: 'us'})
		end
		# byebug
		puts params
		# puts movies
        # byebug
        render json: movies.results;


		# Tmdb::Movie.upcoming
		# ```
		# Get the list of movies playing in theatres. This list refreshes every day. The maximum number of items this list will include is 100.
		# ```ruby
		# Tmdb::Movie.now_playing
		# ```
		# Get the list of popular movies on The Movie Database. This list refreshes every day.
		# ```ruby
		# Tmdb::Movie.popular
		# ```
		# Get the list of top rated movies. By default, this list will only include movies that have 10 or more votes. This list refreshes every day.
		# ```ruby
		# Tmdb::Movie.top_rated

		# byebug
		
		# upcoming.results.each do |movie|
		# 	byebug
		# 	Movie.create(title: movie.to_json.table.title)
		# end

        # byebug
		# upcoming = Tmdb::Movie.upcoming({region: 'us'})
		# render json: upcoming.results;
        # byebug
        # movies = Movie.all
		# render json: movies;
		
		# //{ movie: {movies}} }
	end

		# Return datas of the movies
	# (name, poster image, genre, overview and release date)
	# GET /movies/:ID
	def show
		# @movie = Tmupdb::Movie.detail(params[:id])
		# @images = Tmdb::Movie.posters(params[:id])
		movie = Tmdb::Movie.detail(params[:id])
		render json: movie
		# movie = Movie.find(params[:id])
		# byebug
		# render json: movie
		# render json:{movie: movie, journals: movie.journals}
		# render json: {id: movie.id, title: movie.title, poster_path: movie.poster_path, overview: movie.overview, tmdb_id: movie.tmdb_id, journals: movie.journals}
	end

	def create

		moive = Movie.find_or_create_by(create_moive_params)
		if moive.valid?
		  render json: moive
		else
		  render json: { errors: moive.errors.full_messages }, status: 403
		end

		byebug
	end

	# For use with infinite scroll
	# Idea: https://medium.com/wolox-driving-innovation/infinite-scrolling-ruby-on-rails-3fcd3bac0f75
	# GET /movies/pagination/?page=
	def pagination
		page = params[:page].nil? ? 1 : params[:page]
		region = params[:id].nil? ? 'us' : params[:region]
		upcoming = Tmdb::Movie.upcoming({page: page, region: region}).results
		render partial: 'movies/movie', collection: upcoming, locals: {movie: upcoming}
	end

	# GET /search/:query
	def search
		# byebug
		search = Tmdb::Search.movie(params[:query])
		render json: search.results
	end

	private
  
	def create_moive_params
		params.permit(:title, :poster_path, :overview, :tmdb_id)
	end
end
