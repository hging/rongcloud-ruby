module Rongcloud
  class Blacklist < Base
    include Rongcloud::APIOperations::Create
    include Rongcloud::APIOperations::Delete
    include Rongcloud::APIOperations::Show

    def self.create_url
      '/user/blacklist/add.json'
    end

    def self.delete_url
      '/user/blacklist/remove.json'
      #code
    end

    def self.show_url
      '/user/blacklist/query.json'
      #code
    end

  end
  #code
end
