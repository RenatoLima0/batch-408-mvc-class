# Model
class Task
  attr_reader :desc, :done

  def initialize(desc)
    # quais são as características iniciais
    @desc = desc
    @done = false
  end

  # ============= Comportamentos =============
  def check
    @done = true
  end

end
