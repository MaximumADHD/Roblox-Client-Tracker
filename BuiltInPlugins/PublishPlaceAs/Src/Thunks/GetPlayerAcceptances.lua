local Plugin = script.Parent.Parent.Parent
local SetPlayerAcceptance = require(Plugin.Src.Actions.SetPlayerAcceptance)

return function(apiImpl)
    return function(store)
        apiImpl.APIS.UserAgreements.V1.agreementsResolution("App"):makeRequest()
        :andThen(function(response)
            store:dispatch(SetPlayerAcceptance(next(response.responseBody) == nil))
        end, function()
            error("Failed to get Player user agreements acceptances.")
        end)
    end
end
