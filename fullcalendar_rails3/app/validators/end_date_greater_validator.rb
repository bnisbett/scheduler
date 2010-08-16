class EndDateGreaterValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    unless value =~ 
      object.errors[attribute] << (options[:message] || "is not formatted properly")
    end
  end
end