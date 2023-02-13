class Media
    attr_accessor :name, :duration, :genre

    def like()
    end
end

# #1 - Our hash does not have to be in any particular order
# #2 - It can accommodate any size of initialization variables
# #3 - Less code, that's more maitainable and concise
class Song < Media
    def initialize(attributes)
        attributes.each do |key, value|
            self.class.attr_accessor(key)
            self.send("#{key}=", value)
        end
    end
end

class Podcast < Media
    attr_accessor :host

    def review()
    end
end