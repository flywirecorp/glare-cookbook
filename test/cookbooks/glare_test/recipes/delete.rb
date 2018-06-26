node.default['glare'] ||= {}

glare_record 'flywire.com.cn' do
  type 'CNAME'
  email node['glare']['email'] || 'test@email.com'
  auth_key node['glare']['auth_key'] || 'example_auth_key'
  action :delete
end
