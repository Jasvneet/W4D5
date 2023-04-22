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

describe "#stock_picker" do 
    it "should return the most profitable pair of days on 
    which to buy and sell stock." do 
        expect(stock_picker([33, 54, 68, 21, 26])).to eq([0, 2])
    end
end

describe TowersOfHanoi do 
    subject(:tower) { TowersOfHanoi.new([3, 2, 1]) }
    

    describe '#initialize' do
        it 'takes in the starting stack argument' do 
            expect(tower.stack1).to eq([3, 2, 1])
            expect(tower.stack2).to eq([])
            expect(tower.stack3).to eq([])
        end 
    end

    # describe '#move' do 
    #     it "raise error when provided invalid move" do 
    #         expect{tower.move}.to raise_error('Invalid Move')

    #     end

    #     it "should place selected disks onto selected stacks" do 
    #         expect(tower.move).to eq()
    #     end
    # end

    describe '#win' do
        it "it should return true if game is won" do
            tower.stack1 = []
            tower.stack2 = []
            tower.stack3 = [3, 2, 1]
            expect(tower.win).to be(true)
        end
    end


end

# move gets from first stack and place on second stack 
# puts 'pick where you want to place the disk, ex: stack1 stack2'

# win if stack1 && stack2 empty




