class AgedBrie

  attr_reader :items

  def initialize(items)
    @items = items
  end

  def update
    @items.each do |item|
      item.sell_in -= 1
      item.quality += 1
      item.quality += 1 if item.sell_in < 0
    end
  end

  def updater
    @items.each do |item|
      item.quality = 0 if item.quality < 0
      item.quality = 50 if item.quality > 50
    end
  end
end
