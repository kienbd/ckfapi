module Ckfapi
  module API
    # User API
    #
    # Handling all Category requests
    class Category < Ckfapi::API::Core
      def self.root_endpoint
        "#{Ckfapi.api_uri}/v1/categories"
      end

      # Create a category API
      #
      # @param category [Hash] category data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Category.create({name: "",description: ""})
      def self.create token,category,data_type="json"
        uri = "#{root_endpoint}"
        params = {:category => category,:token => token}
        raw_resp = post_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Index categories
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Category.index({detail: true})
      def self.index token,options={},data_type="json"
        uri = "#{root_endpoint}"
        params = {:options => options,:token => token}
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Get Category API
      #
      # @param category [Hash] category data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Category.get(1,{detail: true })
      def self.get token,category_id,options={},data_type="json"
        uri = "#{root_endpoint}/#{category_id}"
        params = {:options => options,:token => token}
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Add a category menu item to API
      #
      # @param category [Hash] category data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Category.add_menu_item(1, {name: "coca",description: "",unit: "p",unit_price: 5000.05})
      def self.add_menu_item token,category_id,menu_item,data_type="json"
        uri = "#{root_endpoint}/#{category_id}/menu_items"
        params = {:menu_item => menu_item,:token => token}
        raw_resp = post_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Update Category API
      #
      # @param category [Hash] category data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Category.update(1,{name: ""})
      def self.update token,category_id,category,data_type="json"
        uri = "#{root_endpoint}/#{category_id}"
        params = {:category => category,:token => token}
        raw_resp = put_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Delete Category API
      #
      # @param category [Hash] category data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Category.remove(1)
      def self.remove token,category_id,options={},datatype="json"
        uri = "#{root_endpoint}/#{category_id}"
        params = {:options => options,:token => token}
        raw_resp = delete_request(uri,params)
        resp = Response.new(raw_resp)
      end

    end
  end
end

