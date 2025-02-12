class DiceController < ApplicationController
  def flexible
    @number_of_die=params.fetch("number_of_die").to_i
   @size_of_die=params.fetch("size_of_die").to_i
  
    @rolls=[]

    @number_of_die.times do
      die=rand(1..@size_of_die)
      @rolls.push(die)
    end

  
  render({:template => "dice_templates/flex"})
  end

def home
  render({:template=>"dice_templates/home"})
end

end
