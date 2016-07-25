# Version
require "rongcloud/version"

# Http client
require 'unirest'

# API operations
require 'rongcloud/api_operations/create'
require 'rongcloud/api_operations/update'
require 'rongcloud/api_operations/delete'
require 'rongcloud/api_operations/list'
require 'rongcloud/api_operations/show'

# Resources
require 'rongcloud/base'
require 'rongcloud/token'
require 'rongcloud/user'
require 'rongcloud/ban'

module Rongcloud
  class << self
    API_HOST = 'https://api.cn.rong.io'
    attr_accessor :app_key, :app_secret, :api_host
    # attr_writer :debug_mode

    def api_host
      unless @api_host
        return API_HOST
      end
      @api_host
    end

    def generate_nonce
      SecureRandom.hex
    end

    def generate_timestrap
      Time.now.to_i.to_s
    end

    def generate_http_head
      nonce = generate_nonce
      timestrap = generate_timestrap
      signature = Digest::SHA1.hexdigest(app_secret + nonce + timestrap)
      {
        'App-Key' => app_key,
        'Nonce' => nonce,
        'Timestamp' => timestrap,
        'Signature' => signature
      }
    end

    def request(method='get', url=api_host, params={})
      Unirest.send(method, api_host + url, headers: generate_http_head, parameters: params)
    end

    # def debug_mode?
    #   @debug_mode.nil? ? true : !!@debug_mode
    # end
  end
end
