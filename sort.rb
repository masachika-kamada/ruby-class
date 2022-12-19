def add_sorted(n)
    if @head == nil
        @head = Cell.new(n)
    elsif n < @head.data
        cell = Cell.new(n)
        cell.next = @head
        @head = cell
    elsif @head == nil
        @head.next = Cell.new(n)
    elsif n < @head.next.data
        cell = Cell.new(n)
        cell.next = @head.next
        @head.next = cell

 
        
# itiji comment [1, 2, 3] + [4, 5] => [1, 2, 3, 4, 5]できる

# スタック    FILO
# キュー        FIFO

# ヒープソート
