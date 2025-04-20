class King
  attr_reader :name, :age

  def initialize(name,age)
    @name = name
    @age =  age
  end
end
RSpec.describe 'having attribute matcher' do
  describe King.new('Sakthi',18) do
    it 'should checks for object and proper values' do
      expect(subject).to have_attributes(name: 'Sakthi')
      expect(subject).to have_attributes(name: 'Sakthi',age: 18)
    end
    it { is_expected.to have_attributes(name: 'Sakthi',age: 18) }
  end
end
