class HouseSearch

  def initialize(house)
    @house = house
  end

  def count_house_members
    @house_members.count
  end

  def house_members(house)
    @house_members ||= body.map do |data|
      House.new(data)
    end
  end
end
