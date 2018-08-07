class Auction < ApplicationRecord
  validates_presence_of :title, :description, :start_date, :end_date
  has_one :buyer, class_name: "User"
  has_one :seller, class_name: "User"
end
