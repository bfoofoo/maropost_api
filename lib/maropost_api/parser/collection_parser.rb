module MaropostApi
  module Parser
    class CollectionParser
      def initialize
        @entity_parser = EntityParser.new
      end

      def call(response)
        response.map do |entity|
          @entity_parser.call(entity)
        end
      rescue HTTParty::Error
        raise MaropostApi::NotFound
      end
    end
  end
end
