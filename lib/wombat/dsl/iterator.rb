module Wombat
  module DSL
    class Iterator < PropertyGroup
      attr_accessor :wombat_property_selector, :wombat_property_namespaces

      def initialize(name, selector, namespaces=nil)
        @wombat_property_selector = selector
        @wombat_property_namespaces = namespaces
        super(name)
      end

      # So that Property::Locators::Iterator can identify this class
      # as an iterator property.
      def wombat_property_format
        :iterator
      end
    end
  end
end
