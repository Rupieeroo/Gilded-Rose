class AgedBrie

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

  def final_check
    final = Updater.new(@items)
    final.updater
  end
end
