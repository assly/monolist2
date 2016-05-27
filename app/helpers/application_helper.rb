module ApplicationHelper
    
    def item_image_tag(item)
        image_tag(item.large_image , alt: item.title)
    end
end
