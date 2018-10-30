Sandwich = Struct.new(:taste, :toppings)
# RSpec.describe block is an example group (keeps related tests together, i.e. a sandwich)
RSpec.describe 'An ideal sandwich' do

  # Using RSpec's let construct
  # let binds a name (sandwich) to the result of a computation (the block)
  # This block runs the FIRST time any test case calls sandwich
  let(:sandwich) { Sandwich.new('delicious', []) }

  # it block is an example of the sandwich's use, or a test case
  it 'is delicious' do
    # Arrange/Act/Assert pattern
     
    # Arrange: create Sandwich -> setup in the let construct
    # Act: ask for its taste
    taste = sandwich.taste
    # Assert: verify that result is delicious
    expect(taste).to eq('delicious')
  end

  it 'lets me add toppings' do

    sandwich.toppings << 'cheese'
    toppings = sandwich.toppings
    
    expect(toppings).not_to be_empty
  end
end

