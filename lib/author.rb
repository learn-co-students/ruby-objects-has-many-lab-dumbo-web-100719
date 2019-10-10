require 'pry'

class Author

    attr_accessor :name

    @@post_count = 1

    def initialize(name)
        @name = name
        @posts = []
    end

    def posts
        Post.all
    end

    def add_post(post)
        post.author = self
        @@post_count += 1
    end

    def add_post_by_title(title)
       new_post =  Post.new(title)
       new_post.title = title
       new_post.author = self
       @posts << new_post
       @@post_count += 1
    end

    def self.post_count
        @@post_count
    end
    
end