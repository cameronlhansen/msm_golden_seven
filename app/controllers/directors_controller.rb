class DirectorsController < ApplicationController

  def index
      @directors = Director.all
    end

  def show
    @director = Director.find(params["id"])
  end

  def delete
    @director = Director.find(params["id"])
    @director.destroy
  end

  def new_form
  end

  def create_director
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    render("show")
  end


    def edit_form
      @director = Director.find(params["id"])
    end

    def edit_director
        @director = Director.find(params["id"])
        @director.dob = params[:dob]
        @director.name = params[:name]
        @director.bio = params[:bio]
        @director.image_url = params[:image_url]
        @director.save
        render("show")
    end



  end
