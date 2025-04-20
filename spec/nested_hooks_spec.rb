RSpec.describe "before and after hooks" do
  before(:context) do
    puts "Outer Before context"
  end
  before(:example) do
    puts "Outer before example"
  end
  it "does basic math" do
    expect(5*4).to eq(20)
  end
  context "with condition A" do
    before(:context) do
      puts "Inner Before context"
    end
    before(:example) do
      puts "Inner before example"
    end
    it "is just a another random example" do
      expect(5-4).to eq(1)
    end
  end
end
