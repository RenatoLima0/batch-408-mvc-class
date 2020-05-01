class Router

  def initialize(controller)
    @controller = controller
  end

  def run
    user_opt = nil

    while user_opt != 0
      puts 'What do you want to do next?'
      puts '1 - List the existing tasks'
      puts '2 - Add a new task'
      puts '3 - Mark a task as done'
      puts '4 - Delete a task'
      puts '0 - Quit the program'
      user_opt = gets.chomp.to_i

      print `clear`
      case user_opt
      when 1
        @controller.list
      when 2
        @controller.adicionar
      when 3
        @controller.marcar_como_feita
      when 4
        @controller.deletar
      when 0
        puts "Goodbye!"
      else
        puts "Invalid command! Try again"
      end
    end
  end

end
