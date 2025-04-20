RSpec.describe 'Contain Matcher' do
  subject { [1,2,3] }
  describe 'long form syntax' do
    it 'should checks the presence of all elements' do
      expect(subject).to contain_exactly(1,2,3)
      expect(subject).to contain_exactly(3,2,1)
      expect(subject).to contain_exactly(2,1,3)
    end
  end
  it { is_expected.to contain_exactly(1,2,3)}
  it { is_expected.to contain_exactly(2,3,1)}
end
