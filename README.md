<a href="https://badge.fury.io/rb/magick_filter"><img src="https://badge.fury.io/rb/magick_filter.svg" alt="Gem Version" height="18"></a>

# MagickFilter

A powerful yet very simple to use gem to apply all sorts of cool instagram types of filters to your images or photos in your Ruby on Rails application. With this gem you can use all sorts of filters like Poster, Sepia, Navy, Sketch etc. You can apply frames of different colours to your images or photos as well.

This Gem is an attempt to build Ruby Gem and release it to [rubygems.org](https://rubygems.org). Latest version of this gem allows you to add frame to existing photo. This Gem is in early stage. I'll keep on adding some more filters and features with time. 

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
1. Latest version of this Gem supports adding frames to photo with different colors. You can choose any desired color for frame from [ImageMagick color list](https://www.imagemagick.org/script/color.php)
	```ruby
	MagickFilter::Tool.apply_frame(image_path, frame_color, frame_type)	
	```    

    ```ruby
    a) Option 1st => Basic Frame
    	MagickFilter::Tool.apply_frame(image_path, "snow", "basic")
    b) Option 2nd => Sunken Frame
    	MagickFilter::Tool.apply_frame(image_path, "snow", "sunken")			 
    ```
    ```ruby
    Different color options example - 
	a) MagickFilter::Tool.apply_frame(image_path, "snow", "basic")
	b) MagickFilter::Tool.apply_frame(image_path, "LightPink", "BASIC")
	c) MagickFilter::Tool.apply_frame(image_path, "SlateBlue1", :basic)
    ```

### Default frame type is "basic", frame_type is case insensitive. You can add "basic", "BASIC" or :basic    

2. In present there are 12 filters available in this Gem. Use the given below commands ( from Filter Examples section ) on console to convert photos.
    ```ruby
    MagickFilter::Tool.process(image_path, filter_type)
    ```

    ```ruby
	a) MagickFilter::Tool.process(image_path, "sketch")
	b) MagickFilter::Tool.process(image_path, "BRIGHT")
	c) MagickFilter::Tool.process(image_path, :sepia)
	d) MagickFilter::Tool.process(image_path, "rough")
    ```

### Filter type is case insensitive, you can add "sketch", "SKETCH" or :sketch  

## Frame Examples

### Original Image

<img src="/test_image/test.jpg" alt="Original" width=450 height=298 />


### Snow Color Frame with basic frame

**`MagickFilter::Tool.apply_frame(image_path, "snow", "basic")`**


<img src="/test_image/snow.jpg" alt="snow" width=450 height=298 />


### LightPink Color Frame with sunken frame

**`MagickFilter::Tool.apply_frame(image_path, "LightPink", "sunken")`**


<img src="/test_image/lightpink.jpg" alt="LightPink" width=450 height=298 />


### Orchid1 Color Frame with basic frame

**`MagickFilter::Tool.apply_frame(image_path, "orchid1", "basic")`**


<img src="/test_image/orchid1.jpg" alt="orchid1" width=450 height=298 />


### SlateBlue1 Color Frame with sunken frame

**`MagickFilter::Tool.apply_frame(image_path, "SlateBlue1", "sunken")`**


<img src="/test_image/slateblue1.jpg" alt="SlateBlue1" width=450 height=298 />


### SlateGray4 Color Frame

**`MagickFilter::Tool.apply_frame(image_path, "SlateGray4")`**


<img src="/test_image/slategray4.jpg" alt="SlateGray4" width=450 height=298 />


### DeepSkyBlue Color Frame

**`MagickFilter::Tool.apply_frame(image_path, "DeepSkyBlue")`**


<img src="/test_image/deepskyblue.jpg" alt="DeepSkyBlue" width=450 height=298 />


### SpringGreen4 Color Frame

**`MagickFilter::Tool.apply_frame(image_path, "SpringGreen4")`**


<img src="/test_image/springgreen4.jpg" alt="SpringGreen4" width=450 height=298 />


### Gold2 Color Frame

**`MagickFilter::Tool.apply_frame(image_path, "gold2")`**


<img src="/test_image/gold2.jpg" alt="gold2" width=450 height=298 />


## Filter Examples

### Original Image

<img src="/test_image/test.jpg" alt="Original" width=450 height=298 />


### Sketch Filter

**`MagickFilter::Tool.process(image_path, "sketch")`**


<img src="/test_image/sketch.jpg" alt="Sketch" width=450 height=298 />


### Gold Filter

**`MagickFilter::Tool.process(image_path, "gold")`**


<img src="/test_image/gold.jpg" alt="Gold" width=450 height=298 />


### Poster Filter

**`MagickFilter::Tool.process(image_path, "poster")`**


<img src="/test_image/poster.jpg" alt="Poster" width=450 height=298/>


### Bright Filter

**`MagickFilter::Tool.process(image_path, "bright")`**


<img src="/test_image/bright.jpg" alt="Bright" width=450 height=298 />


### Black & White Filter

**`MagickFilter::Tool.process(image_path, "bw")`**


<img src="/test_image/black&white.jpg" alt="Black & White" width=450 height=298 />


### Peach Filter

**`MagickFilter::Tool.process(image_path, "peach")`**


<img src="/test_image/peach.jpg" alt="peach" width=450 height=298 />


### Navy Filter

**`MagickFilter::Tool.process(image_path, "navy")`**


<img src="/test_image/navy.jpg" alt="navy" width=450 height=298 />


### Firebrick Filter

**`MagickFilter::Tool.process(image_path, "firebrick")`**


<img src="/test_image/firebrick.jpg" alt="firebrick" width=450 height=298 />


### Contrast Filter

**`MagickFilter::Tool.process(image_path, "contrast")`**


<img src="/test_image/contrast.jpg" alt="contrast" width=450 height=298 />


### Poster2 Filter

**`MagickFilter::Tool.process(image_path, "poster2")`**


<img src="/test_image/poster2.jpg" alt="poster2" width=450 height=298 />


### Rough Filter

**`MagickFilter::Tool.process(image_path, "rough")`**


<img src="/test_image/rough.jpg" alt="rough" width=450 height=298 />


### Sepia Filter

**`MagickFilter::Tool.process(image_path, "sepia")`**


<img src="/test_image/sepiya.jpg" alt="sepia" width=450 height=298 />


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/arvind02/magick_filter. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MagickFilter project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/arvind02/magick_filter/blob/master/CODE_OF_CONDUCT.md).
