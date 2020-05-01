# view ==> Responsável por interagir com o usuário

class View
  # gets => pega info do usuário    (input)
  # puts => mostra algo pro usuário (output)

  def list_tasks(array_of_tasks)
    array_of_tasks.each_with_index do |task, ind|
      # task é do tipo Task
      x = task.done ? 'X' : ' '

      puts "#{ind + 1} - [#{x}] #{task.desc}"
    end
  end

  def get_desc_from_user
    puts "What is the description of your new task?"
    return gets.chomp
  end

  def get_index_from_user
    puts "What is the index of the task?"
    return gets.chomp.to_i - 1
  end
end
