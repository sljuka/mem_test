require 'sequel'

module DataModel

  class Action < Sequel::Model

    many_to_one :process
    one_to_many :tasks
    one_to_many :heads

  end

end
