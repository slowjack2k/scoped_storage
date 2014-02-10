module ScopedStorage
  class ThreadLocalStorage
    class << self
      private :new
    end

    attr_accessor :data

    def self.for(scope_name="default")
      Thread.current["_#{name}_#{scope_name}"] ||= new
    end

    def initialize
      self.data||={}
    end

    def []=(key, value)
      self.data[key]=value
    end

    def [](key)
      self.data[key]
    end

    def clear!
      self.data.clear
    end

    def fetch(*args, &block)
      self.data.fetch(*args, &block)
    end

  end
end

