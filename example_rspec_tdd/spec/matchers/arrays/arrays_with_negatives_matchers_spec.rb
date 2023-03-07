RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1, 2, 3]), "Array" do
    it '#include' do # 'include' only works for separated elements of the array
        expect(subject).to include(2)
        expect(subject).to include(2, 1)
    end

    it { expect(subject).to exclude(4) }

    it '#match_array' do
        expect(subject).to match_array([2, 3, 1]) # its for exactly elements of array
    end

    it '#contain_exactly' do
        expect(subject).to contain_exactly(1, 2, 3) # its for exactly elements of array
    end
end