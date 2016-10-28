chef_gem 'glare' do
  compile_time false
  version node['glare']['gem_version']
end
