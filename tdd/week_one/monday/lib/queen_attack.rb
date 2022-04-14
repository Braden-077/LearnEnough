# frozen_string_literal: true 
class Array
  def queen_attack?(pawn)
    queen_x, queen_y = self
    pawn_x, pawn_y = pawn

    if queen_x === pawn_x
      true
    elsif queen_y === pawn_y
      true
    elsif ((pawn_y - queen_y).abs / (pawn_x - queen_x).abs) === 1
      true
    else
      false
    end
  end
end
