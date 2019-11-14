local Plugin = script.Parent.Parent.Parent.Parent

local HttpService = game:GetService("HttpService")

local Actions = Plugin.Core.Actions
local SetIsPackage = require(Actions.SetIsPackage)
local NetworkError = require(Actions.NetworkError)

return function(networkInterface, assetId)
    return function(store)
        return networkInterface:postForPackageMetadata(assetId):andThen(
            function(result)
                local response = result.responseBody.data[1]
                
                if response.message and response.message == "blank" then
                    store:dispatch(SetIsPackage(true))
                else
                    store:dispatch(SetIsPackage(false))
                end
            end,
            function(err)
                store:dispatch(SetIsPackage(false))
                store:dispatch(NetworkError(err))
            end
        )
    end
end