module Rongcloud
  class Wordfilter < Base
    @customer_avaliable_name = {
      :create => '/wordfilter/add.json',
      :delete => '/wordfilter/delete.json',
      :all => '/wordfilter/list.json'
    }

  end
  #code
end
