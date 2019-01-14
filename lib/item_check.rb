require 'normal'
require 'backstage_pass'
require 'aged_brie'
require 'updater'

class ItemCheck

  attr_accessor :items

  def updater
    item = Updater.new(@items)
    item.updater
  end

  def aged_brie_update
    item = AgedBrie.new(@items)
    item.update
    item.final_check
  end

  def backstage_pass_update
    item = BackstagePass.new(@items)
    item.update
    item.final_check
  end

  def normal_update
    item = Normal.new(@items)
    item.update
    item.final_check
  end

  def update
    case item.name
    when 'Aged Brie'
      aged_brie_update
    when 'Backstage passes to a TAFKAL80ETC concert'
      backstage_pass_update
    else
      normal_update unless item.name == 'Sulfuras, Hand of Ragnaros'
    end
  end
end
