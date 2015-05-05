## zip-code-info

This gem returns the state and city of the Sectional Center Facility for a given zip code. It does not use an external service.

The zip code data has been taken from [http://en.wikipedia.org/wiki/ZIP_code_prefixes](http://en.wikipedia.org/wiki/ZIP_code_prefixes)

### Usage

In your Gemfile

	gem "zip-code-info"

The code runs out of a Singleton class. Right now you can call these two methods.

```ruby
  ZipCodeInfo.instance.state_for '99163'
  #=> WA
```

```ruby
  ZipCodeInfo.instance.scf_city_for '99163'
  #=> Spokane
```

### Limitations

* The city returned is the city where the USPS Sectional Center Facility (SCF) is located.
* Sometimes the state that a zip code is bound to for USPS is different from the actual state the zip code is in. There are plans to provide both states.

