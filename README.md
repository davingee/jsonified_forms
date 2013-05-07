# JsonifiedForms

JsonifiedForms is a implementation of Jsonified forms! A test; if you will to see the pluralize(possibilities.count, "possibility")
<br>

Currently is designed for twitter bootstrap

## Installation

Add this line to your application's Gemfile:

    gem 'jsonified_forms'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jsonified_forms

## Usage

1. place render_form("users_form", f) in your form<br>

2. place users_form.json in  app/forms_json/ directory<br>

3. place the control_group partial in the app/views/shared/ directory<br>

4. declare everything in the json file <br>
Sexxy? Yes!

## ToDo
1. make divs and labels bind to data attributes ex: data-jsonified="label" attributes so that it is completely dynamic. Just adding a label hash to the json will add the specified attributes. <br>
2. Select boxes<br>
3. allow options to be passed for example if I dont want a field to show up if a user is nil but can not access user from f; be able to pass in user


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
