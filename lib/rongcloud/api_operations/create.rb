module Rongcloud
  module APIOperations
    module Create
      module ClassMethods
        def create(params={})
          response = Rongcloud.request(:post, self.create_url, params)
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end
