module Ckfapi
  module API
    # Item API
    #
    # Handling all Item requests
    class Item < Ckfapi::API::Core
      def root_endpoint
        "#{Ckfapi.api_uri}/v1/items"
      end

      # Create a item API
      #
      # @param item [Hash] item data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Item.create({name: "",description: "",tax: 0.05,unit: "",unit_price: 1000.05 })
      def self.create item,data_type="json"
        uri = "#{root_endpoint}"
        params = {:item => item}
        raw_resp = post_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Index items
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Item.index({detail: true})
      def self.index options={},data_type="json"
        uri = "#{root_endpoint}"
        params = {:options => options}
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Get Item API
      #
      # @param item [Hash] item data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Item.get(1,{detail: true })
      def self.get item_id,options={},data_type="json"
        uri = "#{root_endpoint}/#{item_id}"
        params = {:options => options}
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Update Item API
      #
      # @param item [Hash] item data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Item.update(1,{name: ""})
      def self.update item_id,item,data_type="json"
        uri = "#{root_endpoint}/#{item_id}"
        params = {:item => item}
        raw_resp = put_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Delete Item API
      #
      # @param item [Hash] item data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Item.remove(1)
      def self.remove item_id,options={},datatype="json"
        uri = "#{root_endpoint}/#{item_id}"
        params = {:options => options}
        raw_resp = delete_request(uri,params)
        resp = Response.new(raw_resp)
      end

    end
  end
end

