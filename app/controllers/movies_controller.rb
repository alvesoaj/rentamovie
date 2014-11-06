class MoviesController < ApplicationController
  respond_to :html, :json, :xml

  before_filter :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.all
    respond_with(@movies)
  end

  def show
    respond_with(@movie)
  end

  def new
    @movie = Movie.new
    respond_with(@movie)
  end

  def edit
  end

  def create
    @movie = Movie.new(params[:movie])
    @movie.save
    respond_with(@movie)
  end

  def update
    @movie.update_attributes(params[:movie])
    respond_with(@movie)
  end

  def destroy
    @movie.destroy
    respond_with(@movie)
  end

  private
    def set_movie
      @movie = Movie.find(params[:id])
    end
end
