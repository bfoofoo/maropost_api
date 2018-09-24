module MaropostApi
  class Campaigns < Resource
    include Enumerable

    def [](id)
      response = @request.get(endpoint: "/campaigns/#{id}.json")
      Response.new(response: response, parser: @parser).call
    end

      def all(page: 0)
        response = @request.get(endpoint: "/campaigns.json?page=#{page}")
        Response.new(response: response, parser: Parser::CollectionParser.new).call
      end

      def delivered_report(id:, page: 0)
        response = @request.get(endpoint: "/campaigns/#{id}/delivered_report.json?page=#{page}")
        Response.new(response: response, parser: Parser::CollectionParser.new).call
      end
  end
end
