module Rongcloud
  module APIOperations
    module Delete
      module ClassMethods
        def delete(params={})
          response = Rongcloud.request(:post, self.delete_url, params)
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end
