# sprout-android cookbook

[![Build Status](https://travis-ci.org/pivotal-sprout/sprout-android.png?branch=master)](https://travis-ci.org/pivotal-sprout/sprout-android)

Manage tools for Android development on OS X

## Usage

### Prerequisites
  
- [system ruby](.ruby-version)
- [bundler](http://bundler.io/)

### Quickstart

```
bundle
bundle exec soloist
```

## Cookbook Usage

### Attributes

*NOTE:* All preferences are namespaced under `sprout => android` they include:

* `path` &mdash; The path to the file that android touches; default is `~/android`

### Recipes

1. `sprout-android`
1. `sprout-android::sdk`

## Contributing

### Before committing

```
bundle
bundle exec rake
```

The default rake task includes rubocop, foodcritic, unit specs

### [Rubocop](https://github.com/bbatsov/rubocop)

```
bundle
bundle exec rake rubocop
```

### [FoodCritic](http://acrmp.github.io/foodcritic/)

```
bundle
bundle exec rake foodcritic
```

### Unit specs

Unit specs use [ServerSpec](http://serverspec.org/)

```
bundle
bundle exec rake spec:unit
```

### Integration specs

Integrations specs will run the default recipe on the host system (destructive) and make assertions on the system after
install.

*Note:* It has a precondition that android is _not_ already installed on the system.

```
bundle
bundle exec rake spec:integration
```
