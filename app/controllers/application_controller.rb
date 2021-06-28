class ApplicationController < ActionController::API

  # Pulls out time_entry data from Harvest API
  def pull_time_entries_harvest(user_id)
    harvest_uri = URI("https://api.harvestapp.com/v2/time_entries?user_id=#{user_id}")
    Net::HTTP.start(harvest_uri.host, harvest_uri.port, use_ssl: true) do |http|
      harvest_request = Net::HTTP::Get.new harvest_uri
      harvest_request["Authorization"] = "Bearer #{harvest_access_token}"
      harvest_request["Harvest-Account-ID"] = harvest_account_id
      harvest_request["User-Agent"] = harvest_user_agent
      harvest_response = http.request harvest_request
      json_response = JSON.parse(harvest_response.body)
      return json_response["time_entries"]
    end
  end

  # Pulls out tasks from Harvest API
  def pull_tasks_harvest
    harvest_uri = URI("https://api.harvestapp.com/v2/task_assignments")
    Net::HTTP.start(harvest_uri.host, harvest_uri.port, use_ssl: true) do |http|
      harvest_request = Net::HTTP::Get.new harvest_uri
      harvest_request["Authorization"] = "Bearer #{harvest_access_token}"
      harvest_request["Harvest-Account-ID"] = harvest_account_id
      harvest_request["User-Agent"] = harvest_user_agent
      harvest_response = http.request harvest_request
      json_response = JSON.parse(harvest_response.body)
      return json_response["task_assignments"]
    end
  end

  # Pulls out all projects from Harvest API
  def pull_projects_harvest
    harvest_uri = URI("https://api.harvestapp.com/v2/projects")
    Net::HTTP.start(harvest_uri.host, harvest_uri.port, use_ssl: true) do |http|
      harvest_request = Net::HTTP::Get.new harvest_uri
      harvest_request["Authorization"] = "Bearer #{harvest_access_token}"
      harvest_request["Harvest-Account-ID"] = harvest_account_id
      harvest_request["User-Agent"] = harvest_user_agent
      harvest_response = http.request harvest_request
      json_response = JSON.parse(harvest_response.body)
      return json_response["projects"]
    end
  end
end
