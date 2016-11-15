class MoviesController < ApplicationController
def index
    @movies = Movie.all
  end

  def show
      @movie = Movie.find(params["id"])
    end

  def delete
      @movie = Movie.find(params["id"])
      @movie.destroy
  end

  def new_form
  end

  def create_movie
    @movie = Movie.new
    @movie.title = params["title"]
    @movie.year = params["year"]
    @movie.duration = params["duration"]
    @movie.description = params["description"]
    @movie.image_url = params["image_url"]
    @movie.director_id = params["director_id"]


    @movie.save
    render("show")
  end


  def edit_form
    @movie = Movie.find(params["id"])
  end

  def edit_movie
      @movie = Movie.find(params["id"])
      @movie.title = params[:title]
      @movie.year = params[:year]
      @movie.duration = params[:duration]
      @movie.description = params[:description]
      @movie.image_url = params[:image_url]
      @movie.director_id = params["director_id"]
      @movie.save
      render("show")
  end


end
