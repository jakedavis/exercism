# resistor_color_duo.rb
#
# This was a weird one because you didn't have to implement the entire standard of how resistor
# colors are determined. Kept it simple.

class ResistorColorDuo

  COLORS = {
      "black" =>  '0',
      "brown" =>  '1',
      "red" =>    '2',
      "orange" => '3',
      "yellow" => '4',
      "green" =>  '5',
      "blue" =>   '6',
      "violet" => '7',
      "grey" =>   '8',
      "white" =>  '9'
  }

  def self.value(pairs=[])
    (COLORS[pairs[0]] + COLORS[pairs[1]]).to_i
  end

end
