RSpec.describe 'a random double' do
    it 'only allows defined methods to be invoked' do
        stuntman = double('Mr. Danger', fall_of_ladder: 'ouch', light_on_fire: true)

        expect(stuntman.fall_of_ladder).to eq('ouch')
        expect(stuntman.light_on_fire).to eq(true)

        # By using below syntax,we can generate dynamic sting and dynamic symbols
        allow(stuntman).to receive(:fall_of_ladder).and_return('Ouch')
        expect(stuntman.fall_of_ladder).to eq('Ouch')
    end
end