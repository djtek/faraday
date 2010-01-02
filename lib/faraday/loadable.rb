module Faraday
  module Loadable
    def self.extended mod
      class << mod
        attr_accessor :load_error
      end
    end

    def loaded?
      load_error.nil?
    end
  end
end
