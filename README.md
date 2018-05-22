<a href="https://badge.fury.io/rb/magick_filter"><img src="https://badge.fury.io/rb/magick_filter.svg" alt="Gem Version" height="18"></a>

# MagickFilter

This Gem is an attempt to build Ruby Gem and release it to [rubygems.org](https://rubygems.org). If you want to convert your photo with some cool filters, you are at right place. This Gem is in early stage. I'll keep on adding some more filters and features with time. 

This Gem is based on [Image Magick](http://www.imagemagick.org/Usage/), So please make sure that you have image magick installed on your system. 



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'magick_filter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install magick_filter

## Usage

In present there are five filters available in this Gem. Use the given below commands on console to convert photos.


### Original Image

<img src="/test_image/test.jpg" alt="Original" width=450 height=298 />


### For Sketch Filter

**`MagickFilter::Tool.process(image_path, "sketch")`**


<img src="/test_image/sketch.jpg" alt="Sketch" width=450 height=298 />


### For Gold Filter

**`MagickFilter::Tool.process(image_path, "gold")`**


<img src="/test_image/gold.jpg" alt="Gold" width=450 height=298 />


### For Poster Filter

**`MagickFilter::Tool.process(image_path, "poster")`**


<img src="/test_image/poster.jpg" alt="Poster" width=450 height=298/>


### For Bright Filter

**`MagickFilter::Tool.process(image_path, "bright")`**


<img src="/test_image/bright.jpg" alt="Bright" width=450 height=298 />


### For Black & White Filter

**`MagickFilter::Tool.process(image_path, "bw")`**


<img src="/test_image/black&white.jpg" alt="Black & White" width=450 height=298 />


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/arvind02/magick_filter. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MagickFilter project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/arvind02/magick_filter/blob/master/CODE_OF_CONDUCT.md).
