module MaropostApi
  class Campaigns < Resource
    include Enumerable

    def [](id)
      response = @request.get(endpoint: "/campaigns/#{id}.json")
      Response.new(response: response, parser: @parser).call
    end
  end
end
