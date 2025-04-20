class Card
  attr_reader :type, :rank, :suite
  def initialize(type,rank, suite)
    @type = type
    @rank = rank
    @suite = suite
  end
end
RSpec.describe 'Card' do
  # before do 
  #   @card = Card.new("Ace of spade",'Ace','Suite')
  # end
  # def card
  #   Card.new("Ace of spade",'Ace','Suite')
  # end
  let(:card) { Card.new("Ace of spade",'Ace','Suite') }
  it 'has a type' do
    expect(card.type).to eq("Ace of spade")
  end
  it 'has a rank' do 
    expect(card.rank).to eq('Ace')
  end
  it 'has a custom error message' do 
    comparison= 'Aca'
    expect(card.rank).to eq(comparison), "Hey I am expected #{comparison} but i got #{ card.rank } "
  end
  it 'has a suite' do
    expect(card.suite).to eq('Suite')
  end
end
