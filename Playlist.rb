class Playlist
    attr_accessor :name, :description, :media

    def initialize(name, description = "Nice playlist")
        puts "Creating playlist #{name} ..."

        @media = []
        @name = name
        @description = description
    end

    def shuffle()
        media.shuffle()
    end

    def add(item)
        media.push(item)
        puts "1 item added, total #{@media.length}"
    end

    def remove(index)
        if (index >= media.length) 
            puts "Sorry, that song is not in the playlist"
            return
        end

        media.delete_at(index)
        puts "1 item removed, total #{@media.length}"
    end
end