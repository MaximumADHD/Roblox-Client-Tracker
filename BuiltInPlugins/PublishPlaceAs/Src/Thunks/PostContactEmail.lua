return function(apiImpl, contactEmail)
    return function()
        local universeId = game.GameId
        apiImpl.APIS.StudioModeration.contacts(universeId, contactEmail):makeRequest():andThen(function(response)
            if response.responseBody then
                -- for a success request, we expect the body to be empty
                print("Failed to submit contact email with response: ", response)
                return false
            end
            return true
        end, function(httpErr)
            print("Failed to submit contact email with error: ", httpErr)
        end)
    end
end
