# cc_licenseable

This gem provides a simple way of associating ActiveRecord model instances with Creative Commons licenses.  Assets, translations and even form helpers are either already available or will be in the future.

## Installation

Add this line to your application's Gemfile:

    gem 'cc_licenseable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cc_licenseable
    
Finally, copy over and run the migrations:

```ruby
rake cc_licenseable:install:migrations
rake db:migrate
```

## Usage

Before you can begin using the gem, create a migration to add the `cc_license_id` column to your model's table.
Then, add the call to `cc_licenseable` to your model:

```ruby
class Cartoon < ActiveRecord::Base
  cc_licenseable
end
```
Once included, each Cartoon instance can be associated with a single license, allowing you to display information that helps users properly identify and follow the individual terms of the associated license.

The following examples use our simple `Cartoon` model:

```ruby
by = CcLicenseable::CcLicense.find_by_abbreviation('BY')
cartoon = Cartoon.new(cc_license_id: by.id)
license = cartoon.cc_license
```

The following comes out of the box:

### I18n-backed attributes:
Each license comes with a translate(able) title and description based on the current locale:

```ruby
license.title
=> "Attribution"
license.desc
=> "This license lets others distribute, remix, tweak, and build upon your work…"
```

At the moment, only english strings are included. The plan is to incorporate all languages currently available on the [Creative Commons](http://www.creativecommons.org/licenses) website.

### Links to License Summary And Deed:
The creative commons licenses are described in depth at http://www.creativecommons.org/licenses.  Use them to link to the online summaries and deeds:

```ruby
license.summary_link
=> "http://creativecommons.org/licenses/by/3.0/deed.en"
license.legal_link
=> "http://creativecommons.org/licenses/by/3.0/legalcode"
```

### Assets
Logo(s), icons, buttons are all packaged, and can be easily used in conjunction with the asset pipeline and the `image_tag` helper:

```ruby
license.small_btn
=> "cc_licenseable/buttons/small/by-nc-sa.svg"
license.med_btn
=> "cc_licenseable/buttons/med/by-nc-sa.svg"
```

### Helpers
To include a dropdown of Creative Commons licenses when creating/updating cartoons, you can use a custom form helper like so:

```ruby
<%= form_for @cartoon do |f| %>
	<%= f.text_field :name %>
	<%= f.cc_license_selector %>
<% end %>
```


## TODO:
Full support of all I18n material from http://creativecommons.org/licenses.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License and Trademark Information
Please consult the full Creative Commons [policy](http://creativecommons.org/policies) concerning use of their license badges and corporate trademark(s) before use.

The engine code itself is licensed under the terms and conditions of the MIT License.
