class PhoneNumber < ApplicationRecord
  belongs_to :contact
  validates :label, :phone_number, :presence => true
  validates_format_of :phone_number , :with => /\A[0-9]/ , message: 'must be valid contact number'
end
