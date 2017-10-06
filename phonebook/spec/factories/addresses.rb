FactoryGirl.define do
	factory :address do
	  label {Faker::GameOfThrones.house}
	  address {Faker::Address.street_address}
      association :contact, factory: :contact
	end
end