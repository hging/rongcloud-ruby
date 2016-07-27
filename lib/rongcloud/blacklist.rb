module Rongcloud
  class Blacklist < Base
    @customer_avaliable_name = {
      :create => '/user/blacklist.json',
      :delete => '/user/blacklist/remove.json',
      :where => '/user/blacklist/query.json'
    }

  end
  #code
end
