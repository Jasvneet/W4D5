

def uniq(arr)
    new_arr = []
    arr.each { |ele| new_arr << ele if !new_arr.include?(ele) }
    new_arr
end 


class Array 
    def two_sum
        pairs = []

        self.each_with_index do |el1, i|
            self.each_with_index do |el2, j|
                if el1 + el2 ==  0 && j > i 
                    pairs << [i, j]
                end 
            end 
        end 
        pairs 
    end 
end 

def my_transpose(arr)
    transposed = Array.new(arr.length) {Array.new(arr[0].length)}

    (0...arr.length).each do |row|
        (0...arr[0].length).each do |col|
            transposed[col][row] = arr[row][col]
        end 
    end 
    transposed 
end 

def stock_picker(array)
    profits = {}
    
    array.each_with_index do |price1, day1|
        array.each_with_index do |price2, day2|
            if day2 > day1
                profits[price2 - price1] = [day1, day2]
            end
        end
    end

    profits[profits.keys.max]
end 


class TowersOfHanoi

    attr_reader :stack1, :stack2, :stack3

    def initialize(stack1)
        @stack1 = stack1
        @stack2 = []
        @stack3 = []
    end

    

end



