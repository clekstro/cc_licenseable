class ArtworksController < ApplicationController
  def new
    @artwork = Artwork.new
  end 

  def create
    @artwork = Artwork.new(params[:artwork])
    redirect_to artworks_url and return if @artwork.save
    render :new
  end

  def index
    @artworks = Artwork.all
  end
end
