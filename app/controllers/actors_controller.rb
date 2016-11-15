class ActorsController < ApplicationController
def index
    @actors = Actor.all
  end

  def show
      @actor = Actor.find(params["id"])
    end

  def delete
      @actor = Actor.find(params["id"])
      @actor.destroy
  end

  def new_form
  end

  def create_actor
    @actor = Actor.new
    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    @actor.save

    render("show")
  end

  def edit_form
    @actor = Actor.find(params["id"])
  end

  def edit_actor
      @actor = Actor.find(params["id"])
      @actor.dob = params[:dob]
      @actor.name = params[:name]
      @actor.bio = params[:bio]
      @actor.image_url = params[:image_url]
      @actor.save
      render("show")
  end



end
