# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge by myself.


# Pseudocode
# create two classes, song and playlist
# define the variables/methods for each class
# verify tests pass

# Initial Solution
class Playlist

	def initialize(*song)
		@list = []
		@song = song
		@song.each { |song| @list << song}
		#p @list.length
	end

	def add(*song)
		@song_to_add = song
		@song_to_add.each { |song| @list << song}
		#p @list.length 
	end

	def remove(song)
		@song_to_remove = song
		@list.delete_if { |to_delete| @song_to_remove == to_delete }
	end

	def num_of_tracks
		@list.length
	end

	def includes?(song)
		@list.include?(song)
	end

	def play_all
		p "Playing All Songs in Playlist"
	end

end


class Song
	attr_reader :title, :artist

	def initialize (title, artist)
		@title = title
		@artist = artist
	end

	def play
		p "Now Playing: #{@title} by #{@artist}"
	end
end



# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
#my_playlist.display

# Reflection 
#I thought this was a fairly simple way to get us working and interacting with multiple classes. 