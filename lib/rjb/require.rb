module Rjb
  def self.load_from(path)
    paths = Dir["#{Steam.config[:html_unit][:java_path]}/*.jar"]
    load(paths.join(':')) unless paths.empty?
  end

  def self.require(qualified_class_name)
    java_class    = Rjb::import(qualified_class_name)
    package_names = qualified_class_name.to_s.split('.')
    class_name    = package_names.delete(package_names.last)
    target_module = Object

    package_names.each do |package_name|
      module_name = package_name.capitalize

      if !target_module.const_defined?(module_name)
        target_module = target_module.const_set(module_name, Module.new)
      else
        target_module = target_module.const_get(module_name)
      end
    end

    if target_module.const_defined?(class_name)
      false
    else
      target_module.const_set(class_name, java_class)
    end
  end
end