require 'pry'
class Post
    
    attr_accessor :author
    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        author.name if author
    end


end

# sophie = Author.new('Sophie')
# post.author = sophie

    
# binding.pry