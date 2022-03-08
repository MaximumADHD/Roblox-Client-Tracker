local Plugin = script.Parent.Parent.Parent
local SetGameConfiguration = require(Plugin.Src.Actions.SetGameConfiguration)
local SetChooseGameQueryState = require(Plugin.Src.Actions.SetChooseGameQueryState)
local Constants = require(Plugin.Src.Resources.Constants)
local FFlagDebugFixPublishAsWhenQueryFails = game:GetFastFlag("DebugFixPublishAsWhenQueryFails")

return function(universeId, apiImpl)
	return function(store)
        apiImpl.Develop.V2.Universes.configuration(universeId):makeRequest()
        :andThen(function(response)
            local configuration = response.responseBody
            store:dispatch(SetGameConfiguration(configuration))
        end, function(err)
            if FFlagDebugFixPublishAsWhenQueryFails then
              store:dispatch(SetChooseGameQueryState(Constants.QUERY_STATE.QUERY_STATE_FAILED))
            else
              error("Failed to load game configuration.")
            end
        end)
	end
end
