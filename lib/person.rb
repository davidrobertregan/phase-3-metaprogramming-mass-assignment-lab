require 'pry'

class Person
  
  def initialize(attr)
    attr.each do |key, value| 
      self.class.attr_accessor key
      self.send "#{key}=", value
    end
  end

end

bob_attributes = { name: "Bob", hair_color: "Brown" }

bob = Person.new bob_attributes

binding.pry