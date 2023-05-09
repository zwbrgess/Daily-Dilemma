class CommentsController < ApplicationController
    before_action :set_comment, only: [:edit, :update, :destroy]
  
    def create
      @question = Question.find(params[:question_id]) # Find the associated question
      @comment = Comment.new(comment_params)
      @comment.question = @question # Associate the comment with the question
      @comment.user = current_user # Assuming you have a current_user method for the logged-in user
    
      if @comment.save
        redirect_to question_path(@comment.question), notice: 'Comment was successfully created.'
      else
        redirect_to question_path(@comment.question), alert: 'Error creating comment. Please try again.'
      end
    end
  
    def edit
    end
  
    def update
      if @comment.update(comment_params)
        redirect_to question_path(@comment.question), notice: 'Comment was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @comment.destroy
      redirect_to question_path(@comment.question), notice: 'Comment was successfully deleted.'
    end
  
    private
  
    def set_comment
      @comment = Comment.find(params[:id])
    end
  
    def comment_params
      params.require(:comment).permit(:content, :user_id, :question_id)
    end
  end