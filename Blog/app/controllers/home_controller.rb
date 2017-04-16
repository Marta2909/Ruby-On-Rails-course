class HomeController < ApplicationController
  def index
    @name = "Ruby"
    @numbers = [5,10,15]
    @greet = false
  end

  def about
  end
  
  def contact
  end
end
