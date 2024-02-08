class CalcController < ApplicationController
  def home
    render({:template => "templates/square"})
  end

  def square
   render({:template => "templates/square"})
  end

  def square_results
    @num = params.fetch("square").to_f
    @square = @num * @num 
    render({:template => "templates/square_results"})
  end

  def square_root
    render({:template => "templates/square_root"})
  end

  def square_root_results
    @num = params.fetch("square_root").to_f
    @square_root = Math.sqrt(@num)
    render({:template => "templates/square_root_results"})
  end

  def payment
    render({:template => "templates/payment"})
  end

  def payment_results
    @apr = params.fetch("apr").to_f
    @yrs = params.fetch("yrs").to_f
    @principal = params.fetch("principal").to_f
  
  
    @apr = @apr /100 /12
    @yrs *= 12
  
  
    @payment = @principal * (@apr * (1 + @apr)** @yrs) / ((1 + @apr)** @yrs - 1)
    render({:template => "templates/payment_results"})
  end

  def random
    render({:template => "templates/random"})
  end

  def random_results
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f

    @random = rand(@min..@max)
    render({:template => "templates/random_results"})
  end 
end  
