module Ckfapi
  module API
    # User API
    #
    # Handling all User requests
    class User < Ckfapi::API::Core

      # Create a user API
      #
      # @param user [Hash] user data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::User.create({email: "",phone: ""})
      def self.create user,data_type="json"
        uri = "#{Ckfapi.api_uri}/v1/users"
        params = {:user => user}
        raw_resp = post_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Index users
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::User.index
      def self.index data_type="json"
        uri = "#{Ckfapi.api_uri}/v1/users"
        raw_resp = get_request(uri)
        resp = Response.new(raw_resp)
      end

    end
  end
end

