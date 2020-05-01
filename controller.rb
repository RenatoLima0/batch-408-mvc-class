# controller ==> responsável por coordenar as ações e comunicações

require_relative 'task'

class Controller

  def initialize(repo, view)
    @repo = repo
    @view = view
  end

  # listar as tarefas
  def list
    # 1. pegar a array de tasks do repositório
    tasks = @repo.get_all_tasks
    # 2. mandar a array para a view listar
    @view.list_tasks(tasks)
  end

  # adicionar uma nova tarefa
  def adicionar
    # 1. pegar a descrição da tarefa com o usuário
    desc_from_view = @view.get_desc_from_user # desc_from_view é uma String
    # 2. criar uma nova Task com essa descrição
    new_task = Task.new(desc_from_view) # new_task é uma Task
    # 3. enviar a nova Task para o repositório guardar
    @repo.add_task(new_task)
  end

  # marcar a tarefa como feita
  def marcar_como_feita
    # listar as tarefas existentes
    list
    # descobrir qual tarefa o usuário quer marcar (quer o índice)
    indice_a_marcar = @view.get_index_from_user
    # pegar a tarefa específica do repositório
    tarefa_a_marcar = @repo.get_task(indice_a_marcar)
    # modificar a tarefa
    tarefa_a_marcar.check
  end

  # deletar a tarefa
  def deletar
    # 0. listar as tarefas existentes
    list
    # 1. pedir pro usuário o índice da tarefa
    indice_a_deletar = @view.get_index_from_user
    # 2. passo o índice para o repositório deletar
    @repo.delete_task(indice_a_deletar)
  end

end
