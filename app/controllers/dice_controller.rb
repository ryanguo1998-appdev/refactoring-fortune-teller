class DiceController < ApplicationController
  def all_dice_rolls
    @num_dice = params.fetch("numdice")
    @num_sides = params.fetch("sides")

    @array_of_rolls = []

    @num_dice.to_i.times do
      @array_of_rolls.push(rand(@num_sides.to_i) + 1)
    end

    render({ :template => "dice_templates/all_dice_rolls.html.erb" })
  end
end
