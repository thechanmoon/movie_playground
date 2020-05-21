class ReviewsController < ApplicationController
    # before_action :authenticated
    def index
        reviews = Review.all
		render json: reviews;
    end

    def show
        reviews = Review.find_by(user_id: current_user.id)
		render json: reviews;
    end

    def create
		byebug
		movie = Movie.find_or_create_by(create_review_params)
		# if movie.valid?
		#   render json: movie
		# else
		#   render json: { errors: movie.errors.full_messages }, status: 403
        # end
        
        # byebug
        #byebug
        review = Review.create(comment: params[:comment], rating: params[:rating], movie_id: movie.id, user_id: current_user.id)
        # byebug
        if movie.valid? && review.valid?
            render json: { movie: movie, review: review }
        else
            render json: { errors: review.errors.full_messages }, status: 403
        end
    end
    
    def create_review_params
		params.permit(:title, :poster_path, :overview, :tmdb_id, :review)
    end
    
    def review_params
        params.permit(:comment, :rating, :movie_id, :user_id, :id)
    end
end
