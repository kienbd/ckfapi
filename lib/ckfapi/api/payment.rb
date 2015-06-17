module Ckfapi
  module API
    # Payment API
    #
    # Handling all Payment requests
    class Payment < Ckfapi::API::Core
      def self.root_endpoint
        "#{Ckfapi.api_uri}/v1/payments"
      end

      # Create a payment API
      #
      # @param payment [Hash] payment data
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Payment.create({payment_amount: "",payment_type: ""})
      def self.create payment,data_type="json"
        uri = "#{root_endpoint}"
        params = {:payment => payment}
        raw_resp = post_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Index payments
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Payment.index
      def self.index options={},data_type="json"
        uri = "#{root_endpoint}"
        params = {:options => options}
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Get payment
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Payment.get(1,{detail: true})
      def self.get payment_id,options={},data_type="json"
        uri = "#{root_endpoint}/#{payment_id}"
        params = {:options => options}
        raw_resp = get_request(uri,params)
        resp = Response.new(raw_resp)
      end

      # Delete payment
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Payment.remove(1,{detail: true})
      def self.remove payment_id,options={},data_type="json"
        uri = "#{root_endpoint}/#{payment_id}"
        params = {:options => options}
        raw_resp = delete_request(uri,params)
        resp = Response.new(raw_resp)
      end


      # Update payment
      #
      # @param data_type [String] the return type, `json` or `xml`
      #
      # @return [Response] return as Response object.
      #
      # @example
      #     Ckfapi::API::Payment.update(1,{name: hola})
      def self.update payment_id,payment,data_type="json"
        uri = "#{root_endpoint}/#{payment_id}"
        params = {:payment => payment}
        raw_resp = put_request(uri,params)
        resp = Response.new(raw_resp)
      end

    end
  end
end

