RSpec.describe 'not to method' do
  it 'checks the two value are not equal' do
    expect(5).not_to eq(6)
    expect('Hello').not_to eq('hello')
  end
end
