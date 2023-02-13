require_relative "./Media"
require_relative "./Users"
require_relative "./Playlist"

include Users

library = []

catalogue = [
    {
        name: "Niggas in Paris", 
        duration: "4:50", 
        genre: "Hip-Hop", 
        album: "Watch The Throne", 
        year: 2011, 
        artists: [
            Artist.new("Kanye West", 45, "USA", "Yesus"),
            Artist.new("Jay-z", 53, "USA", "Greatest lyricist")
        ]
    },
    {
        name: "Star Gazing", 
        duration: "4:00", 
        genre: "Hip-Hop", 
        album: "Astro World", 
        year: 2018, 
        artists: [Artist.new("Travis Scott", 30, "USA", "")]
    },
    {
        name: "Middle Child", 
        duration: "3:30", 
        genre: "Hip-Hop", 
        album: "Revenge of the Dreamers III", 
        year: 2019, 
        artists: [Artist.new("J-Cole", 38, "USA", "")]
    },
    {
        name: "Rush", 
        duration: "3:05", 
        genre: "Afro-Pop", 
        album: "19 & Dangerous", 
        year: 2021, 
        artists: [Artist.new("Ayra Starr", 20, "Nigeria", "")]
    },
    {
        name: "Ar Rahman", 
        duration: "14", 
        genre: "Quran", 
        album: "Quran", 
        year: "300BC", 
        artist: [Artist.new("Omar Hisham", 30, "Qatar", "")]
    }
]

for item in catalogue do
    # create song from the Song class
    song = Song.new(item)
    library.push(song)
end

hiphop = Playlist.new("Rap / Hip Hop")
hiphop.add(library[0])
hiphop.add(library[2])
hiphop.remove(1)

