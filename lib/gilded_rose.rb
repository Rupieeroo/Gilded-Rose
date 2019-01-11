require 'normal'
require 'backstage_pass'
require 'aged_brie'
require 'updater'

class GildedRose

  def initialize(items)
    @items = items
  end

  def aged_brie_update
    item = AgedBrie.new(@items)
    item.update
    item.updater
  end

  def backstage_pass_update
    item = BackstagePass.new(@items)
    item.update
    item.updater
  end

  def normal_update
    item = Normal.new(@items)
    item.update
    item.updater
  end

  def updater
    item = Updater.new(@items)
    item.updater
  end

  def update_quality
    @items.each do |item|
      case item.name
        when 'Aged Brie'
          aged_brie_update
        when 'Backstage passes to a TAFKAL80ETC concert'
          backstage_pass_update
        else
          normal_update unless item.name == 'Sulfuras, Hand of Ragnaros'
      end
      updater unless item.name == 'Sulfuras, Hand of Ragnaros'
    end
  end
end

# SOLID liskov substetution principle, ducktyping, inheritance and polymorphism
