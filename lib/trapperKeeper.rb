require 'httparty'


class TrapperKeeper
  include HTTParty
  def initialize(email, password)
    @base_uri = 'https://www.bloc.io/api/v1'
    response = self.class.post("#{@base_uri}/sessions", body: {email: email, password: password})
    @auth_token = response['auth_token']

    if response.nil? || @auth_token.nil?
      puts "Invalid credentials."
    else
      puts @auth_token
    end
  end

end
