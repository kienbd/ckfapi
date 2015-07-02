module Ckfapi
  module API
    # User API
    #
    # Handling all User requests
    class User < Ckfapi::API::Core
      def self.root_endpoint
        "#{Ckfapi.api_uri}/v1/users"
      end

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
        uri = "#{root_endpoint}"
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
      def self.index token,filter={},data_type="json"
        uri = "#{root_endpoint}"
        params = {:filter => filter}.merge(token)
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Get User API
      #
      # @param sale [Hash] sale data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::User.get(1)
      def self.get token,sale_id,data_type="json"
        uri = "#{root_endpoint}/#{sale_id}"
        params = {}.merge(token)
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Get Token
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::User.get_token(email, password)
      def self.get_token email,password,data_type="json"
        uri = "#{Ckfapi.api_uri}/v1/tokens"
        params = {:email => email,:password => password}
        raw_resp = post_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Remove Token
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::User.remove_token(token)
      def self.remove_token token,data_type="json"
        uri = "#{Ckfapi.api_uri}/v1/tokens"
        raw_resp = delete_request(uri,{token: token})
        resp = Response.new(raw_resp)
      end

    end
  end
end

