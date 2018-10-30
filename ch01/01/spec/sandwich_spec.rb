Sandwich = Struct.new(:taste, :toppings)
# RSpec.describe block is an example group (keeps related tests together, i.e. a sandwich)
RSpec.describe 'An ideal sandwich' do
  # it block is an example of the sandwich's use, or a test case
  it 'is delicious' do
    # Arrange/Act/Assert pattern
    # Arrange: create Sandwich
    sandwich = Sandwich.new('delicious', [])

    # Act: ask for its taste
    taste = sandwich.taste

    # Assert: verify that result is delicious
    expect(taste).to eq('delicious')
  end

  it 'lets me add toppings' do
    sandwich = Sandwich.new('delicious', [])

    sandwich.toppings << 'cheese'
    toppings = sandwich.toppings
    
    expect(toppings).not_to be_empty
  end
end

