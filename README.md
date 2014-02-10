# ScopedStorage [![Code Climate](https://codeclimate.com/github/slowjack2k/scoped_storage.png)](https://codeclimate.com/github/slowjack2k/scoped_storage) [![Build Status](https://travis-ci.org/slowjack2k/scoped_storage.png?branch=master)](https://travis-ci.org/slowjack2k/scoped_storage) [![Coverage Status](https://coveralls.io/repos/slowjack2k/scoped_storage/badge.png?branch=master)](https://coveralls.io/r/slowjack2k/scoped_storage?branch=master) [![Gem Version](https://badge.fury.io/rb/scoped_storage.png)](http://badge.fury.io/rb/scoped_storage)

With scoped storage you can save values in a thread local or thread global storage with
a hash like accessor. Different scopes can be distinguished with a scope name.

## Installation

Add this line to your application's Gemfile:

    gem 'scoped_storage'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install scoped_storage

## Usage

```ruby

scope_storage = ScopedStorage::ThreadGlobalStorage # or ScopedStorage::ThreadLocalStorage
scope = ScopedStorage::Scope.new('policy_infos', scope_storage)

scope['my_key'] = 'my_value'
scope.fetch('my_key'){...}

scope.clear!


```

## Contributing

1. Fork it ( http://github.com/slowjack2k/scoped_storage/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
