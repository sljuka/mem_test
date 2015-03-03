require 'sequel'

module Bizflow

  module DataModel

    class Action < Sequel::Model

      many_to_one :process

    end

  end

end
