module Ckfapi
  module API
    # User API
    #
    # Handling all SaleMenuItem requests
    class SaleMenuItem < Ckfapi::API::Core
      @root_endpoint = "#{Ckfapi.api_uri}/v1/sale_menu_items"

      # Create a sale_menu_item API
      #
      # @param sale_menu_item [Hash] sale_menu_item data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::SaleMenuItem.create({email: "",phone: ""})
      def self.create sale_menu_item,data_type="json"
        uri = "#{@root_endpoint}"
        params = {:sale_menu_item => sale_menu_item}
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
      def self.index options={},data_type="json"
        uri = "#{@root_endpoint}"
        params = {:options => options}
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
      def self.get sale_menu_item_id,options={},data_type="json"
        uri = "#{@root_endpoint}/#{sale_menu_item_id}"
        params = {:options => options}
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
      def self.remove sale_menu_item_id,options={},data_type="json"
        uri = "#{@root_endpoint}/#{sale_menu_item_id}"
        params = {:options => options}
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
      def self.update sale_menu_item_id,sale_menu_item,data_type="json"
        uri = "#{@root_endpoint}/#{sale_menu_item_id}"
        params = {:sale_menu_item => sale_menu_item}
        raw_resp = put_request(uri,params)
        resp = Response.new(raw_resp)
      end

    end
  end
end

