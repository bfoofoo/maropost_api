module MaropostApi
  class Resource
    def initialize(request:, parser: Parser::EntityParser.new)
      @request = request
      @parser = parser
    end
  end
end
