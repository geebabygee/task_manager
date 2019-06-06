require_relative 'task'
require_relative 'task_repository'
require_relative 'tasks_controller'
require_relative 'router'

task_repo = TaskRepository.new
tasks_controller = TasksController.new(task_repo)
router = Router.new(tasks_controller)

task1 = Task.new('Buy ticket to Demo Day')
task2 = Task.new('Ride bike to LeWagon')
task3 = Task.new('Teach an awesome class!')

task_repo.add(task1)
task_repo.add(task2)
task_repo.add(task3)


router.run
