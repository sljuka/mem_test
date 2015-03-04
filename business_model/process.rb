require_relative '../wrapper/simple_wrapper'
require_relative 'action'

module BusinessModel

  class Process < Wrapper::SimpleWrapper

    def run
      p actions[0].tasks
      actions[0].tasks_dataset.update(active: true)
    end

  end

end