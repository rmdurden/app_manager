class JobApplication < ActiveRecord::Base
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, uniqueness: true, format: { with: email_regex }
  validates :name, presence: true, on: 'create'
  validates :email, presence: true, on: 'create'
  validates :answer1, presence: true, on: 'create'
  validates :answer2, presence: true, on: 'create'
  validates :answer3, presence: true, on: 'create'
end
