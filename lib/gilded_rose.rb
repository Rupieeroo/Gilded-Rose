class GildedRose

  def initialize(items)
    @items = items
  end

  def updater(item)
    item.quality = 0 if item.quality < 0
    item.quality = 50 if item.quality > 50
  end

  def aged_brie_update(item)
    item.sell_in -= 1
    item.quality += 1
    item.quality += 1 if item.sell_in < 0
  end

  def backstage_pass_update(item)
    item.sell_in -= 1
    item.quality += 1
    item.quality += 1 if item.sell_in < 10
    item.quality += 1 if item.sell_in < 5
    item.quality = 0 if item.sell_in <= 0
  end

  def normal_update(item)
    item.sell_in -= 1
    item.quality -= 1
    item.quality -= 1 if item.sell_in <= 0
    return if item.quality > 50
  end

  def update_quality
    @items.each do |item|
      if item.name == 'Aged Brie'
        aged_brie_update(item)
      elsif item.name == 'Backstage passes to a TAFKAL80ETC concert'
        backstage_pass_update(item)
      else
        normal_update(item) unless item.name == 'Sulfuras, Hand of Ragnaros'
      end
      updater(item) unless item.name == 'Sulfuras, Hand of Ragnaros'
    end
  end
end
