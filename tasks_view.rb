class TasksView

  def print_tasks(tasks)
    tasks.each_with_index do |task, index|
      if task.done == true
        puts "#{index + 1} - [X] #{task.description}"
      else
        puts "#{index + 1} - [ ] #{task.description}"
      end
    end
  end

  def ask_for_description
    puts 'Please enter a task description:'
    gets.chomp
  end

  def ask_which_task_to_complete
    puts "Which task do you want to mark complete?"
    gets.chomp.to_i - 1
  end

  def ask_which_task_to_delete
    puts "Which item would you like to delete?"
    gets.chomp.to_i - 1
  end
end
