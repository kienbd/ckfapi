module Ckfapi
  module API
    # FreezeTime API
    #
    # Handling all FreezeTime requests
    class FreezeTime < Ckfapi::API::Core
      def self.root_endpoint
        "#{Ckfapi.api_uri}/v1/freeze_times"
      end

      # Create a freeze_time API
      #
      # @param freeze_time [Hash] freeze_time data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::FreezeTime.create({freeze_time_amount: "",freeze_time_type: ""})
      def self.create token,freeze_time,data_type="json"
        uri = "#{root_endpoint}"
        params = {:freeze_time => freeze_time}.merge(token)
        raw_resp = post_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Index freeze_times
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::FreezeTime.index
      def self.index token,options={},data_type="json"
        uri = "#{root_endpoint}"
        params = {:options => options}.merge(token)
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Get freeze_time
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::FreezeTime.get(1,{detail: true})
      def self.get token,freeze_time_id,options={},data_type="json"
        uri = "#{root_endpoint}/#{freeze_time_id}"
        params = {:options => options}.merge(token)
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Delete freeze_time
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::FreezeTime.remove(1,{detail: true})
      def self.remove token,freeze_time_id,options={},data_type="json"
        uri = "#{root_endpoint}/#{freeze_time_id}"
        params = {:options => options}.merge(token)
        raw_resp = delete_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Update freeze_time
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::FreezeTime.update(1,{name: hola})
      def self.update token,freeze_time_id,freeze_time,data_type="json"
        uri = "#{root_endpoint}/#{freeze_time_id}"
        params = {:freeze_time => freeze_time}.merge(token)
        raw_resp = put_request(uri,params)
        resp = Response.new(raw_resp)
      end

      def self.verify_freeze token,options={},data_type="json"
        uri = "#{root_endpoint}"
        params = {:options => options}.merge(token)
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

    end
  end
end

