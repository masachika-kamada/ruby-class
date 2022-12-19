class Cell

  attr_accessor(:data, :next)

  def initialize(data)
      @data = data
      @next = nil
  end

end

class List

  def initialize()
    @head = nil
  end

  def tail()
    if @head == nil
      nil
    else
      tail_r(@head)
    end
  end

  def tail_r(cell)
    if cell.next == nil
      cell
    else
      tail_r(cell.next)
    end
  end

  def add(data)
    last = tail()
    if last == nil
      @head = Cell.new(data)
    else
      last.next = Cell.new(data)
    end
  end

  def delete(data)
    if @head == nil
      nil
    else
      @head = delete_r(data, @head)
    end
  end

  def delete_r(data, cell)
    if cell == nil
      nil
    elsif cell.data == data
      cell.next
    else
      cell.next = delete_r(data, cell.next)
      cell
    end
  end

  def print_list()
    if @head != nil
      print_list_r(@head)
    end
  end

  def print_list_r(cell)
    print(cell.data.to_s + " -> ")
    if cell.next != nil
      print_list_r(cell.next)
    end
  end

end