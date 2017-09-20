namespace :db do
  desc 'Drop, create, migrate and populate sample data'
  task prepare: [:drop, :create, :migrate, :populate_sample_data] do
    puts 'Ready to go!'
  end

  desc 'Populates the database with sample data'
  task populate_sample_data: :environment do
    50.times { FactoryGirl.create(:contact) }
  end
end