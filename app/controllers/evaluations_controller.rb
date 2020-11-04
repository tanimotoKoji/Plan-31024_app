class EvaluationsController < ApplicationController

  def index
    @post = Post.find(params[:post_id])
    #@evaluation = Evaluation.new
  end

  def create
    @evaluation = Evaluation.new(evaluation_params)
    if @evaluation.save
        redirect_to root_path
      else
        render :index
      end
    end
  
  def show
    @evaluation = Evaluation.find(params[:id])
    @first_id = Evaluation.pluck(:first_id)
    @aggregate = aggregateOpinion(@first_id)
    @second_id = Evaluation.pluck(:second_id)
    @second_aggregate = aggregateOpinion(@second_id)
    #@evaluations = @post.evaluations.includes(:user)
  end

  def aggregateOpinion(array)
    result = [["素晴らしい",0],["良い",0],["どちらでもない",0],["あまり良くない",0],["改善した方が良い",0]]
    array.each do |i|
      if i == 1
        result[0][1] += 1
      elsif i == 2
        result[1][1] += 1
      elsif i == 3
        result[2][1] += 1
      elsif i == 4
        result[3][1] += 1
      else 
        result[4][1] += 1
      end
    end
    return result
  end

  private
    def evaluation_params
      params.require(:evaluation).permit(:comment, :first_id, :second_id, :third_id, :fourth_id, :fifth_id, :sixth_id, :seventh_id, :eighth_id, :ninth_id, :tenth_id).merge(user_id: current_user.id, post_id: params[:post_id])
    end
  end

  #.require(:evaluation)