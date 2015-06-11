require "json"
require "net/http"

begin
  require 'active_support'
rescue LoadError
  require 'rubygems'
  require 'active_support'
end

require "ckfapi/version"
require "ckfapi/config"
require 'ckfapi/url_helpers'
require 'ckfapi/response'

require "ckfapi/api"
require "ckfapi/api/user"
require "ckfapi/api/sale"
require "ckfapi/api/sale_menu_item"


module Ckfapi
end
