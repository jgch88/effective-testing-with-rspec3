# RSpec.describe block is an example group (keeps related tests together, i.e. a sandwich)
RSpec.describe 'An idea sandwich' do
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
end

