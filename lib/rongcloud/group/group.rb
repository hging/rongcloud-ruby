module Rongcloud
  class Group < Base
    @customer_avaliable_name = {
      :sync => '/group/sync.json',
      :create => '/group/create.json',
      :join => '/group/join.json',
      :quit => '/group/quit.json',
      :delete => '/group/dismiss.json',
      :update => '/group/refresh.json',
      :where => '/group/user/query.json'
    }

  end
  #code
end
