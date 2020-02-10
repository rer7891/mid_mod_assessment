class SearchController < ApplicationController
  def index
    render locals: {
      search_result: HouseSearch.new(params[:house])
    }
  end
end
