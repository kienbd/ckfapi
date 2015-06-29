module Ckfapi
  module API
    # ItemMenuItem API
    #
    # Handling all ItemMenuItem requests
    class ItemMenuItem < Ckfapi::API::Core
      def self.root_endpoint
        "#{Ckfapi.api_uri}/v1/item_menu_items"
      end

      # Create a item_menu_item API
      #
      # @param item_menu_item [Hash] item_menu_item data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::ItemMenuItem.create({name: "",description: ""})
      def self.create token,item_menu_item,data_type="json"
        uri = "#{root_endpoint}"
        params = {:item_menu_item => item_menu_item,:token => token}
        raw_resp = post_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Index item menu items
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::ItemMenuItem.index
      def self.index token,options={},data_type="json"
        uri = "#{root_endpoint}"
        params = {:options => options,:token => token}
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Get item menu item
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::ItemMenuItem.get(1,{detail: true})
      def self.get token,item_menu_item_id,options={},data_type="json"
        uri = "#{root_endpoint}/#{item_menu_item_id}"
        params = {:options => options,:token => token}
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Delete item menu item
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::ItemMenuItem.remove(1,{})
      def self.remove token,item_menu_item_id,options={},data_type="json"
        uri = "#{root_endpoint}/#{item_menu_item_id}"
        params = {:options => options,:token => token}
        raw_resp = delete_request(uri,params)
        resp = Response.new(raw_resp)
      end


      # Update item menu item
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::ItemMenuItem.update(1,{name: hola})
      def self.update token,item_menu_item_id,item_menu_item,data_type="json"
        uri = "#{root_endpoint}/#{item_menu_item_id}"
        params = {:item_menu_item => item_menu_item,:token => token}
        raw_resp = put_request(uri,params)
        resp = Response.new(raw_resp)
      end

    end
  end
end

