Sandwich = Struct.new(:taste, :toppings)
# RSpec.describe block is an example group (keeps related tests together, i.e. a sandwich)
RSpec.describe 'An ideal sandwich' do
  # A hook runs automatically at specific times - a before hook runs before each example.
  # 
  # Pros: Hooks are great for running common setup code that has real-world SIDE EFFECTS. e.g. setup test databases.
  # Cons: Having to refactor all sandwich to @sandwich. Misspelling @sandwich - Ruby silently returns nil and a confusing error.
  # Inefficient and expensive instantiation of all the instance variables

  before { @sandwich = Sandwich.new('delicious', []) } # So that we don't have to copy the sandwich setup code
  # Individual sandwich instances are not shared across test cases

  # it block is an example of the sandwich's use, or a test case
  it 'is delicious' do
    # Arrange/Act/Assert pattern
    # Arrange: create Sandwich -> setup in the before hook
    # Act: ask for its taste
    taste = @sandwich.taste

    # Assert: verify that result is delicious
    expect(taste).to eq('delicious')
  end

  it 'lets me add toppings' do
    @sandwich.toppings << 'cheese'
    toppings = @sandwich.toppings
    
    expect(toppings).not_to be_empty
  end
end

