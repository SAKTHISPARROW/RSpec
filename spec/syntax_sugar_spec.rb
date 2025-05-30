RSpec.describe 'Shorthand syntax' do
  subject { 5 }
  context "with classic syntax" do

    it "should equal to 5" do
      expect(subject).to eq(5)
    end
  end
  context "With one linear syntax" do
    it { is_expected.to eq(5) }
  end
end
