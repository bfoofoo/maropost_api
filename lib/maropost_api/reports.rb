module MaropostApi
  class Reports < Resource
    def opens(params)
      response = @request.get(endpoint: "/reports/opens.json?#{params.to_query}")
      Response.new(response: response, parser: Parser::CollectionParser.new).call
    end

    def clicks(params)
      response = @request.get(endpoint: "/reports/clicks.json?#{params.to_query}")
      Response.new(response: response, parser: Parser::CollectionParser.new).call
    end
  end
end
