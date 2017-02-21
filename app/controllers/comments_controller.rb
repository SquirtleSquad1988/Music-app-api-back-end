# frozen_string_literal: true

class CommentsController < OpenReadController
  before_action :set_comment, only: [:show, :update, :destroy]

  # GET /comments
  def index
    @comments = Comment.where(user_id: current_user)
    render json: @comments
  end

  # GET /comments/1
  def show
    render json: @comment
  end

  # POST /comments
  def create
    @comment = current_user.comments.build(comment_params)

    if @comment.save
      render json: @comment, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  def destroy
    @comment.destroy
    head :no_content
  end

  def set_comment
    @comment = current_user.comments.find(params[:id])
  end
  private :set_comment

  # Only allow a trusted parameter "white list" through.
  def comment_params
    params.require(:comment).permit(:comment, :album_id)
  end
  private :comment_params
end
