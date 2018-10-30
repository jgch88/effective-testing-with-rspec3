Sandwich = Struct.new(:taste, :toppings)
# RSpec.describe block is an example group (keeps related tests together, i.e. a sandwich)
RSpec.describe 'An ideal sandwich' do

  # Using a helper method (plain ol Ruby)
  def sandwich
    # Pattern: use memoization to store the result of an operation
    # and refer to the stored copy from then onwards.
    # Otherwise sandwich.toppings would refer to a new instance of sandwich and fail the test
    #
    # Cons: ||= operator works by seeing if @sandwich is "falsey". It won't work if we're actually
    # trying to store something falsey.
    #
    # e.g.
    # def current_toaster
    #   # This would run @current_toaster ||= nil || Toaster.find_by_serial('HHGG42')
    #   # and not actually memoize anything.
    #   @current_toaster ||= Toaster.find_by_serial('HHGG42')
    # end
    @sandwich ||= Sandwich.new('delicious', [])
  end

  # it block is an example of the sandwich's use, or a test case
  it 'is delicious' do
    # Arrange/Act/Assert pattern
     
    # Arrange: create Sandwich -> setup in the before hook
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

