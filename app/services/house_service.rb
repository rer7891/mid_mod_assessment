class HouseService
  def members_by_house
    response = conn.get("/v1/houses/5a05e2b252f721a3cf2ea33f?key=$2a$10$2qWJ47twXwT///yIYlqyROQic3oAp7pyzWm9QBsCCHEGebSkjNyGS")
    body = JSON.parse(response.body)
  end

private

  def connenction
      conn = Faraday.new(url: 'https://www.potterapi.com') do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end
