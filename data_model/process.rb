require 'sequel'

module DataModel

  class Process < Sequel::Model

    one_to_many :actions

  end

end
