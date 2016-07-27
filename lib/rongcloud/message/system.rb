module Rongcloud
  class Message::System < Base
    @customer_avaliable_name = {
      :create => '/message/system/publish.json',
      :template_create => '/message/system/publish_template.json',
    }
  end
end
