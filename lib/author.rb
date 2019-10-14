class Author
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
        
    end

    def self.all
        @@all
    end

    def posts #returns all post associated with this instance of the author
        Post.all.select{|post| post.author == self}

    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author = self 

    end

    def self.post_count
        Post.all.count
    end

end