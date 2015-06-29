module Ckfapi
  module API
    # User API
    #
    # Handling all SaleMenuItem requests
    class SaleMenuItem < Ckfapi::API::Core
      def self.root_endpoint
        "#{Ckfapi.api_uri}/v1/sale_menu_items"
      end

      # Create a sale_menu_item API
      #
      # @param sale_menu_item [Hash] sale_menu_item data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::SaleMenuItem.create({email: "",phone: ""})
      def self.create token,sale_menu_item,data_type="json"
        uri = "#{root_endpoint}"
        params = {:sale_menu_item => sale_menu_item,:token => token}
        raw_resp = post_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Index sale menu items
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::SaleMenuItem.index
      def self.index token,options={},data_type="json"
        uri = "#{root_endpoint}"
        params = {:options => options,:token => token}
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Get sale menu item
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::SaleMenuItem.get(1,{detail: true})
      def self.get token,sale_menu_item_id,options={},data_type="json"
        uri = "#{root_endpoint}/#{sale_menu_item_id}"
        params = {:options => options,:token => token}
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Delete sale menu item
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::SaleMenuItem.remove(1,{detail: true})
      def self.remove token,sale_menu_item_id,options={},data_type="json"
        uri = "#{root_endpoint}/#{sale_menu_item_id}"
        params = {:options => options,:token => token}
        raw_resp = delete_request(uri,params)
        resp = Response.new(raw_resp)
      end


      # Update sale menu item
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::SaleMenuItem.update(1,{name: hola})
      def self.update token,sale_menu_item_id,sale_menu_item,data_type="json"
        uri = "#{root_endpoint}/#{sale_menu_item_id}"
        params = {:sale_menu_item => sale_menu_item,:token => token}
        raw_resp = put_request(uri,params)
        resp = Response.new(raw_resp)
      end

      def self.next_state token,sale_menu_item_id,data_type="json"
        uri = "#{root_endpoint}/#{sale_menu_item_id}/state"
        params = {:token => token}
        raw_resp = put_request(uri,params)
        resp = Response.new(raw_resp)
      end

    end
  end
end

