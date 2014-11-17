class PeopleController < ApplicationController
    # Filtro do declarative_authorization
    filter_access_to :all
        
    respond_to :html, :json

    before_filter :set_person, only: [:show, :edit, :update, :destroy]

    def index
        @people = Person.all
        respond_with(@people)
    end

    def show
        respond_with(@person)
    end

    def new
        @person = Person.new
        respond_with(@person)
    end

    def edit
    end

    def create
        @person = Person.new(params[:person])
        @person.save
        respond_with(@person)
    end

    def update
        @person.update_attributes(params[:person])
        respond_with(@person)
    end

    def destroy
        @person.destroy
        respond_with(@person)
    end

    private
        def set_person
            @person = Person.find(params[:id])
        end
end
