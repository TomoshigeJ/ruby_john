class Animal
  def name
    @name
  end

  def name=(text)
    @name = text
  end
end

animal_1 = Animal.new
animal_1.name= 'じょん'
puts animal_1.name

animal_2 = Animal.new
animal_2.name = 'じょん2'
puts animal_2.name

animal_3 = Animal.new
animal_3.name=('じょん3')
puts animal_3.name

animal_4 = Animal.new
animal_4.name = ('じょん4')
puts animal_4.name

class Attr
  attr_accessor :name
end

attr_1 = Attr.new
attr_1.name = 'じょーん'
puts attr_1.name
