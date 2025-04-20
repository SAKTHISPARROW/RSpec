RSpec.shared_context 'common' do
  before do
    @food=[]
  end
  def some_method
    5
  end
  let(:some_variable) { [1, 2, 3]}
end

RSpec.describe 'First example' do
  include_context 'common'
  it 'can use outside instance variablr' do
    expect(@food.length).to eq(0)
    @food<<'Parota'
    expect(@food.length).to eq(1)
  end
  it 'can use outside method' do
    expect(some_method).to eq(5)
  end
end
