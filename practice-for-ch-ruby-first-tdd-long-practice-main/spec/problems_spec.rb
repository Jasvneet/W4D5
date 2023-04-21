require "problems"

describe "#uniq" do
    it "should remove duplicates from array" do 
        expect(uniq([1, 2, 1, 3, 3])).to eq([1, 2, 3])
    end 
end 

describe Array do 
    subject(:array) { Array.new([-1, 0, 2, -2, 1]) }
    describe "#two_sum" do 
            it "finds all pairs of positions where the
                elements at those positions sum to zero" do 
                expect(array.two_sum).to eq([[0, 4], [2, 3]])
            end 
    end 
end 

describe "#my_transpose" do 
    it "should convert between the row-oriented and
        column-oriented representations (4 matrices)" do 
        expect(my_transpose([[0, 1, 2],
                            [3, 4, 5],
                            [6, 7, 8]])).to eq([[0, 3, 6], 
                                                [1, 4, 7], 
                                                [2, 5, 8]])
    end 
end 



