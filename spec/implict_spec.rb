RSpec.describe Hash do
  it "should start off empty" do
    # let(:my_hash) {{}}
    expect(subject.length).to eq(0)
    subject[:somr_key]="Hey there"
    expect(subject.length).to eq(1)
  end
  it "is isolated between examples" do
    expect(subject.length).to eq(0)
  end
end
