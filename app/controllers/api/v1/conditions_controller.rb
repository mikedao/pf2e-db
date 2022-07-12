class Api::V1::ConditionsController < ApplicationController
  def index
    render json: ConditionSerializer.new(Condition.all)
  end

  def show
    render json: ConditionSerializer.new(Condition.find(params[:id]))
  end
end