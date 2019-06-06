require_relative 'task_repository'
require_relative 'tasks_view'

class TasksController

  def initialize(repository)
    @repository = repository
    @view = TasksView.new
  end

  def list
    tasks = @repository.all
    @view.print_tasks(tasks)
  end

  def create
    task_description = @view.ask_for_description
    new_task = Task.new(task_description)
    @repository.add(new_task)
  end

  def update
    list
    user_selection = @view.ask_which_task_to_complete
    task = @repository.find(user_selection)
    task.mark_as_done!
  end

  def delete
    list
    user_selection = @view.ask_which_task_to_delete
    @repository.remove(user_selection)
  end



end
