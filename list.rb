class List

  def initialize
    @tasks = []
  end

  def tasks
    return @tasks
  end

  def add_task(task)
    @tasks << task
  end

  def incomplete_task_names
    task_names = []
    @tasks.each do |task|
      unless task.complete
        task_names << task.name
      end
    end
    return task_names
  end

  def number_of_incomplete_tasks
    incompleted_tasks = 0
    @tasks.each do |task|
      if !task.complete
        incompleted_tasks += 1
      end
    end
    incompleted_tasks
  end

  def delete_completed_tasks
    @tasks.each do |task|
      if task.complete
        @tasks.delete(task)
      end
    end
  end

  def sort_by_priority
    @tasks.sort do |task, next_task|
      next_task.priority <=> task.priority
    end
  end
end