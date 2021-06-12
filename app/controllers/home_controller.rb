class HomeController < ApplicationController
  before_action :load_infos, only: %i[index calculate_cost]

  def index; end

  def calculate_cost
    @cost_without_plan = calculator_service[:cost_without_plan]
    @cost_with_plan = calculator_service[:cost_with_plan]
  end

  private

  def load_infos
    @all_origins = CallCost.all.pluck(:origin).uniq.sort
    @all_receivers = CallCost.all.pluck(:receiver).uniq.sort
    @all_plans = Plan.all.pluck(:name)
  end

  def calculator_service
    @calculator_service ||= CostCalculator.new(params["origin"], params["receiver"], params["minutes"], find_plan).call
  end

  def find_plan
    Plan.find_by(name: params["plan"])
  end
end

