class Address < ApplicationRecord
  belongs_to :contact
  validates :label, :address, :presence => true
end
