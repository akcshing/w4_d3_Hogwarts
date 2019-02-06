require_relative("../db/sqlrunner")

class House

  attr_accessor :name, :id

  def initialize(house)
    @id = house["id"].to_i if house["id"]
    @name = house["name"]
  end

  def save()
    sql = "INSERT INTO houses (name) VALUES ($1) RETURNING *"
    values = [@name]
    house_data = SqlRunner.run(sql, values)
    @id = house_data.first()["id"].to_i
  end

end
