class Router

  def initialize(controller)
    @controller = controller
    @running    = true
  end

  def run
    while @running
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_actions
    puts "\n---"
    puts 'What do you want to do?'
    puts '1 - Display tasks'
    puts '2 - Add a new task'
    puts '3 - Mark a task as complete'
    puts '4 - Delete a task'
    puts '5 - Exit'
    puts '---'
  end

  def dispatch(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.update
    when 4 then @controller.delete
    when 5 then stop
    end
  end

  def stop
    @running = false
    puts "Bye! Good luck with your tasks!"
  end
end



#






# class Router
#   def initialize(controller)
#     @controller = controller
#   end

#   def run
#     loop do
#       print_actions
#       action = gets.chomp.to_i
#       dispatch(action)
#     end
#   end

#   private

#   def print_actions
#     puts "\n---"
#     puts 'What do you want to do?'
#     puts '1 - Display tasks'
#     puts '2 - Add a new task'
#     puts '3 - Mark a task as done'
#     puts '4 - Remove a task'
#     puts '---'
#   end

#   def dispatch(action)
#     case action
#     when 1 then @controller.list
#     when 2 then @controller.create
#     when 3 then @controller.mark_as_done
#     when 4 then @controller.destroy
#     else
#       puts "Please type 1, 2, 3 or 4 :)"
#     end
#   end
# end
