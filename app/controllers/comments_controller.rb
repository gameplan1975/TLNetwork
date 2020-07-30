class CommentsController < ApplicationController
  before_action :login_check
  before_action :set_message, only: [:create, :edit, :update]
  
  def create
    @message = Message.find(params[:message_id])
    @comment = @message.comments.build(comment_params)
      respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
        format.html { redirect_to message_path(@message), notice: 'fail'  }
      end
    end
  end

  def edit
    @comment = @message.comments.find(params[:id])
    respond_to do |format|
      format.js { render :edit }
    end
  end

  def update
    @comment = @message.comments.find(params[:id])
    respond_to do |format|
      if @comment.update(comment_params)
        format.js { render :index }
      else
        format.js { render :edit_error }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.js { render :index }
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:message_id, :content)
  end

  def set_message
    @message = Message.find(params[:message_id])
  end

  def login_check
    if current_user == nil
      render :root
    end
  end

 end