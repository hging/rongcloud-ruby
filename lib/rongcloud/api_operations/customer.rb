module Rongcloud
  module APIOperations
    module Customer
      module ClassMethods
        def method_missing(name, *args, &block)
          if @customer_avaliable_name.key?(name)
            response = Rongcloud.request(:post, @customer_avaliable_name[name], args[0])
          else
            super
          end
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end
