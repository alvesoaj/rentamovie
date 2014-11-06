class Rent < ActiveRecord::Base
    attr_accessible :movie_id, :person_id, :value

    belongs_to :person
    belongs_to :movie
end
