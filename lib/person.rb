class Person
#   * Create a Person class that accepts a hash upon initialization. The keys of the hash should conform to the attributes below: 

# allowable properties: 
  
# ```ruby
# :name, :birthday, :hair_color, :eye_color, :height, 
# :weight, :handed, :complexion, :t_shirt_size, 
# :wrist_size, :glove_size, :pant_length, :pant_width
# ```

#   * Each key in the attributes hash will become a property of an initialized Person instance. So, you should make an `attr_accessor` for each of the above properties#your code here

attr_accessor :name, :birthday, :hair_color, :eye_color, :height, 
:weight, :handed, :complexion, :t_shirt_size, 
:wrist_size, :glove_size, :pant_length, :pant_width

def intialize(name:, birthday:, hair_color:, eye_color:, height:, 
  weight:, handed:, complexion:, t_shirt_size:, 
  wrist_size:, glove_size:, pant_length:, pant_width:)
  @name = name
  @birthday = birthday
  @hair_color = hair_color
  @eye_color = eye_color
  @height = height
  @weight = weight
  @handed = handed
  @complexion = complexion
  @t_shirt_size = t_shirt_size
  @wrist_size = wrist_size
  @glove_size = glove_size
  @pant_length = pant_length
  @pant_width = pant_width
end


def initialize(attributes)
  attributes.each {|key, value| self.send(("#{key}="), value)}
end
end