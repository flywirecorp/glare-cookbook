glare Cookbook
====================

Handles Cloudflare DNS records via API v4

Usage
=====

Do `include_recipe 'glare::default'` if using Chef `< 12.8.1`

Resources
=========

**record**

- `create` action:

```ruby
glare_record 'domain.com' do
  content 'content.com'
  type 'CNAME'

  email 'test@email.com'
  auth_key 'example_auth_key'
  action :create
end
```

- `delete` action:

```ruby
glare_record 'domain.com' do
  type 'CNAME'

  email 'test@email.com'
  auth_key 'example_auth_key'
  action :delete
end
```
