class HouseService
  def members_by_house(house)
    response = conn.get("/v1/characters/?key=$2a$10$2qWJ47twXwT///yIYlqyROQic3oAp7pyzWm9QBsCCHEGebSkjNyGS&house=#{house}&orderOfThePhoenix=true")
    body = JSON.parse(response.body)
  end

private

  def conn
      Faraday.new(url: 'https://www.potterapi.com') do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end
