class Movie < ActiveRecord::Base
    attr_accessible :description, :name, :image, :quantity

    ############################## CARRIERWAVE
    mount_uploader :image, ImageUploader

    has_many :rents
end