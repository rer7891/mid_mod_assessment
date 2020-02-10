class CharacterSearch

  def initialize(house)
    @house = house
  end

  def house_name
    order_members.first.house
  end

  def count_order_members
    order_members.count
  end

  def order_members
    service = CharacterService.new.get_members(@house)
    @order_members ||= service.flat_map do |data|
      Character.new(data)
    end
  end
end
