require 'pry'
class Post
@@all = []
    attr_accessor :title, :author
    def initialize(title)
        @title = title
        @@all << self
    end


    def self.all
        @@all
    end

    def author_name
        if author
            author.name
        else
            nil
        end
    end

    # def author
    #     # self.author = 
    # end
    # binding.pry
end