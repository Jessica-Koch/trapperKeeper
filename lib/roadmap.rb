module Roadmap
  def get_roadmap(id)
    road_id = self.get_me.dig('current_enrollment', 'roadmap_id')
    response = self.class.get("#{@base_url}/roadmaps/#{road_id}", headers: {'authorization': @auth_token})
    JSON.parse(response.body)
  end

  def get_checkpoint(id)
    response = self.class.get("#{@base_url}/checkpoints/#{id}", headers: { "authorization": @auth_token })
    JSON.parse(response.body)
  end
end
