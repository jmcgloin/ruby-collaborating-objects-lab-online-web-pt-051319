require 'pry'

class MP3Importer

	attr_accessor :path

	def  initialize(path)
		@path = path
	end

	def files
		Dir["#{@path}/*"].map do |file|
			file.slice(21..-1)
		end
	end

	def import
		files.map do |file|
			Song.new_by_filename(file)
		end
	end

end