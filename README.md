glare Cookbook
====================

Handles Cloudflare DNS records via API v4

Usage
=====

Do `include_recipe 'glare::default'` if using Chef `< 12.8.1`

Resources
=========

**record**

- `add` action:

```ruby
glare_record 'domain.com' do
  content 'content.com'
  type 'CNAME'

  email 'test@email.com'
  auth_key 'example_auth_key'
  action :add
end
```

- `remove` action:

```ruby
glare_record 'domain.com' do
  type 'CNAME'

  email 'test@email.com'
  auth_key 'example_auth_key'
  action :remove
end
```
