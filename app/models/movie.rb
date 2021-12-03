class Movie < ActiveRecord::Base
  def self.create_with_title(title)
    self.create(title: title)
  end

  def self.first_movie
    self.first
  end

  def self.last_movie
    self.last
  end

  #   .movie_count
  #   returns the number of items in the movies table (FAILED - 3)
  def self.movie_count
    self.count
  end

  # .find_movie_with_id
  #   returns the movie with the corresponding id (FAILED - 4)
  def self.find_movie_with_id(id)
    Movie.find(id)
  end

  # .find_movie_with_attributes
  #   returns the movie with the corresponding attributes (FAILED - 5)
  def self.find_movie_with_attributes(attr)
    Movie.find_by(attr)
  end

  # .find_movies_after_2002
  #   returns a list of movies released after 2002 (FAILED - 6)
  def self.find_movies_after_2002
    Movie.where('release_date > 2002')
  end

  #   Update
  #   #update_with_attributes
  #     updates one movie (FAILED - 3)

  def update_with_attributes(attr)
    self.update(attr)
  end

  #   .update_all_titles
  #     updates the title of all the movies (FAILED - 4)
  def self.update_all_titles(title)
    self.update(title: title)
  end

  def self.delete_by_id(id)
    self.destroy(id)
  end

  def self.delete_all_movies
    self.destroy_all
  end
end
