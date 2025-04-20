RSpec.describe 'start_with and end_with matchers' do
  describe 'caterpillar' do
    it 'should checks substring of beginning and end' do
      expect(subject).to include('cat')
      expect(subject).to include('lar')
    end
    it { is_expected.to include('cat')}
  end
  describe [:a,:b,:c] do
    it 'should checks substring of beginning and end' do
      expect(subject).to include(:a)
      expect(subject).to include(:c)
    end
    it { is_expected.to include(:a)}
  end
end
