require "magick_filter/version"
require "filter"
 
module MagickFilter
	class Tool
		def self.process(path='', effect='')
			parameter_missing?(path, effect)
			parse_if_image(path)
			out_file = build_out_file_name(path)
			out_file = cmd_convert(path, out_file, effect)
		end

		def self.apply_frame(path='', color_type='')
			parameter_missing?(path, color_type)
			parse_if_image(path)
			out_file = build_out_file_name(path)
			out_file = cmd_convert_frame(path, out_file, color_type)
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

		def self.parameter_missing?(path, effect)
			if path.blank? && effect.blank?
				err = "***************Image Path and Effect Parameter Missing***********"
			elsif path.blank?
				err = "***************Image Path Missing***********"
			elsif effect.blank?
				err = "***************Effect Parameter Missing***********"
			end	
			return false
			raise err
		end

		def self.cmd(bin, opts)
			"#{bin} #{opts}".tap do |c|
				#puts "executing: #{c}"
				#system("sudo " << c)  
				system(c)      
			end
		end

		def self.cmd_convert(in_file=nil, out_file=nil, opts)
			#in_file ||= current_source_file
			#out_file ||= current_target_file
			cmd(:convert, "#{in_file} #{get_effect_options(opts)} #{out_file}")
			print "***Your file is available here to copy in desired location*** - #{out_file}"
			return out_file
		end

		def self.cmd_convert_frame(in_file=nil, out_file=nil, opts)
			#in_file ||= current_source_file
			#out_file ||= current_target_file
			cmd(:convert, "#{in_file} #{get_frame_type(opts)} #{out_file}")
			print "***Your file is available here to copy in desired location*** - #{out_file}"
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

		def self.get_frame_type(color_type)
			Filter::FRAME_TYPE.gsub("Tomato", color_type)
		end
	end
end