# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'
require 'radiant-user_attributes-extension/version'
class UserAttributesExtension < Radiant::Extension
  version RadiantUserAttributesExtension::VERSION
  description "Adds user_attributes to Radiant."
  url "http://github.com/rwilcox/radiant_user_attributes"

  User.class_eval do
    serialize :user_attributes
    before_save do |obj|
      if obj.user_attributes.nil?
        obj.user_attributes = {}  # by default this should be a hash, to be extensiable
      end
    end 
  end

  # extension_config do |config|
  #   config.gem 'some-awesome-gem
  #   config.after_initialize do
  #     run_something
  #   end
  # end

  # See your config/routes.rb file in this extension to define custom routes
  
  def activate
    # tab 'Content' do
    #   add_item "User Attributes", "/admin/user_attributes", :after => "Pages"
    # end
  end
end
