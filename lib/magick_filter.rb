require "magick_filter/version"
require "filter"

module MagickFilter
  class Tool
    def self.process(path='', effect='')
      parameter_missing?(path, effect, "effect")
      parse_if_image(path)
      out_file = build_out_file_name(path)
      out_file = cmd_convert(path, out_file, effect)
    end

    def self.apply_frame(path='', color_type='', frame_style=nil)
      parameter_missing?(path, color_type, "frame")
      parse_if_image(path)
      out_file = build_out_file_name(path)
      out_file = cmd_convert_frame(path, out_file, color_type, frame_style)
    end

    def self.root
      File.expand_path('../..',__FILE__)
    end

    private

    def self.parse_if_image(path)
      file_ext = IO.popen(["file", "--brief", "--mime-type", path], &:read).chomp.split("/").last
      if ["jpeg", "png", "jpg", "JPG", "PNG"].include?(file_ext)
        return true
      else
        raise "**********Provided file isn't a valid Image**********" 
      end
    end

    def self.parameter_missing?(path, effect, called_for)
    	err = ''
  		if path.blank? && effect.blank?
      	err = "***************Image Path and Effect or Frame Color Parameter Missing***********"
    	elsif path.blank?
      	err = "***************Image Path Missing***********"
    	elsif effect.blank?
      	err = "***************Effect or Frame Color Parameter Missing***********"
    	end	
      if err.blank? 
      	return false 
 			else
 				raise "#{err}"
 			end	
    end

    def self.cmd(bin, opts)
      #puts "executing: #{c}"
      #system("sudo " << c)  	
      "#{bin} #{opts}".tap do |c|
        system(c)      
      end
    end

    def self.cmd_convert(in_file=nil, out_file=nil, opts)
      #in_file ||= current_source_file
      #out_file ||= current_target_file
      cmd(:convert, "#{in_file} #{get_effect_options(opts)} #{out_file}")
      print "***Your Image is available here to copy at desired location*** - #{out_file}"
      return out_file
    end

    def self.cmd_convert_frame(in_file=nil, out_file=nil, opt1, opt2)
      cmd(:convert, "#{in_file} #{get_frame_type(opt1, opt2)} #{out_file}")
      print "***Your Image is available here to copy at desired location*** - #{out_file}"
      return out_file
    end

    def self.build_out_file_name(path)
      return "#{Filter::WRITE_PATH}/#{next_uuid}_output.#{get_file_extension(path)}"
    end

    def self.get_file_extension(path)
      File.extname(path).strip.downcase[1..-1]
    end

    def self.next_uuid
      rand(36**16).to_s(36)
    end

    def self.get_effect_options(effect)
      Filter::EFFECT_MAP[effect.downcase.to_sym]
    end

    def self.get_frame_type(color_type, frame_style)
    	frame_style ||= "basic"
    	frame_type = Filter::FRAME_TYPE[frame_style.downcase.to_sym]
      frame_type = frame_type.gsub("Tomato", color_type)
    end
  end
end