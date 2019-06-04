class Song

	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(file)

		file_data = file.split(" - ")
		song = Song.new(file_data[1])
		song.artist = Artist.find_or_create_by_name(file_data[0])
		song.artist.add_song(song)
		song.artist.save
		song
	end

end