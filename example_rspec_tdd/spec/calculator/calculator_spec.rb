require 'calculator'

describe Calculator, "About the calculator" do # You can add a text describe for the Class you have
    context '#sum' do
        it 'with positive numbers' do
            result = subject.sum(5, 7)
            expect(result).to eq(12)
        end

        it 'with negative and positive numbers' do
            result = subject.sum(-5, 7)
            expect(result).to eq(2)
        end

        it 'with negative numbers' do #, puts 'x' in the it, 'xit', to put this pending. Or let the corpse of the 'it...' empty.
            result = subject.sum(-5, -7)
            expect(result).to eq(-12)
        end
    end
end

# To load only a specif test, you can use "rspec folder/folder2/file.rb -e 'text inside the it'"
# or, to execut by the line of 'it' you want: "rspec folder/folder2/file.rb:numberLineIt"
# In "subject(:subject) { described_class.new()}, if i have params, i need to pass the params in the () after 'new'".