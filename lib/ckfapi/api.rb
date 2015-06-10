module Ckfapi
  # API module
  #
  # This module includes subgroups , each of which has diffirent responsisbilties
  module API

    # List all API subgroups
    def self.api_subgroups
      Ckfapi::API::Core.sub_classes
    end

    class Core
      extend Ckfapi::URLHelpers

      # List all supported APIs
      def self.supported_apis
        @supported_apis ||= []
      end

      def self.sub_classes
        @supported_apis ||= []
      end

      def self.singleton_method_added(method_id)
        @supported_apis ||= []
        @supported_apis << method_id if method_id != :singleton_method_added
      end

      def self.inherited(sub_class)
        @sub_classes ||= []
        @sub_classes << sub_class
      end

      private

      def self.method_missing(name,*args,&block)
        puts %q{API not found}
        puts "Please refer to Ckfapi::API.api_groups and #{self.to_s}.supported_apis for correct usage"
        # super(name,*args,&block)
      end

    end

  end

end
