module Rawg
    class Client
        def self.creator_roles
            response = Request.call(http_method: 'get', endpoint: "/creator-roles")
        end
        
        def self.creators
            response = Request.call(http_method: 'get', endpoint: "/creators")
        end

        def self.creator(id)
            response = Request.call(http_method: 'get', endpoint: "/creators/#{id}")
        end
    end
end