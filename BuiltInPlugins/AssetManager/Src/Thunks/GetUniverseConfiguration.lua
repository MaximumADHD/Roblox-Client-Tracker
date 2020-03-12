local Plugin = script.Parent.Parent.Parent

local SetUniverseName = require(Plugin.Src.Actions.SetUniverseName)

return function(apiImpl)
    return function(store)
        apiImpl.Develop.V2.Universes.getConfiguration(game.GameId):makeRequest()
        :andThen(function(response)
            local body = response.responseBody
            if not body then
                return
            end
            store:dispatch(SetUniverseName(body.name))
        end, function()
            error("Failed to load universe configuration")
        end)
    end
end