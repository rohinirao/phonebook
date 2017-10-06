FactoryGirl.define do
    factory :phone_number do
      label {Faker::GameOfThrones.house}
      phone_number {Faker::PhoneNumber.cell_phone}
      association :contact, factory: :contact
    end
end
