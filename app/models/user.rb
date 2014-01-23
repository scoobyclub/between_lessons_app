class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :daily_questions

  validates :question, length: { maximum: 140 }
  validates :answer, length: { maximum: 140 }
end
