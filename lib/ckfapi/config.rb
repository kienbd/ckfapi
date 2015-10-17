module Ckfapi
  class << self
    attr_accessor :api_key,:api_uri
    alias :api_url :api_uri
  end
  @api_uri = "http://localhost:8080"
  @api_key = "5dc6232045daa6f92494b5d36b8550ec74b76314"
end
