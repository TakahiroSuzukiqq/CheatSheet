class PagesController < ApplicationController
  def home
    @posts = Post.all
    @search = Post.ransack(params[:q])
    @posts = @search.result #(distinct: true)
    #@search.build_condition
  end
 
end
