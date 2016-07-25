module Rongcloud
  module APIOperations
    module List
      module ClassMethods
        def all(params={})
          response = Rongcloud.request(:post, self.list_url, params)
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end
