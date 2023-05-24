glare Cookbook
====================

Handles Cloudflare DNS records via API v4


Build Status
============

[![Build Status](https://travis-ci.org/flywirecorp/glare-cookbook.svg?branch=master)](https://travis-ci.org/flywirecorp/glare-cookbook)
[![Code Climate](https://codeclimate.com/github/flywirecorp/glare-cookbook/badges/gpa.svg)](https://codeclimate.com/github/flywirecorp/glare-cookbook)
[![Cookbook Version](https://img.shields.io/cookbook/v/glare.svg)](https://supermarket.chef.io/cookbooks/glare)

Usage
=====

Do `include_recipe 'glare::default'` if using Chef `< 12.8.1`

Resources
=========

**record**

- `create` action:

With scoped API token:

```ruby
glare_record 'domain.com' do
  content 'content.com'
  type 'CNAME'

  email 'test@email.com'
  api_token 'example_api_token'
  action :create
end
```

With global API key:

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
