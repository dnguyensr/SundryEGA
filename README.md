# SundryEGA [![Build Status](https://travis-ci.org/dnguyensr/SundryEGA.svg?branch=master)](https://travis-ci.org/dnguyensr/SundryEGA) [![Coverage Status](https://coveralls.io/repos/github/dnguyensr/SundryEGA/badge.svg?branch=master)](https://coveralls.io/github/dnguyensr/SundryEGA?branch=master)

SundryEGA is a multifaceted community site used for prototyping various ideas. The core site will consist of a business facing SundryEGA, a travel site under Sundry Travels, a photography community under Studio Sundry, and a gaming community under Gaming. Sundry Travels will be spun off into its own project once it is deemed sufficiently developed to serve as a standalone site.

## Configuration

### Text Editor

An EditorConfig plug-in is required for most text editors to conform to coding styles defined in the editorconfig file.

### Rails Environment

This project uses Ruby 2.4.0. The rails/webpacker gem will be included in a future feature branch to install React and to prepare for migrating to Rails 5.1. Refer to the JavaScript section for system configuration. Foreman still also be required to run both the rails server and Webpack.

**ENV:**
Required ENV variables

| ENV Variable | Value |
|----|----|
|SECRET_KEY_BASE| Devise required key base (generate with rails secret) |

### JavaScript

A feature branch will add React to the project. Yarn will be needed install dependencies and NPM may be required to install certain dependencies globally.


### Styling
Bootstrap 3 is included in the view template as CDN scripts and jQuery is included with the jquery-rails gem.

## Development


### Testing
RSpec, Rails::Controller::Testing, Shoulda Matchers, and FactoryGirl gems are included and available to use in development and testing environments.

To run all tests: `rspec` or `bundle exec rspec`
**Note**: prepending `bundle exec` may be required depending on your local settings

To run specific tests:
* Models: `rspec spec/models`
* Controllers: `rspec spec/controllers`
* Specific files: `rspec spec/controllers/pages_controller_spec.rb`
