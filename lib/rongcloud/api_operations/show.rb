module Rongcloud
  module APIOperations
    module Show
      module ClassMethods
        def where(params={})
          response = Rongcloud.request(:post, self.show_url, params)
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end
