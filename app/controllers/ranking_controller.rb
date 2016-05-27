class RankingController < ApplicationController
  def have
    @haves_count = Have.group(:item_id).order('count_all desc').limit(10).count
    # item_ids = @haves_count.keys
    # @items = Item.find(item_ids)
    # @items = @items.sort_by{|item| @haves_count[item.id].index }
  end
  
  def want
    @wants_count = Want.group(:item_id).order('count_all desc').limit(10).count
  end
end
