class Contact < ApplicationRecord
	has_many :address, dependent: :destroy 
	has_many :phone_number, dependent: :destroy 

	validates :first_name, :last_name, :email, :presence => true
	validates_format_of :email , :with => /\A^(?:[a-z0-9._%+-]+@)(?:(?!\d+\.)[\w\-]{1,63}\.)+(?:[a-z]{2,})$\z/i,
    message: 'must be valid email address'
end
