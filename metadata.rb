name 'glare'
maintainer 'Flywire'
maintainer_email 'engineering@flywire.com'
license 'MIT'
description 'Manages Cloudflare resources via API v4'
version '1.6.0'

source_url 'https://github.com/flywirecorp/glare-cookbook'
issues_url 'https://github.com/flywirecorp/glare-cookbook/issues'

supports 'debian'
supports 'ubuntu'
supports 'centos'

chef_version '>= 12.6'

gem 'glare', '~> 1.0'
