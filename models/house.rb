require_relative('../db/sql_runner')

class House

  attr_accessor :id, :name

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO houses (name) VALUES ($1) RETURNING id"
    values = [@name]
    house = SqlRunner.run( sql, values )
    @id = house.first()['id'].to_i
  end

end
