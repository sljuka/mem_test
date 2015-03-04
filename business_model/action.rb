require_relative '../wrapper/simple_wrapper'

module BusinessModel

  class Action < Wrapper::SimpleWrapper

    def execute
      finished_at = DateTime.now
    end

  end

end