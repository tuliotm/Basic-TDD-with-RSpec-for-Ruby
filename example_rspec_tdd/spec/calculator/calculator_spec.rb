require 'calculator'

describe Calculator do

    subject(:calc) { described_class.new() } # or you can change the describe 'ChangeToText'
                                            # and change 'described_class' to the name of the class,
                                            # this is to we dont need use 'subject.sum' method, but call the real name method 'calc'.
    
    context '#sum' do
        it 'with positive numbers' do
            result = calc.sum(5, 7)
            expect(result).to eq(12)
        end

        it 'with negative and positive numbers' do
            result = calc.sum(-5, 7)
            expect(result).to eq(2)
        end

        it 'with negative numbers' do
            result = calc.sum(-5, -7)
            expect(result).to eq(-12)
        end
    end
end