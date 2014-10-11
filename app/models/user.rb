class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :pins

  # Man muss den Namen angeben bei Neuanmelden oder Ändern von Dateien
  validates :name, presence: true
  validates :email, uniqueness: true
end
