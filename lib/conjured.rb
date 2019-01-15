require 'item'

class Conjured < Item

  def update
    @sell_in -= 1
    @quality -= 2
    @quality -= 2 if @sell_in <= 0
    @quality = 0 if @quality < 0
    @quality = 50 if @quality > 50
  end
end
