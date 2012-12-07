module Jekyll
	class ScssConverter < Converter
		def setup
			return if @setup
			require 'sass'
			@setup = true
		rescue
			STDERR.puts 'do `gem install sass`'
			raise FatalException.new('Missing Dependency: sass')
		end

		def matches ext
			ext =~ /scss/i
		end

		def output_ext ext
			".css"
		end

		def convert content
			setup
			engine = Sass::Engine.new(content, :syntax => :scss)
			engine.render
		end
	end
end

