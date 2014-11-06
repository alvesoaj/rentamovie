class Person < ActiveRecord::Base
    attr_accessible :address, :name

    has_many :rents
end