module Ckfapi
  module API
    # User API
    #
    # Handling all Sale requests
    class SaleItemMenu < Ckfapi::API::Core
      @root_endpoint = "#{Ckfapi.api_uri}/v1/sale_item_menus"

      # Create a sale API
      #
      # @param sale [Hash] sale data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Sale.create({email: "",phone: ""})
      def self.create sale,data_type="json"
        uri = "#{@root_endpoint}"
        params = {:sale_menu_item => sale_menu_item}
        raw_resp = post_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Index sales
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Sale.index
      def self.index data_type="json"
        uri = "#{@root_endpoint}"
        raw_resp = get_request(uri)
        resp = Response.new(raw_resp)
      end

    end
  end
end

