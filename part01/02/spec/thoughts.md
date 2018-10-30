# How to keep specs running quickly
# Identify the bottlenecks using rspec --profile n (where n number of slowest test cases to show)
# Run only tests you need by passing a spec file or a directory or a few of each rspec spec/unit spec/foo_spec.rb
# Run specific test cases rspec -e coffee -fd (RSpec searches the Full Description of each test case. CASE SENSITIVE)
# Run specific failures (via the line numbers) rspec ./spec/coffee_spec.rb:29
# Run only failures needs configuration. rspec --only-failures
# Need to configure a textfile to store config.example_status_persistence_file_path

# Focusing on specific test cases
# fcontext, fit, fdescribe
# config.filter_run_when_matching(focus: true)

# Pending test cases
# Just leave it 'is light in colour' incomplete.
# Can even write an expect abstraction by putting a pending 'Color not implemented yet'
# above the expect(coffee.color).to be(:light)
# "Failures listed are expected errors"
# It will also remind you to remove the 'pending' after features are implemented
# via a No Error was raised message.
