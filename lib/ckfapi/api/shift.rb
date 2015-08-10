module Ckfapi
  module API
    # Shift API
    #
    # Handling all Shift requests
    class Shift < Ckfapi::API::Core
      def self.root_endpoint
        "#{Ckfapi.api_uri}/v1/shifts"
      end

      # Create a shift API
      #
      # @param shift [Hash] shift data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Shift.create({shift_amount: "",shift_type: ""})
      def self.create token,shift,data_type="json"
        uri = "#{root_endpoint}"
        params = {:shift => shift}.merge(token)
        raw_resp = post_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Index shifts
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Shift.index
      def self.index token,options={},data_type="json"
        uri = "#{root_endpoint}"
        params = {:options => options}.merge(token)
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Get shift
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Shift.get(1,{detail: true})
      def self.get token,shift_id,options={},data_type="json"
        uri = "#{root_endpoint}/#{shift_id}"
        params = {:options => options}.merge(token)
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Delete shift
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Shift.remove(1,{detail: true})
      def self.remove token,shift_id,options={},data_type="json"
        uri = "#{root_endpoint}/#{shift_id}"
        params = {:options => options}.merge(token)
        raw_resp = delete_request(uri,params)
        resp = Response.new(raw_resp)
      end


      # Update shift
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Shift.update(1,{name: hola})
      def self.update token,shift_id,shift,data_type="json"
        uri = "#{root_endpoint}/#{shift_id}"
        params = {:shift => shift}.merge(token)
        raw_resp = put_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Stat shift
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Shift.stat(1, type, {year: 2015, month: 12, day: 1})
      def self.stat token,shift_id,type,date,data_type="json"
        uri = "#{root_endpoint}/stat/#{type}"
        params = {:date => date}.merge(token)
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

    end
  end
end

