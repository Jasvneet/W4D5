

def uniq(arr)
    new_arr = []
    arr.each { |ele| new_arr << ele if !new_arr.include?(ele) }
    new_arr
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




