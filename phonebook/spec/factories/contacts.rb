FactoryGirl.define do
  factory :contact do |cont|
    cont.first_name { Faker::Name.first_name }
    cont.last_name { Faker::Name.last_name }
    cont.email { Faker::Internet.email}
    cont.notes { Faker::HarryPotter.quote }

    cont.after(:create) { |contact| 
      contact.address << FactoryGirl.create(:address , :contact => contact)
      contact.phone_number << FactoryGirl.create(:phone_number, :contact => contact)
    }    
  end
end