class HotChocolate
  def drink
    'Bloody sweet'
  end

  def discard
    'plop'
  end

  def purchase(number)
    "Awesome,I purchased #{number}"
  end
end
RSpec.describe HotChocolate do
  it 'confirms that an object can respond to method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard)
    expect(subject).to respond_to(:drink, :discard, :purchase)
  end
end
