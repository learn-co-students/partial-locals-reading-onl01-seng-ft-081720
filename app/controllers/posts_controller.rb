class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    # In fact, with locals, we can completely eliminate the @author = @post.author line in the posts#show controller action, 
    # instead only accessing that data where we need it, in the partial.
    # this line can now be removed
    # @author = @post.author
  end

  def index
    @posts = Post.all
  end
end

# Now notice that, if we choose to delete the line <%= render 
# {partial: "authors/author", locals: {post_author: @author}} %> 
# from the posts/show view, calling the partial requires us to pass 
# in data about the author. The @author = @post.author line in our 
# PostsController may no longer be needed.


# This code is much better. We are being more explicit about our 
# dependencies, reducing lines of code in our codebase, and reducing the 
# scope of the author variable.

# Don't worry if you find the syntax for rendering a partial hard to 
# remember –– it is. You can always reference this guide or the Rails 
# Guides.

# Useing partials help to dry out the code.