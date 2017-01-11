class Task
  
  def initialize(name, priority)
    @name = name
    @complete = false
    @priority = priority
  end

  def name
    return @name
  end

  def complete
    return @complete
  end

  def priority
    @priority
  end

  def complete!
    @complete = true
  end

  def toggle_complete!
    @complete = !@complete
  end
end