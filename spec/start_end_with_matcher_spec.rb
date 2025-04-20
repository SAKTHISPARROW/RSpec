RSpec.describe 'start_with and end_with matchers' do
  describe 'caterpillar' do
    it 'should checks substring of beginning and end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('lar')
    end
    it { is_expected.to start_with('cat')}
  end
  describe [:a,:b,:c] do
    it 'should checks substring of beginning and end' do
      expect(subject).to start_with(:a)
      expect(subject).to end_with(:c)
    end
    it { is_expected.to start_with(:a)}
  end
end
