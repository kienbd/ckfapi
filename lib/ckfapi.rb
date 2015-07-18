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
require "ckfapi/api/category"
require "ckfapi/api/menu_item"
require "ckfapi/api/item_menu_item"
require "ckfapi/api/item"
require "ckfapi/api/payment"
require "ckfapi/api/shift"
require "ckfapi/api/attendance"


module Ckfapi
end
