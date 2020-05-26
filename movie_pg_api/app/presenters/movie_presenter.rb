class MoviePresenter
  def initialize(movie)
    @movie = movie
    # byebug
  end

  def data
    OpenStruct.new(
      title: @movie[:original_title],
      poster_path: @movie[:poster_path],
      genres: @movie[:genres].map { |genre| genre['name'] }.join(' / '),
      overview: @movie[:overview],
      rating: @movie[:rating],
      casts: @movie['casts'],
      tagline: @movie[:tagline],
      runtime: @movie[:runtime],
      release_date: @movie[:release_date],
      revenue: @movie[:revenue],
      vote_average: @movie[:vote_average],
      videos: @movie['videos'],
      id: @movie[:id]
    )
  end
end