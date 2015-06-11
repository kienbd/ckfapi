module Ckfapi
  module URLHelpers

    def get_request url,args={}
      begin
        uri = URI.parse(url)
        #unless args.empty?
        #  uri.query = URI.encode_www_form( args )
        #  resp = Net::HTTP.get_response(uri)
        #end
        http = Net::HTTP.new(uri.host, uri.port)
        req = Net::HTTP::Get.new(uri, {'Content-Type' =>'application/json'})
        req.body = args.to_json
        resp = http.request(req)

      rescue => e
        resp = "connection error"
      end
    end

    def post_request url,args={}
      begin
        uri = URI.parse(url)
        http = Net::HTTP.new(uri.host, uri.port)
        req = Net::HTTP::Post.new(uri, {'Content-Type' =>'application/json'})
        req.body = args.to_json
        resp = http.request(req)
      rescue => e
        resp = "connection error"
      end
    end

    def put_request url, args={}
      begin
        uri = URI.parse(url)
        http = Net::HTTP.new(uri.host, uri.port)
        req = Net::HTTP::Put.new(uri, {'Content-Type' =>'application/json'})
        req.body = args.to_json
        resp = http.request(req)
      rescue => e
        resp = "connection error"
      end
    end

    def delete_request url,args={}
      begin
        uri = URI.parse(url)
        http = Net::HTTP.new(uri.host, uri.port)
        req = Net::HTTP::Delete.new(uri, {'Content-Type' =>'application/json'})
        req.body = args.to_json
        resp = http.request(req)
      rescue => e
        resp = "connection error"
      end
    end
  end

end

