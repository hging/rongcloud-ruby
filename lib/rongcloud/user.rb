module Rongcloud
  class User < Base
    include Rongcloud::APIOperations::Update
    include Rongcloud::APIOperations::Show

    def self.update_url
      '/user/refresh.json'
    end

    def self.show_url
      '/user/checkOnline.json'
      #code
    end

  end
  #code
end
