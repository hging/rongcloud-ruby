module Rongcloud
  class Ban < Base
    include Rongcloud::APIOperations::Create
    include Rongcloud::APIOperations::Delete
    include Rongcloud::APIOperations::List

    def self.create_url
      '/user/block.json'
    end

    def self.delete_url
      '/user/unblock.json'
      #code
    end

    def self.list_url
      '/user/block/query.json'
      #code
    end

  end
  #code
end
