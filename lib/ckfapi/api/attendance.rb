module Ckfapi
  module API
    # Attendance API
    #
    # Handling all Attendance requests
    class Attendance < Ckfapi::API::Core
      def self.root_endpoint
        "#{Ckfapi.api_uri}/v1/attendances"
      end

      # Create a attendance API
      #
      # @param attendance [Hash] attendance data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Attendance.create({attendance_amount: "",attendance_type: ""})
      def self.create token,attendance,data_type="json"
        uri = "#{root_endpoint}"
        params = {:attendance => attendance}.merge(token)
        raw_resp = post_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Index attendances
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Attendance.index
      def self.index token,options={},data_type="json"
        uri = "#{root_endpoint}"
        params = {:options => options}.merge(token)
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Get attendance
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Attendance.get(1,{detail: true})
      def self.get token,attendance_id,options={},data_type="json"
        uri = "#{root_endpoint}/#{attendance_id}"
        params = {:options => options}.merge(token)
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Delete attendance
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Attendance.remove(1,{detail: true})
      def self.remove token,attendance_id,options={},data_type="json"
        uri = "#{root_endpoint}/#{attendance_id}"
        params = {:options => options}.merge(token)
        raw_resp = delete_request(uri,params)
        resp = Response.new(raw_resp)
      end


      # Update attendance
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Attendance.update(1,{name: hola})
      def self.update token,attendance_id,attendance,data_type="json"
        uri = "#{root_endpoint}/#{attendance_id}"
        params = {:attendance => attendance}.merge(token)
        raw_resp = put_request(uri,params)
        resp = Response.new(raw_resp)
      end

    end
  end
end

