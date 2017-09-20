FactoryGirl.define do
  factory :contact do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email}
    notes { Faker::HarryPotter.quote }
    factory :address do
      label {Faker::GameOfThrones.house}
      address {Faker::Address.street_address}
    end
    factory :phone_number do
      label {Faker::GameOfThrones.house}
      phone_number {Faker::PhoneNumber.cell_phone}
    end
  end
end
