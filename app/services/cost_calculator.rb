class CostCalculator
  attr_reader :origin, :receiver, :minutes, :plan

  def initialize(origin, receiver, minutes, plan)
    @origin = origin
    @receiver = receiver
    @minutes = minutes.to_i
    @plan = plan
  end 
  
  def call
    {
      cost_without_plan: cost_without_plan.round(2),
      cost_with_plan: cost_with_plan.round(2)
    }
  end

  private

  def cost_without_plan
    minutes*call_cost
  end

  def cost_with_plan
    return "0.0" if minutes <= @plan.minutes

    remaining_minutes = minutes - @plan.minutes
    new_call_cost = call_cost * 1.10

    remaining_minutes * new_call_cost
  end

  def call_cost
    CallCost.find_by(origin:@origin, receiver:@receiver).price
  end

end
