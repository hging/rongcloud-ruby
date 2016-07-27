module Rongcloud
  class User < Base
    @customer_avaliable_name = {
      :update => '/user/refresh.json',
      :where => '/user/checkOnline.json'
    }

  end
  #code
end
