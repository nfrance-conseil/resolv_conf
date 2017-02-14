# resolve_conf

#### Table of Contents

1. [Description](#description)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

Start with a one- or two-sentence summary of what the module does and/or what
problem it solves. This is your 30-second elevator pitch for your module.
Consider including OS/Puppet version it works with.

You can give more descriptive information in a second paragraph. This paragraph
should answer the questions: "What does this module *do*?" and "Why would I use
it?" If your module has a range of functionality (installation, configuration,
management, etc.), this is the time to mention it.

## Setup

### What resolve_conf affects
* Manages the `/etc/resolv.conf` file

## Usage

### Basic

```puppet
include resolv_conf
```

Use Google DNS

### Customised

```puppet
class { "resolv_conf":
  search      => "megacorp.com",
  nameservers => ["10.0.0.1", "10.0.4.4"],
}
```

Set a search domain and use specific nameservers.

## Reference

### Classes
* `resolv_conf` - Manage the `/etc/resolv.conf` file


## Limitations

* Assumes that cron itself is already installed
* Does not attempt to manage the cron services
* Not supported by Puppet, Inc.

## Development

PRs accepted :)

## Testing
This module supports testing using [PDQTest](https://github.com/GeoffWilliams/pdqtest).


Test can be executed with:

```
bundle install
bundle exec pdqtest all
```


See `.travis.yml` for a working CI example
