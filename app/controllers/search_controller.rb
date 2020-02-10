class SearchController < ApplicationController
  def index
    render locals: {
      search_result: CharacterSearch.new(params[:house])
    }
  end
end
