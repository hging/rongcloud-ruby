module Rongcloud
  class Group::Ban < Base
    @customer_avaliable_name = {
      :create => '/group/user/gag/add.json',
      :delete => '/group/user/gag/rollback.json',
      :all => '/group/user/gag/list.json',
    }

  end
  #code
end
