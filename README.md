# SundryEGA

## Configuration

### Rails Environment

This project uses Ruby 2.4.0.

**ENV:** Required ENV variables  

| ENV Variable | Value |
|----|----|
|SECRET_KEY_BASE| Devise required key base (generate with rails secret) |

## Development

### Testing
To run all tests: `rspec` or `bundle exec rspec`  
**Note**: prepending `bundle exec` may be required depending on your local settings

To run specific tests:
* Models: `rspec spec/models`
* Controllers: `rspec spec/controllers`
* Specific files: `rspec spec/controllers/pages_controller_spec.rb`
