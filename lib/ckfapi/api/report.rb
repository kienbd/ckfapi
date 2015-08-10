module Ckfapi
  module API
    # Report API
    #
    # Handling all Report requests
    class Report < Ckfapi::API::Core
      def self.root_endpoint
        "#{Ckfapi.api_uri}/v1/reports"
      end

      # Create a report API
      #
      # @param report [Hash] report data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Report.create({report_amount: "",report_type: ""})
      def self.create token,report,data_type="json"
        uri = "#{root_endpoint}"
        params = {:report => report}.merge(token)
        raw_resp = post_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Index reports
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Report.index
      def self.index token,options={},data_type="json"
        uri = "#{root_endpoint}"
        params = {:options => options}.merge(token)
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Get report
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Report.get(1,{detail: true})
      def self.get token,report_id,options={},data_type="json"
        uri = "#{root_endpoint}/#{report_id}"
        params = {:options => options}.merge(token)
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Delete report
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Report.remove(1,{detail: true})
      def self.remove token,report_id,options={},data_type="json"
        uri = "#{root_endpoint}/#{report_id}"
        params = {:options => options}.merge(token)
        raw_resp = delete_request(uri,params)
        resp = Response.new(raw_resp)
      end


      # Update report
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Report.update(1,{name: hola})
      def self.update token,report_id,report,data_type="json"
        uri = "#{root_endpoint}/#{report_id}"
        params = {:report => report}.merge(token)
        raw_resp = put_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Stat report
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Report.stat(1, type, {year: 2015, month: 12, day: 1})
      def self.stat token,report_id,type,date,data_type="json"
        uri = "#{root_endpoint}/#{report_id}/stat/#{type}"
        params = {:date => date}.merge(token)
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

    end
  end
end

