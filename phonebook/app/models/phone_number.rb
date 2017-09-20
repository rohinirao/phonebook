class PhoneNumber < ApplicationRecord
  belongs_to :contact
  validates :label, :phone_number, :presence => true
end
