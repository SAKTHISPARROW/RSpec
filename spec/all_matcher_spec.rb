RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do
    # [3,5,7].each do |val|
    #   expect(val).to be_odd
    # end
    expect([3,5,7]).to all(be_odd)
    expect([2,4,6]).to all(be_even)
    expect([3,5,7]).to all(be <10)
  end
  describe [2,4,6] do
    it { is_expected.to all(be_even)}
  end
end  
