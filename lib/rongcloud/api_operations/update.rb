module Rongcloud
  module APIOperations
    module Update
      module ClassMethods
        def update(params={})
          response = Rongcloud.request(:put, self.list_url, params)
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end
