require_relative "list"
require_relative "task"

# Create list
list = List.new

# Create tasks and add them to the list
list.add_task(Task.new("Take out trash", 5))
list.add_task(Task.new("Feed the cat", 10))
list.add_task(Task.new("Mow the lawn", 1))

# Print out the second task in the list
puts "Second task:"
puts list.tasks[1].name
puts "---------"

# Get an array containing the names of all incomplete tasks from the list
puts "Incomplete Tasks:"
puts list.incomplete_task_names
puts list.number_of_incomplete_tasks
puts "--------"

# Mark the first task from the list as complete
list.tasks[0].toggle_complete!
list.tasks[1].toggle_complete!
list.tasks[0].toggle_complete!

# Print out the incomplete tasks again
puts "Incomplete Tasks:"
puts list.incomplete_task_names
puts list.number_of_incomplete_tasks

puts "Number of tasks:"
puts list.tasks.length

# list.delete_completed_tasks
puts "Number of tasks:"
puts list.tasks.length

p list.sort_by_priority