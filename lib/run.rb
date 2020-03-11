require 'pry'
require_relative 'author'
require_relative 'post'

# tests in Author
betty = Author.new("Betty")

post1 = Post.new("My first post!!")
c1=post1.author = betty

hello = Post.new("Hello")
c2=betty.add_post(hello)
c3=betty.posts.include?(hello)
c4= hello.author # betty?

betty.add_post_by_title("My Great Blog Post")
c5=betty.posts.last.title #^^
c6= betty.posts.last.author #^^betty

c7= Author.post_count
# tests in Post
post=Post.new('My Blog Post!')
post2=Post.new('My Newest Blog Post!')
post3=Post.new('Hello World') 
c8=Post.all # match [post,post2]
c9=post.title #'My Blog post"

sophie = Author.new('Sophie')
c10=post.author #= sophie
c11=post.author_name #sophie


    
# binding.pry