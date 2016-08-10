glare Cookbook
====================

Handles Cloudflare DNS records via API v4


Build Status
============

[![Build Status](https://travis-ci.org/peertransfer/glare-cookbook.svg?branch=master)](https://travis-ci.org/peertransfer/glare-cookbook)
[![Coverage Status](https://coveralls.io/repos/github/peertransfer/glare-cookbook/badge.svg?branch=master)](https://coveralls.io/github/peertransfer/glare-cookbook?branch=master)
[![Code Climate](https://codeclimate.com/github/peertransfer/glare-cookbook/badges/gpa.svg)](https://codeclimate.com/github/peertransfer/glare-cookbook)
[![Dependency Status](https://gemnasium.com/peertransfer/glare-cookbook.svg)](https://gemnasium.com/peertransfer/glare-cookbook)

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
