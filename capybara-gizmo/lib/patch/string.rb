require 'active_support'
class String
  def camelize
    ActiveSupport::Inflector.camelize(self)
  end
end