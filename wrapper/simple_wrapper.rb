require 'delegate'

module Wrapper
  
  class SimpleWrapper < SimpleDelegator

    def self.wrap(item)
      new item
    end

    def self.wraps(items)
      items.map { |item| new item }
    end

  end

end