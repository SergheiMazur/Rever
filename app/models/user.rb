class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :meetups
  has_many :guests
  has_many :guest_meetups, through: :guests, class_name: "Meetup", source: :user

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
