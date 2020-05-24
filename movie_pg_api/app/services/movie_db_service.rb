class MovieDbService
  attr_reader :configuration

  def initialize
    # byebug
    @configuration = Tmdb::Configuration.new
    @tmdb = Tmdb::Movie
  end

  def popular
    # byebug
    @tmdb.popular({region: 'us'})
  end

  def upcoming
    # byebug
    @tmdb.upcoming({region: 'us'})
  end
    
  def now_playing
    # byebug
    @tmdb.now_playing({region: 'us'})
  end
  
  def top_rated
    # byebug
    @tmdb.top_rated({region: 'us'})
  end

  def movie_detail(id)
    return unless id
    casts_for(@tmdb.detail(id))
    # byebug
    # @movie = @tmdb.detail(id)
    # cast_and_ratings
  end

  def video(id)
    @tmdb.videos(id)
  end

  def find(keyword)
    @tmdb.find(keyword) if keyword
  end

  private

  def casts_for(movie)
    
    newMovie = movie.to_h.merge(
      ('videos') => @tmdb.videos(movie['id']).map { |video| video['key'] }
    )

    #  byebug
    newMovie.to_h.merge(
      ('casts') => @tmdb.cast(movie['id']).map { |cast| cast['name'] }
    )

    # byebug

  end

  # def cast_and_ratings
  #   # byebug
  #   @imdb_id = @movie['imdb_id'][2..-1] # need to remove prefix('tt') in imdb_id
  #   byebug
  #   @movie.merge(
  #     'casts' => imdb.cast_members,
  #     'rating' => imdb.rating
  #   )
  # end

  def imdb
    @imdb ||= Imdb::Movie.new(@imdb_id)
  end
end
