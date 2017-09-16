class Contact < ApplicationRecord
	has_many :contact_address, dependent: :destroy 
	has_many :contact_number, dependent: :destroy 
end
