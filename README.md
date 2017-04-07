# SundryEGA [![Build Status](https://travis-ci.org/dnguyensr/SundryEGA.svg?branch=master)](https://travis-ci.org/dnguyensr/SundryEGA) [![Coverage Status](https://coveralls.io/repos/github/dnguyensr/SundryEGA/badge.svg?branch=master)](https://coveralls.io/github/dnguyensr/SundryEGA?branch=master)

## Configuration

### Rails Environment

This project uses Ruby 2.4.0.

**ENV:**
Required ENV variables

| ENV Variable | Value |
|----|----|
|SECRET_KEY_BASE| Devise required key base (generate with rails secret) |

## Development

This branch has the [react-rails gem](https://github.com/reactjs/react-rails) installed.

### Styling
Bootstrap 3 is included in the view template as CDN scripts and jQuery is included with the jquery-rails gem.

### Testing
RSpec, Rails::Controller::Testing, Shoulda Matchers, and FactoryGirl gems are included and available to use in development and testing environments.

To run all tests: `rspec` or `bundle exec rspec`
**Note**: prepending `bundle exec` may be required depending on your local settings

To run specific tests:
* Models: `rspec spec/models`
* Controllers: `rspec spec/controllers`
* Specific files: `rspec spec/controllers/pages_controller_spec.rb`
