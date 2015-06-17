module Ckfapi
  module API
    # User API
    #
    # Handling all MenuItem requests
    class MenuItem < Ckfapi::API::Core
      def root_endpoint
        "#{Ckfapi.api_uri}/v1/menu_items"
      end

      # Create a menu_item API
      #
      # @param menu_item [Hash] menu_item data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::MenuItem.create({name: "",description: "",unit: "", unit_price: 10.05})
      def self.create menu_item,data_type="json"
        uri = "#{root_endpoint}"
        params = {:menu_item => menu_item}
        raw_resp = post_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Index menu_items
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::MenuItem.index({detail: true})
      def self.index options={},data_type="json"
        uri = "#{root_endpoint}"
        params = {:options => options}
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Get MenuItem API
      #
      # @param menu_item [Hash] menu_item data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::MenuItem.get(1,{detail: true })
      def self.get menu_item_id,options={},data_type="json"
        uri = "#{root_endpoint}/#{menu_item_id}"
        params = {:options => options}
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Add a item menu item to API
      #
      # @param item_menu_item [Hash] item_menu_item data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::MenuItem.add_item_menu_item(1,{email: "",phone: ""})
      def self.add_item_menu_item menu_item_id,item_menu_item,data_type="json"
        uri = "#{root_endpoint}/#{menu_item_id}/item_menu_items"
        params = {:item_menu_item => item_menu_item}
        raw_resp = post_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Update MenuItem API
      #
      # @param menu_item [Hash] menu_item data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::MenuItem.update(1,{name: ""})
      def self.update menu_item_id,menu_item,data_type="json"
        uri = "#{root_endpoint}/#{menu_item_id}"
        params = {:menu_item => menu_item}
        raw_resp = put_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Delete MenuItem API
      #
      # @param menu_item [Hash] menu_item data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::MenuItem.remove(1)
      def self.remove menu_item_id,options={},datatype="json"
        uri = "#{root_endpoint}/#{menu_item_id}"
        params = {:options => options}
        raw_resp = delete_request(uri,params)
        resp = Response.new(raw_resp)
      end

    end
  end
end

