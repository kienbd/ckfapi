module Ckfapi
  module API
    # User API
    #
    # Handling all Sale requests
    class Sale < Ckfapi::API::Core

      def self.root_endpoint
        "#{Ckfapi.api_uri}/v1/sales"
      end

      # Create a sale API
      #
      # @param sale [Hash] sale data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Sale.create({email: "",phone: ""})
      def self.create token,sale,data_type="json"
        uri = "#{root_endpoint}"
        params = {:sale => sale}.merge(token)
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
      #     Ckfapi::API::Sale.index({detail: true})
      def self.index token,options={},data_type="json"
        uri = "#{root_endpoint}"
        params = {:options => options}.merge(token)
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Get Sale API
      #
      # @param sale [Hash] sale data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Sale.get(1,{detail: true })
      def self.get token,sale_id,options={},data_type="json"
        uri = "#{root_endpoint}/#{sale_id}"
        params = {:options => options}.merge(token)
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
      def self.add_sale_menu_item token,sale_id,sale_menu_item,data_type="json"
        uri = "#{root_endpoint}/#{sale_id}/sale_menu_items"
        params = {:sale_menu_item => sale_menu_item}.merge(token)
        raw_resp = post_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Update Sale API
      #
      # @param sale [Hash] sale data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Sale.update(1,{name: ""})
      def self.update token,sale_id,sale,data_type="json"
        uri = "#{root_endpoint}/#{sale_id}"
        params = {:sale => sale}.merge(token)
        raw_resp = put_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Delete Sale API
      #
      # @param sale [Hash] sale data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Sale.remove(1)
      def self.remove token,sale_id,options={},datatype="json"
        uri = "#{root_endpoint}/#{sale_id}"
        params = {:options => options}.merge(token)
        raw_resp = delete_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Get Sale API
      #
      # @param sale [Hash] sale data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Sale.sum(1,{detail: true })
      def self.sum token,sale_id,options={},datatype="json"
        uri = "#{root_endpoint}/#{sale_id}/sum"
        params = {:options => options}.merge(token)
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      def self.next_state token,sale_id,datatype="json"
        uri = "#{root_endpoint}/#{sale_id}/state"
        params = {}.merge(token)
        raw_resp = put_request(uri,params)
        resp = Response.new(raw_resp)
      end

      def self.toggle_get_paid token,sale_id,datatype="json"
        uri = "#{root_endpoint}/#{sale_id}/get_paid"
        params = {}.merge(token)
        raw_resp = put_request(uri,params)
        resp = Response.new(raw_resp)
      end

			def self.sum_in_time token,option={},datatype="json"
        uri = "#{root_endpoint}/sum_in_time"
        params = {:options => options}.merge(token)
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
			end
    end
  end
end

