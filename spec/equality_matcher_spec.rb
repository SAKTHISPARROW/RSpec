RSpec.describe 'equality matcher' do
  let(:a) {3.0}
  let(:b) {3}

  describe 'eq matcher' do
    it 'checks for value and ignores type' do
      expect(a).to eq(b)
    end
  end
  describe 'eql matcher' do
    it 'checks for value and type' do
      expect(a).not_to eql(b)
    end
  end
  describe 'equal and be matcher' do
    let(:c) {[1, 2, 3]}
    let(:d) {[1, 2, 3]}
    let(:e) {c}
    it 'checks about object identity' do
      expect(c).to eq(d)
      expect(c).to eql(d)

      expect(c).to equal(e)
      expect(c).to be(e)
      expect(c).not_to equal(d)
    end
  end
end
