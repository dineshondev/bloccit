class SummariesController < ApplicationController
  def new
    @summary = Summary.new
  end

  def create
    #@post = Post.find(params[:id])
    @summary = Summary.new(params.require(:summary).permit(:summary))
    if @summary.save
      flash[:notice] = "Summary was saved"
      ##
      # redirect to @summary.post
      ##

      redirect_to @post
    else
      flash[:error] = "There was an error saving the summary. Please try again."
      render :new
    end
  end

  def edit
    @summary = Summary.find(params[:id])
  end

  def update
    @summary = Summary.find(params[:id])
    if @summary.update_attributes(params.require(:summary).permit(:summary))
      flash[:notice] = "Summary was updated."
      redirect_to [@summary.post.topic, @summary.post]
    else
      flash[:error] = "There was an error saving summary. Please try again."
      render :edit
    end

  end
end
