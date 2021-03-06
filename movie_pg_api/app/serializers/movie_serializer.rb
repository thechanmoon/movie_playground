class MovieSerializer < ActiveModel::Serializer
  attributes :id, :username, :title, :overview, :poster_path, :tmdb_id, :journals
  has_many :users
  # has_many :journals

  def journals 
    array = []
    journals = Journal.where(movie_id: self.object.id)
    
    journals.each do |journal|
      if current_user.id ==  journal.user_id
        array.push(journal)
      end
    end
    
    return array
  end

end

# class MovieSerializer < ActiveModel::Serializer
#     attributes :id, :username, :title, :overview, :poster_path, :tmdb_id, :popularity, :vote_count, :video, :adult, :backdrop_path, :original_language, :original_title, :genre_ids, :vote_average, :release_date
# end

#<Tmdb::Movie popularity=13.564, vote_count=0, video=false, poster_path="/nPx3juctkdZvgrJ4DO35dUnVsyF.jpg", id=595148, adult=false, backdrop_path="/t39n8yGBRW94sGm662V3ylpimQI.jpg", original_language="en", original_title="Irresistible", genre_ids=[35, 18], title="Irresistible", vote_average=0, overview="A Democratic political consultant helps a retired Marine colonel run for mayor in a small, conservative Wisconsin town.", release_date="2020-05-29">