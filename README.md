# Clickatell SMS Library

[![Build Status](https://buildhive.cloudbees.com/job/lookout/job/clickatell/badge/icon)](https://buildhive.cloudbees.com/job/lookout/job/clickatell/)

To use this gem, you will need sign up for an account at www.clickatell.com. Once you are registered and logged into your account centre, you should add an HTTP API connection to your account. This will give you your API_ID.


##  Basic Usage

You will need your API_ID as well as your account username and password.

```ruby
  require 'rubygems'
  require 'clickatell'

  api = Clickatell::API.authenticate('your_api_id', 'your_username', 'your_password')
  api.send_message('447771234567', 'Hello from clickatell')
```

To send a message to multiple recipients, simply pass in an array of numbers.

```ruby
  api.send_message(['447771234567', '447771234568'], 'Hello from clickatell')
```

## HTTP Proxy

You can configure the library to use a HTTP proxy when communicating with Clickatell.

```ruby
  Clickatell::API.proxy_host     = 'my.proxy.com'
  Clickatell::API.proxy_port     = 1234
  Clickatell::API.proxy_username = 'joeschlub'
  Clickatell::API.proxy_password = 'secret'
```

## Command-line SMS Utility

The Clickatell gem also comes with a command-line utility that will allow you to send an SMS directly from the command-line.

You will need to create a YAML configuration file in your home directory, in a file called .clickatell that resembles the following:

```yaml
  # ~/.clickatell
  api_key: your_api_id
  username: your_username
  password: your_password
```

You can then use the sms utility to send a message to a single recipient:

```
  sms 447771234567 'Hello from clickatell'
```

Alternatively, you can specify the username and password as a command line option. Run +sms+ without any arguments for a full list of options.

The sms utility also supports multiple, comma-separated recipients (up to 100).

```
  sms 447771111111,447772222222 "Hello everyone"
```
