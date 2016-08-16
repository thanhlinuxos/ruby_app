class Article < ApplicationRecord
  belongs_to :person

  validates :title, :text, presence: true
  # validates :person, absence: true
end
