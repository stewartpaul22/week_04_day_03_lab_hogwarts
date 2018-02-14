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
    sql = "INSERT INTO students (first_name, second_name, house, age) VALUES ($1, $2, $3, $4) RETURNING id"
    values = [@first_name, @second_name, @house, @age]
    student = SqlRunner.run( sql, values )
    @id = student.first()['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM students"
    SqlRunner.run(sql)
  end

end
