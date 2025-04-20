RSpec.describe 'comparison matcher' do
  it 'allows for comparing ruby builtin operator' do
    expect(5).to be > 3
    expect(5).to be < 10
    expect(3).to be >= 3
    expect(3).to be <= 30
  end
  
  describe 100 do
    it { is_expected.to be >= 90}
    it { is_expected.to be >= 100}
    it { is_expected.to be < 500}
    it { is_expected.to be <= 100}
    it { is_expected.not_to be >=105}
  end
end  
