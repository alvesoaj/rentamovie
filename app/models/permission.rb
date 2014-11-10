class Permission < ActiveRecord::Base
    attr_accessible :person_id, :role_id

    belongs_to :user, :foreign_key => :person_id
    belongs_to :role
end
