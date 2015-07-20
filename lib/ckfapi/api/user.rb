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
      def self.create token,user,data_type="json"
        uri = "#{root_endpoint}"
        params = {:user => user}.merge(token)
        raw_resp = post_request(uri,params)
        resp = Response.new(raw_resp)
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
      def self.auth token,data_type="json"
        uri = "#{root_endpoint}/auth"
        params = {}.merge(token)
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Update User API
      #
      # @param user [Hash] user data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::User.update(1,{name: ""})
      def self.update token,user_id,user,data_type="json"
        uri = "#{root_endpoint}/#{user_id}"
        params = {:user => user}.merge(token)
        raw_resp = put_request(uri,params)
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
      # @param user [Hash] user data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::User.get(1)
      def self.get token,user_id,data_type="json"
        uri = "#{root_endpoint}/#{user_id}"
        params = {}.merge(token)
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Delete User API
      #
      # @param user [Hash] user data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::user.remove(1)
      def self.remove token,user_id,options={},datatype="json"
        uri = "#{root_endpoint}/#{user_id}"
        params = {:options => options}.merge(token)
        raw_resp = delete_request(uri,params)
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

