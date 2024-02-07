class CalcController < ApplicationController
  def home
    render({:template => "templates/square"})
  end

  def square
   num = params.fetch("square")
   @square = num 
   render({:template => "templates/square"})
  end

  def square_root
  end
end  
