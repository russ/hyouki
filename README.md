# Hyouki

A better way to view and design emails.

## Installation

Add this line to your application's Gemfile:

    gem 'hyouki'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hyouki

Mount the engine at a url

    mount Hyouki::Engine => 'hyouki' if Rails.env == 'development'

## Usage

Visit a url with the class of your Mailer and the method you wish to view.

    http://localhost:3000/hyouki/devise::mailer/confirmation_instructions?args=user.first

    http://localhost:3000/hyouki/notifier/match_found?args=Group.first,Group.last

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
