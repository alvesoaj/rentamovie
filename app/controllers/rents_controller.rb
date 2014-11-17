class RentsController < ApplicationController
    # Filtro do declarative_authorization
    filter_access_to :all
        
    respond_to :html, :json

    before_filter :set_rent, only: [:show, :edit, :update, :destroy]

    def index
        @rents = Rent.all
        respond_with(@rents)
    end

    def show
        respond_with(@rent)
    end

    def new
        @rent = Rent.new
        respond_with(@rent)
    end

    def edit
    end

    def create
        @rent = Rent.new(params[:rent])
        @rent.save
        respond_with(@rent)
    end

    def update
        @rent.update_attributes(params[:rent])
        render :index
        respond_with(@rent)
    end

    def destroy
        @rent.destroy
        respond_with(@rent)
    end

    private
        def set_rent
            @rent = Rent.find(params[:id])
        end
end
