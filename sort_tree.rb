require("./tree.rb")

class Sorted_tree < Tree

    def initialize(data = nil)
        super(data)
    end

    def sort(a)
        make_st(a)
        make_array()
    end

    def make_st(array)
        for i in 0..array.length()-1
            make_st_r(array[i])
        end
    end

    def make_st_r(data)
        if @head == nil
            @data =data
        elsif @data > data
            if @left == nil
                @left = Sorted_tree.new(data)
            else
                @left.make_st_r(data)
            end
        else
            if @right == nil
                @right = Sorted_tree.new(data)
            else
                @right.make_st_r(data)
            end
        end
    end

    def make_array()
        array = Array.new()
        make_array_r(array)
        array
    end

    def make_array_r(array)
        if @left != nil
            @left.make_array_r(array)
        end
        array[array.length] = @data
        if @right != nil
            @right.make_array_r(array)
        end
    end

end
