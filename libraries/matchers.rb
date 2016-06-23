if defined?(ChefSpec)
  def create_glare_record(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:glare_record, :create, resource_name)
  end

  def delete_glare_record(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:glare_record, :delete, resource_name)
  end
end
