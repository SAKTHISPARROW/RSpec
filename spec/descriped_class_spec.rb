class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
RSpec.describe King do
  subject { King.new( 'Boris' )}
  let(:louis) { King.new( 'Louis' )}
  it "represents a great person" do
    expect(subject.name).to eq("Boris")
    expect(louis.name).to eq('Louis')
  end
end
