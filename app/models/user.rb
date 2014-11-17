class User < Person
    ############################## ATTRIBUTES
    attr_accessible :email, :password, :password_confirmation, :remember_me, :confirmed_at

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

    ############################## REALATIONSHIPS
    before_create :set_before_create_user

    def set_before_create_user
        self.roles << Role.find(:first, :conditions => {:name => "client"})
    end
end