RSpec.shared_examples 'common examples' do
  it "return the number of items" do
    expect(subject.length).to eq(3)
  end
end
RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples 'common examples'
end
RSpec.describe String do
  subject { "abc" }
  include_examples 'common examples'
end
RSpec.describe Hash do
  subject { {a: 1, b: 2, c: 3} }
  include_examples 'common examples'
end

class SauseLink 
  def length
    3
  end
end

RSpec.describe SauseLink do
  subject { described_class.new }
  include_examples 'common examples'
end
