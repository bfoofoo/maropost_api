module MaropostApi
  class Lists
    def initialize(request:, parser: Parser::EntityParser.new)
      @request = request
      @parser = parser
    end

    def all
      response = @request.get(endpoint: "/lists.json")
      Response.new(response: response, parser: @parser).call
    end

    def show(id:)
      response = @request.get(endpoint: "/lists/#{id}.json")
      Response.new(response: response, parser: @parser).call
    end
  end
end
