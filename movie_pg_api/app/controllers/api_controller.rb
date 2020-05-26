class ApiController < ApplicationController
    def index     

        # byebug
        if params[:query] === 'now_playing'
            # movies = Tmdb::Movie.now_playing({region: 'us'})
            movies = movie_service.now_playing
        elsif params[:query] === 'upcoming'
            # movies = Tmdb::Movie.popular({region: 'us'})	
            movies = movie_service.upcoming
        elsif params[:query] === 'top_rated'
            # movies = Tmdb::Movie.top_rated({region: 'us'})
            movies = movie_service.top_rated
        else #params[:query] === 'upcoming'
            # movies = Tmdb::Movie.upcoming({region: 'us'})
            movies = movie_service.popular
        end
        render json: movies.results;
    end

        # Return datas of the movies
    # (name, poster image, genre, overview and release date)
    # GET /movies/:ID
    def show
        # @movie = Tmupdb::Movie.detail(params[:id])
        # @images = Tmdb::Movie.posters(params[:id])

        # //movie = Tmdb::Movie.videos(params[:id])

        # p movie
        
        # movie = Tmdb::Movie.detail(params[:id])

        # movie = movie_service.movie_detail(params[:id])
        # render json: movie

        movie = MoviePresenter.new(movie_detail).data
        
        # byebug
        
        movie[:image_path] = "#{image_path}/w300_and_h450_bestv2#{movie.poster_path}"


        render json: movie

        # movie = Movie.find(params[:id])
        # byebug
        # render json: movie
        # render json:{movie: movie, journals: movie.journals}
        # render json: {id: movie.id, title: movie.title, poster_path: movie.poster_path, overview: movie.overview, tmdb_id: movie.tmdb_id, journals: movie.journals}
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
        p search
        render json: search.results
    end

    private
    
    def movie_detail
        # byebug
        movie_service.movie_detail(params['id'])
    end

    def image_path
        @image_path ||= movie_service.configuration.base_url
        # byebug
    end

    def movie_service
        @movie_service ||= MovieDbService.new
    end

    def create_movie_params
        params.permit(:title, :poster_path, :overview, :tmdb_id)
    end
end
