require 'pry'
class Author
# this makes a relationship betwenn Author -> Post
    attr_accessor :post 
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        # We have access to Post class attributes, thanks to attr_accessor :post
        # we .select from @@all SET Post object instance == author
        Post.all.select {|post| post.author == self }
    end

    def add_post(post)
        # instance of post is being passed as argument
        # we can set post's author = author object instance(self)
        post.author = self
        
    end

    def add_post_by_title(title)
        # creates a new instance, and we are capable of this 
        # because attr_accessor :post
        post = Post.new(title)
        # this is how you associate Post and Author instances
        post.author= self 
        
    end

    def self.post_count
        Post.all.count
    end

end