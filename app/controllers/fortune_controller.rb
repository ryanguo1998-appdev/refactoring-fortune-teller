class FortuneController < ApplicationController
  def horoscope
    all_zodiacs = Zodiac.list
    @star_sign = params.fetch("sign")
    this_zodiac = all_zodiacs.fetch(@star_sign.to_sym)
    @horoscope = this_zodiac.fetch(:horoscope)

    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)

      @array_of_numbers.push(another_number)
    end

    render({ :template => "fortune_templates/horoscope.html.erb" })
  end
end
