describe 'Test Double' do
    it '--' do
        user = double('User')
        allow(user).to receive_messages(name: 'Tulio', password: 'secret')
        # or
        # allow(user).to receive(:name).and_return('Tulio')
        # allow(user).to receive(:password).and_return('secret')
        puts user.name
        puts user.password
    end
end