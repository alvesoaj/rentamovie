class User < Person
    ############################## ATTRIBUTES
    attr_accessible :email, :password, :password_confirmation, :remember_me

    ############################## DEVISE
    # Include default devise modules. Others available are:
    # :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable
    
    ############################## REALATIONSHIPS
    has_many :permissions, :foreign_key => :person_id
    has_many :roles, :through => :permissions

    ############################## DECLARATIVE AUTHORIZATION
    def role_symbols
        (roles || []).map{|r| r.name.underscore.to_sym}
    end
end