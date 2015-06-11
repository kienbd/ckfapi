module Ckfapi
  module API
    # User API
    #
    # Handling all Sale requests
    class Sale < Ckfapi::API::Core
      @root_endpoint = "#{Ckfapi.api_uri}/v1/sales"

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
        params = {:sale => sale}
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
      def self.index options={},data_type="json"
        uri = "#{@root_endpoint}"
        params = {:options => options}
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Add a sale menu item to API
      #
      # @param sale [Hash] sale data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Sale.create({email: "",phone: ""})
      def self.add_sale_menu_item sale_id,sale_menu_item,data_type="json"
        uri = "#{@root_endpoint}/#{sale_id}/sale_menu_items"
        params = {:sale_menu_item => sale_menu_item}
        raw_resp = post_request(uri,params)
        resp = Response.new(raw_resp)
      end

      def self.get sale_id,options={},data_type="json"
        uri = "#{@root_endpoint}/#{sale_id}"
        params = {:options => options}
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

    end
  end
end

