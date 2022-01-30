class Like < ApplicationRecord
  has_many :likes, as: :likeable
  belongs_to :likeable, polymorphic: true
  belongs_to :user
end
