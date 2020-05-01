# Repository =====> Database (Banco de Dados)

class Repository

  def initialize
    # task_array é uma array que guarda Tasks
    @task_array = []
  end

  # CRUD
  # Create
  def add_task(new_task)
    @task_array << new_task
  end

  # Read
  # -- Listar todas as tasks
  def get_all_tasks
    @task_array
  end

  # -- Mostrar uma task só
  def get_task(ind)
    @task_array[ind]
  end

  # Update

  # Delete
  def delete_task(ind_to_delete)
    @task_array.delete_at(ind_to_delete)
  end

end
