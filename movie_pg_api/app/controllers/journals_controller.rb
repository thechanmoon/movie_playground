class JournalsController < ApplicationController
    def index
        # byebug
        journals = Journal.all
        render json: journals;
    end

    def show
        journals = Journal.find_by(user_id: current_user.id)
		render json: journals;
    end

    def create
		# byebug
		movie = Movie.find_or_create_by(tmdb_id: params["currentMovie"]["id"])
        journal = Journal.create(text: params[:text], watch_date: params[:watch_date], movie_id: movie.id, user_id: current_user.id)
        # byebug
        if movie.valid? && journal.valid?
            render json: { movie: movie, journal: journal }
        else
            render json: { errors: journal.errors.full_messages }, status: 403
        end
    end
end
