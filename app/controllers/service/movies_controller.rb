class Service::MoviesController < ApplicationController
    # Filtro do declarative_authorization
    # filter_access_to :all
    
    respond_to :json

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
