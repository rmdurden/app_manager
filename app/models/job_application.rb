class JobApplication < ActiveRecord::Base
  validates :name, presence: true, on: [:new, :create] 
  validates :email, presence: true, on: [:new, :create] 
  validates :answer1, presence: true, on: [:new, :create]
  validates :answer2, presence: true, on: [:new, :create]
  validates :answer3, presence: true, on: [:new, :create]
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, uniqueness: { case_sensitive: false }, format: { with: email_regex }
end
