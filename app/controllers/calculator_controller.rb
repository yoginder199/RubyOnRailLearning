class CalculatorController < ApplicationController
  def index
  end

  def calculate
    num1 = params[:num1].to_f
    num2 = params[:num2].to_f
    operation = params[:operation]
  
    @result = case operation
              when "add"
                num1 + num2
              when "subtract"
                num1 - num2
              when "multiply"
                num1 * num2
              when "divide"
                num2.zero? ? "Cannot divide by zero" : num1 / num2
              else
                "Invalid operation"
              end
  
    render :index
  end
  
end
