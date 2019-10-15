class Author
# @@all = []
@@post_count = 0
    attr_accessor :name, :post
    def initialize(name)
        @name = name
        @post = []
    end
    
    def posts
        Post.all.select{|post| post.author == self}
    end
   

    def add_post(post)
        post.author = self
        @post << post
        @@post_count += 1
    end

    def add_post_by_title(title)
        post = Post.new(title)
        add_post(post)
        @post << post
        @@post_count += 1
    end

    def self.post_count
        @@post_count
    end

end