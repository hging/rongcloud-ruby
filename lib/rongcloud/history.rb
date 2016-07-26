module Rongcloud
  class History < Base
    include Rongcloud::APIOperations::Delete
    include Rongcloud::APIOperations::Show

    def self.delete_url
      '/message/history/delete.json'
      #code
    end

    def self.show_url
      '/message/history.json'
      #code
    end

  end
  #code
end
