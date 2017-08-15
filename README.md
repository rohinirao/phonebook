# This is a template for Oracle Automation
# This assumes you have a development system with Ruby on Rails v5.1

# Use this template with these commands
# Replace blog with the name of the new app and modify your database params accordingly
rails new blog -m ./new_employee_template/template.rb --force --skip-turbolinks --skip-puma --skip-action-cable --skip-test

# or existing rails app
rails app:template LOCATION=./rails_template/template.rb --no-skip

# The new application directory will contain default settings that can be
# adjusted based on the needs of the project

# This template contains devise gem
# Read the link below for more details:
# https://github.com/plataformatec/devise
# If you need devise install:
rails generate devise:install

# Layouts directory uses Faker::StarWars to stubb in link names
# Replace these to reflect the links for the project as needed

# Rspec has been installed as the testing framework
# Please read link below for more details
# https://github.com/rspec/rspec-rails


# Guard has been installed as well to help with rspec testing
# Please read the link below for more details
# https://github.com/guard/guard
