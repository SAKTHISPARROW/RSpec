RSpec.describe Hash do
  subject(:bob) do
    {a:1, b:2}
  end
  it "has 2 keys" do
    expect(subject.length).to eq(2)
  end
  describe "Nested example" do
    it "has two keys that read from parent subject" do
      expect(subject.length).to eq(2)
    end
  end
end
