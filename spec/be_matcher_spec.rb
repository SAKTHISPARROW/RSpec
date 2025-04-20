RSpec.describe 'be matcher' do
  it 'can test for trutiness' do
    expect(true).to be_truthy
    expect([]).to be_truthy
    expect({}).to be_truthy
    expect(0).to be_truthy
    expect("").to be_truthy
    expect(:sym).to be_truthy
  end
  it 'can test for falsy' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end
  it 'can test for nil' do
    my_h = { a: 1}
    expect( my_h[:b]).to be_nil
    expect(nil).to be_nil
  end
end
