require 'rails_helper'


feature "user can search for the Gryffindor house" do

  scenario "user should see list of members for house and OP" do

    visit '/'

    select "Gryffindor", from: :house

    click_on "Search For Members"

    expect(current_path).to eq(search_path)

    expect(page).to have_content("21 Order Members")

    expect(page).to have_css(".order", count: 21)
    within(first(".order")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".role")
      expect(page).to have_css(".house")
      expect(page).to have_css(".patronus")
    end

  end
end
