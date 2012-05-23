class User < ActiveRecord::Base
  has_many :authentications

  # validations
  validates :first_name, :last_name, :presence => true
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me,
  :age, :highest_education, :years_in_business, :founded_company, :raised_capital, :pitched_to_investors
  
  def apply_omniauth(omniauth)
    #self.email = omniauth['user_info']['email'] if email.blank?
    authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
  end
  
  def password_required?
    (authentications.empty? || !password.blank?) && super
  end

  def full_name
    self.first_name + ' ' + self.last_name
  end

end
