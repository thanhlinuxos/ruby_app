class Person < ApplicationRecord
  self.table_name = 'people'

  validates :name, presence: true
  # validates :name, inclusion: {in: %w(thanh nguyen kaka)} #check in list
  validates :mail, uniqueness: true, on: :create
  validates :mail, presence: true, confirmation: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: 'khong dung dinh dang'}
  validates :mail_confirmation, presence: true
  validates :age, numericality: true

  # has_many :articles, inverse_of: :person

end
