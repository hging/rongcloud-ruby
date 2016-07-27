module Rongcloud
  class Ban < Base
    @customer_avaliable_name = {
      :create => '/user/block.json',
      :delete => '/user/unblock.json',
      :all => '/user/block/query.json'
    }

  end
  #code
end
