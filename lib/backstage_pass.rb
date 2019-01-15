require 'item'

class BackstagePass < Item

  def update
    @sell_in -= 1
    @quality += 1
    @quality += 1 if @sell_in < 10
    @quality += 1 if @sell_in < 5
    @quality = 0 if @sell_in <= 0
    @quality = 0 if @quality < 0
    @quality = 50 if @quality > 50
  end
end
