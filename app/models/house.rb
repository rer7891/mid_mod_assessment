class House
  attr_reader :name, :members, :role, :patronus
  def initialize(data)
    @house = data["house"]
    @name = data["name"]
    @role = data["role"]
    @patronus = data["patronus"]
  end
end
