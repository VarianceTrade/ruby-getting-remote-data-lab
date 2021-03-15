# Write your code here

require 'net/http'
require 'open-uri'
require 'json'



class GetRequester

    def initialize(url)
        @url = url
    end    
    
    def get_response_body #sends GET request to URL
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end


    def parse_json # use get_response_body to send a request
    # return Ruby Array or Hash converted fromt eh response
        response = JSON.parse(self.get_response_body)
        # response.collect do |response|
        #     response["agency"]  
        # end
    
    end
end 