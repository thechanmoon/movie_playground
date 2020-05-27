class ApisController < ApplicationController
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
        # byebug
        render json: movies.results;
        # render json: movies, serializer: ApiSerializer
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
        # p movie

        # reviews = movie_service.reviews(params[:id])
        # p reviews

        # byebug
        # render json: movie

        movie = MoviePresenter.new(movie_detail).data
        
        # byebug
        

        movie[:image_path] = "#{image_path}/w300_and_h450_bestv2#{movie.poster_path}"

        # movie_having_review = Movie.find_by(tmdb_id: movie.id);
		# if movie.valid?
		#   render json: movie
		# else
		#   render json: { errors: movie.errors.full_messages }, status: 403
        # end
        
        # byebug
        #byebug

        # if movie_having_review && movie_having_review.valid?
        #     reviews = Review.where(movie_id: movie_having_review.id)
 
 
        #     # byebug

        #     extra = reviews.map { |review| 
                
        #         # review.username = review.user.username 
        #         # review[:username] = review.user.username;
        #         { username: review.user.username, created_at: review.created_at.strftime("%B %Y")}
        #     }

        #     # render json: ApiSerializer.new(movie)
        #     # render json: { movie: movie, reviews: reviews, extra: extra } 
        #     reviews = movie_service.reviews(params[:id])
        #     render json: { movie: movie, reviews: reviews} 
        #     # render json: { movie: movie, reviews: serializer: ReviewSerializer } 
        # else
        #     render json: { movie: movie }   
        # end

        # byebug
        exist_movie = Movie.find_by(tmdb_id: movie.id);
        if exist_movie
            journals = Journal.where(movie_id: exist_movie.id)
            reviews = movie_service.reviews(params[:id])
            render json: { movie: movie, reviews: reviews, journals:journals} 
        else
            reviews = movie_service.reviews(params[:id])
            render json: { movie: movie, reviews: reviews} 
        end


        # render json: movie

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
