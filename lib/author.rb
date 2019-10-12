class Author

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all
  end
  
  def add_post(post)
    # binding.pry
    post.author = self
  end

  def add_post_by_title(title)
    Post.new(title)
    Post.all.last.author = self
  end

  def self.post_count
    Post.all.count
  end

end
