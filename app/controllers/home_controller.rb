class HomeController < ApplicationController
  def index
    @all_origins = CallCost.all.pluck(:origin).uniq.sort
    @all_receivers = CallCost.all.pluck(:receiver).uniq.sort
    @all_plans = Plan.all.pluck(:name)
  end
end
