require "student"
require "course"

describe 'Mocks' do # When we use mocks, the sequence changes ( setup > exercise > verify ) to ( setup > verify > exercise )
    it '#bar' do
        # setup
        student = Student.new

        # verify
        expect(student).to receive(:bar) # here we warn the rspec that we want to test if a certain "student" had the call of the method ":bar"

        # exercise
        student.bar
    end
end

# Stubs are used to Setup phase, stubs are used to override states
