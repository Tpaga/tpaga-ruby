module Tpaga
module Swagger

  class Configuration
    
    attr_accessor :format, :api_key, :username, :password, :auth_token, :scheme, :host, :base_path, :user_agent, :logger, :inject_format, :force_ending_format, :camelize_params, :api_key_type, :api_key_name, :api_key_prefix
    
    # Defaults go in here..
    def initialize
      @format = 'json'
      @scheme = 'https'
      @host = 'api.tpaga.co.local:8443'
      @base_path = '/api'
      @user_agent = 'Swagger/Ruby/0.0.2/dev'
      @inject_format = false
      @force_ending_format = false
      @camelize_params = false
      # for API key/token authentication
      @api_key = '';
      @api_key_type = '';
      @api_key_name = '';
      @api_key_prefix = '';
      # for http basic authentication
      @username = ''
      @password = ''
    end

  end

end
end

