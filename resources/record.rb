property :type, String
property :content, [String, Array]
property :email, String
property :auth_key, String
property :api_token, String
property :proxied, [TrueClass, FalseClass], default: false
property :ttl, Integer, default: 1

default_action :create

action :create do
  load_glare
  Glare.register(new_resource.name, new_resource.content, new_resource.type, proxied: new_resource.proxied, ttl: new_resource.ttl)
end

action :delete do
  load_glare
  Glare.deregister(new_resource.name, new_resource.type)
end

action_class do
  def load_glare
    require "glare"

    ENV["CF_EMAIL"] = new_resource.email
    ENV["CF_AUTH_KEY"] = new_resource.auth_key if property_is_set?(:auth_key)
    ENV["CF_API_TOKEN"] = new_resource.api_token if property_is_set?(:api_token)
  end
end
