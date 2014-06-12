class JobApplication < ActiveRecord::Base
  validates :email, uniqueness: true
  validates :name, presence: true, on: 'create'
  validates :email, presence: true, on: 'create'
  validates :answer1, presence: true, on: 'create'
  validates :answer2, presence: true, on: 'create'
  validates :answer3, presence: true, on: 'create'
end
