module Rongcloud
  class Wordfilter < Base
    include Rongcloud::APIOperations::Create
    include Rongcloud::APIOperations::Delete
    include Rongcloud::APIOperations::List

    def self.create_url
      '/wordfilter/add.json'
    end

    def self.delete_url
      '/wordfilter/delete.json'
      #code
    end

    def self.list_url
      '/wordfilter/list.json'
      #code
    end

  end
  #code
end
