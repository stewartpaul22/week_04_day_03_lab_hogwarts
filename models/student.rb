require_relative('../db/sql_runner')

class Student

  attr_accessor :id, :first_name, :second_name, :house, :age

  def initialize( options )
    @id = options['id'].to_i
    @first_name = options['first_name']
    @second_name = options['second_name']
    @house = options['house']
    @age = options['age'].to_i
  end


  def save()
    
  end

end
