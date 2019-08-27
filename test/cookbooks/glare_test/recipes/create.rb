node.default['glare'] ||= {}

glare_record 'flywire.com.cn' do
  content 'flywire.com'
  type 'CNAME'
  proxied true

  email node['glare']['email'] || 'test@email.com'
  auth_key node['glare']['auth_key'] || 'example_auth_key'
  action :create
end
