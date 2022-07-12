class Api::V1::ConditionsController < ApplicationController
  def index
    render json: Condition.all
  end

  def show
    render json: Condition.find(params[:id])
  end
end