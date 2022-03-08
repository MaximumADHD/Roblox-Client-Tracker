local Plugin = script.Parent.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local webKeys = require(Plugin.Core.Util.Permissions.Constants).webKeys

return function(networkInterface, assetId)
	return function(store)
        local body = {
            [webKeys.SubjectType] = webKeys.All,
            [webKeys.SubjectId] = "",
            [webKeys.Action] = webKeys.UseAction,
        }
		return networkInterface:grantAssetPermissions(assetId, body):andThen(function()
			end, function(result)
				if DebugFlags.shouldDebugWarnings() then
					warn("Patch make asset public unsuccessful")
				end

				store:dispatch(NetworkError(result))
			end)
	end
end