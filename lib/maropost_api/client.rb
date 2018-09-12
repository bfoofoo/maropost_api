module MaropostApi
  class Client
    def initialize(auth_token:, account_number:)
      @request = Request.new(auth_token: auth_token, account_number: account_number)
    end

    def contacts
      @contacts ||= Contacts.new(request: @request)
    end

    def lists
      @lists ||= Lists.new(request: @request)
    end

    def journeys
      @journeys ||= Journeys.new(request: @request)
    end

    def workflows
      @workflows ||= Workflows.new(request: @request)
    end

    def reports
      @reports ||= Reports.new(request: @request)
    end

    def global_unsubscribes
      @global_unsubscribes ||= GlobalUnsubscribes.new(request: @request)
    end
  end
end
