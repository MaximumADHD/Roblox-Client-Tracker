return function(apiImpl)
    return function(store)
        apiImpl.APIS.UserAgreements.V1.agreementsResolution("App"):makeRequest()
        :andThen(function(response)
            local body = response.responseBody
            if not body then
                return
            end
        end, function()
            error("Failed to get Player user agreements acceptances.")
        end)
    end
end