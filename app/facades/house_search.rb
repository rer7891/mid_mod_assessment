class HouseSearch

  def initialize(house)
    @house = house
  end

  def count_house_members
    @house_members.count
  end

  def house_members(house)
    service = HouseService.new.members_by_house
    @house_members ||= service.map do |data|
      House.new(data)
    end
  end
end
