module Rongcloud
  class SMS < Base
    def self.image_code
      response = Unirest.send(:get, 'http://api.sms.ronghub.com/getImgCode.json', parameters: {appKey: Rongcloud.app_key})
      response.body
      #code
    end

    def self.create(*args)
      response = Unirest.send(:post, 'http://api.sms.ronghub.com/sendCode.json', headers: Rongcloud.generate_http_head, parameters: args[0])
      response.body
      #code
    end

    def self.where(*args)
      response = Unirest.send(:post, 'http://api.sms.ronghub.com/verifyCode.json', headers: Rongcloud.generate_http_head, parameters: args[0])
      response.body
    end

  end
  #code
end
