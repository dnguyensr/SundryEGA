# SundryEGA [![Build Status](https://travis-ci.org/dnguyensr/SundryEGA.svg?branch=master)](https://travis-ci.org/dnguyensr/SundryEGA) [![Coverage Status](https://coveralls.io/repos/github/dnguyensr/SundryEGA/badge.svg?branch=master)](https://coveralls.io/github/dnguyensr/SundryEGA?branch=master)

SundryEGA is a multifaceted community site used for prototyping various ideas. The core site will consist of a business facing SundryEGA, a travel site under Sundry Travels, a photography community under Studio Sundry, and a gaming community under Gaming. Sundry Travels will be spun off into its own project once it is deemed sufficiently developed to serve as a standalone site.


## Environment

### Ruby/Rails Version

* Ruby 2.4.0
* Rails 5.1.0

### System Dependencies

Rails 5.1.0 utilizes Webpacker which requires:

* Ruby 2.2+
* Node.js 6.4.0+
* Yarn

Foreman is required to run the rails server and webpack-dev-server concurrently

* Foreman

### App Dependencies

Devise: The Devise gem is used to handle user authentication.

### Configuration

### Text Editor

An EditorConfig plug-in is required for most text editors to conform to coding styles defined in the editorconfig file. EditorConfig plug-ins for some editors:  [Atom](https://atom.io/packages/editorconfig), [Sublime](https://github.com/sindresorhus/editorconfig-sublime), [VS Code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)

### Rails Environment

**ENV:**
Required ENV variables

| ENV Variable | Value |
|----|----|
|SECRET_KEY_BASE| Devise required key base (generate with rails secret) |


### Styling
Bootstrap 4 is included in the view template as CDN scripts and jQuery is included with the jquery-rails gem.

## Development

To run the rails server and webpack-dev-server concurrently:
Run `foreman start`

### Testing
RSpec, Rails::Controller::Testing, Shoulda Matchers, and FactoryGirl, Capybara, and Selenium gems are included and available to use in development and testing environments.

To run all tests: `rspec` or `bundle exec rspec`
**Note**: prepending `bundle exec` may be required depending on your local settings

To run specific tests:
* Models: `rspec spec/models`
* Controllers: `rspec spec/controllers`
* Specific files: `rspec spec/controllers/pages_controller_spec.rb`
