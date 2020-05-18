class MoviesController < ApplicationController
    # before_action :authenticated
    def index     

        # byebug
		upcoming = Tmdb::Movie.upcoming({region: 'us'})
        # byebug
        render json: upcoming.results;

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
end
