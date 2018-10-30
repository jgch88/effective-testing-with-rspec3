class Coffee
  def ingredients
    @ingredients ||= []
  end

  def add(ingredient)
    ingredients << ingredient
  end

  def price
    1.00 + ingredients.size * 0.25
  end
end

RSpec.configure do |config|
  config.filter_run_when_matching(focus: true)
  config.example_status_persistence_file_path = 
    'spec/examples.txt'
end

# rspec --format documentation runs the tests with a summary outline
RSpec.describe 'A cup of coffee' do
  let(:coffee) { Coffee.new }

  it 'costs $1' do
    expect(coffee.price).to eq(1.00)
  end

  # context is an alias for describe
  # but we tend to use the phrase 'context'
  # when we modify an object that we're testing
  context 'with milk' do
    before { coffee.add :milk }

    it 'costs $1.25' do
      expect(coffee.price).to eq(1.25)
    end
  end
end
