class TodoList

  def initialize(item1, item2)
    @item1 = item1
    @item2 = item2
    @array = [@item1, @item2]
  end

  def get_items
    @array
  end

  def add_item(new_item)
    @new_item = new_item
    @array << @new_item
  end

  def delete_item(item_to_delete)
    index = @array.index(item_to_delete)
    @array.delete_at(index)
  end

  def get_item(index)
    @array[index]
  end

end