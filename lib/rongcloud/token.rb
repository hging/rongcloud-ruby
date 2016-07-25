module Rongcloud
  class Token < Base
    include Rongcloud::APIOperations::Show

    def self.show_url
      '/user/getToken.json'
    end

  end
  #code
end
