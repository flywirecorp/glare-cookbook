property :type, String
property :content, [String, Array]
property :email, String
property :auth_key, String

default_action :create

action :create do
  require 'glare'
  ENV['CF_EMAIL'] = email
  ENV['CF_AUTH_KEY'] = auth_key
  Glare.register(name, content, type)
end

action :delete do
  require 'glare'
  ENV['CF_EMAIL'] = email
  ENV['CF_AUTH_KEY'] = auth_key
  Glare.deregister(name, type)
end
