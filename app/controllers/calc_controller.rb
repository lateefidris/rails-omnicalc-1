class CalcController < ApplicationController
  def home
    render({:template => "templates/square"})
  end

  def square
   
   render({:template => "templates/square"})
  end

  def square_results
    @num = params.fetch("square").to_i
    @square = @num * @num 
    render({:template => "templates/square_results"})
  end

  def square_root
  end
end  
