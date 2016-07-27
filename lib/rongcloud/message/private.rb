module Rongcloud
  class Message::Private < Base
    @customer_avaliable_name = {
      :create => '/message/private/publish.json',
      :template_create => '/message/private/publish_template.json',
    }
  end
end
