class User < ActiveRecord::Base
  rolify
  has_many :surveys
  has_many :answers

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


    def update_role(role)
        self.role_ids = []
        self.add_role(role.name)
    end   

end
