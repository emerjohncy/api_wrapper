module Rawg
    class Client
        def self.creator_roles
            response = Request.call(http_method: 'get', endpoint: "/creator-roles?")
        end
        
        def self.creators(page_num)
            response = Request.call(http_method: 'get', endpoint: "/creators?page=#{page_num}&page_size=40&")
        end

        def self.creator(id)
            response = Request.call(http_method: 'get', endpoint: "/creators/#{id}?")
        end
    end
end