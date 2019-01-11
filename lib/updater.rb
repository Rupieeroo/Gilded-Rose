class Updater

  def initialize(items)
    @items = items
  end

  def updater
    @items.each do |item|
      item.quality = 0 if item.quality < 0
      item.quality = 50 if item.quality > 50
    end
  end

end
