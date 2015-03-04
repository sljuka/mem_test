require 'sequel'


module DataModel

  class Task < Sequel::Model

    many_to_one :action

  end

end
