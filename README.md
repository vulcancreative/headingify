[![Build Status](https://travis-ci.org/vulcancreative/headingify.svg?branch=v1.2.1)](https://travis-ci.org/vulcancreative/headingify)

# Headingify

A method used to convert a string into a heading. It extends the String class; currently only supporting the English language. Please contribute if you are adept in other languages utilizing articles, conjunctions, and prepositions.

Headingify is based off of grammatical rules set forth in The Chicago Manual of Style. ed. 16 pgf. 8.155.

## Download and Installation

The latest version of Headingify can be installed with RubyGems:

```shell
$ [sudo] gem install headingify
```

Add this line to your application's Gemfile:

```ruby
gem 'headingify', '~> 1.2.0'
```

## Usage

To execute in standalone mode do the following:

```shell
$ headingify "a simple string, including the preposition 'with'."
  # A Simple String, including the Preposition 'with'.
```

To escape words in a string do the following:

```shell
$ headingify "folding of the \%CheY\% protein."
  # Folding of the CheY Protein.
```

Headingify works on the String class, and can also be used in code:

```ruby
s = "a simple string, including the preposition 'with'.".headingify
title = "folding of the \%CheY\% protein."; title.headingify!
```

To check if a String has already been headingified:

```ruby
s.headingify; s.headingified?
  # true
```

This is beneficial when a String may be headingified twice, where the initial String contained escaped content:

```ruby
s = "using the \%PI\% constant to access the Float variable".headingify
  # "Using the PI Constant to Access the Float Variable"

# without safety (note the word "Pi" changes in case)
s.headingify
  # "Using the Pi Constant to Access the Float Variable"

# with safety (nothing is changed, if previously headingified)
s.headingify! unless s.headingified?
  # nil

# ...or more easily
s.headingify_safe # or #headingify_safe! for replacement
  # nil

# ...and we still have our initial String, ta-da!
puts s
  # "Using the PI Constant to Access the Float Variable"
```

## License

Headingify is released under the [MIT license](http://www.opensource.org/licenses/MIT)

## Contributing

Currently looking for help with i18n. If you have an adept knowledge of articles, conjunctions, prepositions, and grammatical syntax in non-English languages, you are encouraged to contribute.
