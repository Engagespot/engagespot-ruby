require 'httparty'

class Engagespot
  attr_reader :base_url, :api_key, :api_secret

  def initialize(base_url: 'https://api.engagespot.co/v3', api_key: nil, api_secret: nil)
    @base_url = base_url
    @api_key = api_key || raise('api_key is required')
    @api_secret = api_secret || raise('api_secret is required')
  end

  def send(send_request)
    headers = {
      'Content-Type' => 'application/json',
      'X-ENGAGESPOT-API-KEY' => @api_key,
      'X-ENGAGESPOT-API-SECRET' => @api_secret
    }

    begin
      response = HTTParty.post("#{@base_url}/notifications", headers: headers, body: send_request.to_json)
    rescue Exception => ex
      error = ex.to_s
      return {
        success: false,
        message: error
      }
    else
      response_code = response.code
      if response_code == 202
        return {
          success: true,
          message: response.parsed_response
        }
      else
        return {
          success: false,
          message: response.parsed_response
        }
      end
    end
  end

  def create_or_update_user(identifier, profile: nil)
    raise 'identifier is required' if identifier.nil?

    headers = {
      'Content-Type' => 'application/json',
      'X-ENGAGESPOT-API-KEY' => @api_key,
      'X-ENGAGESPOT-API-SECRET' => @api_secret
    }

    begin
      url = "#{@base_url}/users/#{identifier}"
      response = HTTParty.put(url, headers: headers, body: profile.to_json)
    rescue Exception => ex
      error = ex.to_s
      return {
        success: false,
        message: error
      }
    else
      response_code = response.code
      if response_code == 200
        return {
          success: true,
          message: response.parsed_response
        }
      else
        return {
          success: false,
          message: response.parsed_response
        }
      end
    end
  end
end
