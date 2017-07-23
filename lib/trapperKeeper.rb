require 'httparty'
require 'json'

class TrapperKeeper
  include HTTParty

  def initialize(email, password)
    @base_url = 'https://www.bloc.io/api/v1'

    options = {
      body: {
        password: password,
        email: email
      }
    }
    response = self.class.post("#{@base_url}/sessions", options)
    @auth_token = response['auth_token']

    if response.nil? || @auth_token.nil?
      raise ArgumentError.new("The system was unable to authorize you.")
    end
  end

  def get_me
    response = self.class.get("#{@base_url}/users/me", headers: { "authorization": @auth_token })
    JSON.parse(response.body)
  end

  def get_mentor_availability
    mentor = self.get_me.dig('current_enrollment', 'mentor_id')
    response = self.class.get("#{@base_url}/mentors/#{mentor}/student_availability", headers: {"authorization": @auth_token})

    JSON.parse(ressponse.body)
  end

  def get_roadmap(id)

    response = self.class.get("#{@base_url}/roadmaps/#{id}")
    JSON.parse(response.body)
  end
end
