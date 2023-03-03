require 'string_not_null'

describe String do
    describe StringNotNull do # The more intern class is who goes to reference the 'subject'
        it "It's not null" do
            expect(subject).to eq("I'm not null")
        end
    end
end