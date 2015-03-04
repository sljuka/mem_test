require_relative 'data_model/process'

module Lib

  class ProcessBuilder

    def create_process(clss, name, creator_id)
      pcs = clss.create(name: name, creator_id: creator_id)
    end

  end

end
