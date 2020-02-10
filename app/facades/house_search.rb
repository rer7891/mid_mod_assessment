class HouseSearch

  def initialize(house)
    @house = house
  end

  def house_name
    house_members.first.house
  end

  def count_house_members
    house_members.count
  end

  def house_members
    service = HouseService.new.members_by_house(@house)
    @house_members ||= service.flat_map do |data|
      House.new(data)
    end
  end
end
