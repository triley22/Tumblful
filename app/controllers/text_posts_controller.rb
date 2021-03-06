class TextPostsController < ApplicationController
def index
	@text_post = TextPost.all 
end

def show
	@text_post = TextPost.find(params[:id])
end

def new
  @text_post = TextPost.new
end

def edit
	@text_post = TextPost.find(params[:id])
end

def create
	@text_post = TextPost.new(title: params[:text_post][:title], url: params[:text_post][:url])
    if @text_post.save
    redirect_to text_posts_path
    else
    @errors = @text_post.errors
    render :new
    end
end

def update
	@text_post = TextPost.find(params[:id])
	if @text_post.update(text_post_params[:url], text_post_params)
  	redirect_to text_posts_path
	else
  	@errors = @text_post.errors
  	render :edit
	end
end

def delete
	@text_post = TextPost.find(params[:id])
	@text_post.destroy
	redirect_to text_posts_path
	end
end

private
  def text_post_params
    params.require(:text_post).permit(:title, :url)
  end