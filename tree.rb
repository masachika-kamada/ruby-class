class Tree

  attr_accessor(:data, :left, :right)

  def initialize(data = nil)
    @data = data
    @left = nil
    @right = nil
  end

  def print_tree()
    print("( ")
    if @left != nil
      @left.print_tree()
    end
    print(@data.to_s + " ")
    if @right != nil
      @right.print_tree()
    end
    print(") ")
  end

end