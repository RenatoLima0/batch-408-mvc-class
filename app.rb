require_relative 'task'
require_relative 'view'
require_relative 'repository'
require_relative 'controller'
require_relative 'router'

# criando o repositório que vai guardar as tasks
repo = Repository.new

# criando a view que vai interagir com o usuário
view = View.new

# criando o controller que vai coordenar as ações que o usuário pode fazer
controller = Controller.new(repo, view)

# criando o router que vai ser responsável pelo loop principal
router = Router.new(controller)

# inicia o loop
router.run
