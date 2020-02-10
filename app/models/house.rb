class House
  attr_reader :name, :house, :role, :patronus
  def initialize(data)
    @house = data["house"]
    @name = data["name"]
    @role = data["role"]
    @patronus = data["patronus"]
  end
end
