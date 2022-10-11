local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetDescendantPermissions = require(Actions.SetDescendantPermissions)

return function(networkInterface, assetId)
	return function(store)
		local state = store:getState()
		local permissionsTable = state.descendantPermissions
		return networkInterface:getAssetPermissions(assetId):andThen(function(result)
			local response = result.responseBody
			if response and response.results then
				permissionsTable = Cryo.Dictionary.join(permissionsTable, {
					[assetId] = response.results[1],
				})
				store:dispatch(SetDescendantPermissions(permissionsTable))
			else
				warn("Fetching asset permissions response body empty")
			end
		end, function(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Fetching asset permissions unsuccessful")
			end
			store:dispatch(NetworkError(result))
		end)
	end
end
