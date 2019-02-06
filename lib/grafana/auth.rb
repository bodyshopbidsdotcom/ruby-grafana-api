module Grafana

  module Auth

    def create_api_key(name, role)
      endpoint = "/api/auth/keys"
      @logger.info("Creating API Key (POST /auth/keys)") if @debug
      return post_request(endpoint, {'name' => name, 'role' => role})
    end
  end

end
