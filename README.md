# SignedForm for SimpleForm

This gem provides an adapter for SimpleForm so that you may sign those forms as well.

Please see the [SignedForm GitHub repo](https://github.com/erichmenge/signed_form) for more information on
SignedForm.

## Installation

Add this line to your application's Gemfile:

    gem 'signed_form-simple_form', require: 'signed_form/simple_form'

And then execute:

    $ bundle

## Usage

``` erb
<%= signed_simple_form_for(@user) do |f| %>
  <%= f.input :name %>
<% end %>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
