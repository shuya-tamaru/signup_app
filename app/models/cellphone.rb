class Cellphone < ApplicationRecord
  belongs_to :user, optional: true
  # belongs_to :user
  validates :number ,presence: true
end