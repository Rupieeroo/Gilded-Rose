require 'normal'
require 'backstage_pass'
require 'aged_brie'
require 'legendary'
require 'conjured'

class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each { |item| item.update }
  end
end
