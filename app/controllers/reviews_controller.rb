class ReviewsController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.find(params[:bookmark_id])
    @movie = Movie.find(@bookmark.movie_id)
    @review = Review.new

    puts "New has been called"
  end

  def create
    puts "Create has been called on Review"
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.find(params[:bookmark_id])
    @movie = Movie.find(@bookmark.movie_id)
    @review = @movie.reviews.new(review_params)

    if @review.save
      redirect_to list_bookmark_path(@list, @bookmark), notice: "Successfully created list!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
