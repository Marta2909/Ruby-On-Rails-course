class HomeController < ApplicationController
  def index
    @name = "Ruby"
    @table = [1,2,3]
    @greet = false
  end

  def about
  end

  def contact
  end
end
