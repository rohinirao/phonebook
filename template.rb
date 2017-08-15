# This is a template for Oracle Automation
# Use this template with these commands
# rails new blog -m ./rsp_onboarding_sysops/template.rb --force --skip-turbolinks --skip-puma --skip-action-cable --skip-test --database=mysql
# or existing rails app
# rails app:template LOCATION=../rsp_onboarding_sysops/template.rb --no-skip
template_files = File.join([File.expand_path(File.dirname(__FILE__))], 'template_files')
def source_paths
  [File.join([File.expand_path(File.dirname(__FILE__))], 'template_files')]
end

## Web/App Server
gem 'passenger', '>= 5.0.25', require: 'phusion_passenger/rack_handler'
# ## Authentication
gem 'devise'
gem 'devise_ldap_authenticatable'
# ## Authorization
gem 'cancancan', '~> 1.10'
gem 'rolify'
# ## Database
gem 'mysql2'
gem 'bcrypt', '~> 3.1.7'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

gem_group :development, :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13.0'
  gem 'selenium-webdriver'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Testing using rspec and additional gems for supporting testing
  # gem 'rspec-rails', '~> 3.5'
  gem 'rspec-rails', '3.5.0'
  gem 'simplecov'
  gem 'simplecov-console'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'database_cleaner'
  gem 'guard-rspec'
  gem 'spring-commands-rspec'
end
gem 'pry-rails', group: :development

generate(:controller, 'home', :index)
route "root to: 'home#index'"
# generate "devise", 'user'
# generate "devise:install"
run 'spring stop'
generate 'rspec:install'
run 'guard init'

# recursive copy files into app
def rc_file_copy(sp, fn = '')
  if sp.is_a? String
    fn = sp.dup
    sp = sp.split(File::SEPARATOR)
  end
  if sp.length == 1
    # remove_file sp[0]
    copy_file sp[0]
  else
    inside sp.shift do
      rc_file_copy(sp, fn)
    end
  end
end
files = Dir.glob(File.join(template_files, '**', '*'), File::FNM_DOTMATCH).reject { |fn| File.directory?(fn) }.map { |fn| fn.sub(/^#{File.join(template_files)}/, '') }
files.each do |fn|
  rc_file_copy fn
end
# recursive copy files into app -- end
run 'yarn'
application do <<-RUBY
config.active_record.schema_format = :sql
config.autoload_paths << Rails.root.join('lib')
RUBY
end

after_bundle do
  git :init
  git add: '.'
  git commit: " -m 'Initial commit' "
end
