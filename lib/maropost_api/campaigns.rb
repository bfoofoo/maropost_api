module MaropostApi
  class Campaigns < Resource
    include Enumerable

    def [](id)
      response = @request.get(endpoint: "/campaigns/#{id}.json")
      Response.new(response: response, parser: @parser).call
    end

    def all
      response = @request.get(endpoint: '/campaigns.json')
      Response.new(response: response, parser: Parser::CollectionParser.new).call
    end
  end
end
