local Plugin = script.Parent.Parent.Parent.Parent

local SetIsVerifiedCreator = require(Plugin.Core.Actions.SetIsVerifiedCreator)
local NetworkError = require(Plugin.Core.Actions.NetworkError)

local FFlagToolboxSwitchVerifiedEndpoint = require(Plugin.Core.Util.getFFlagToolboxSwitchVerifiedEndpoint)

if FFlagToolboxSwitchVerifiedEndpoint then
	-- TODO: Delete file when FFlagToolboxEnableAssetConfigPhoneVerification is enabled
	return {}
end

return function(networkInterface)
	return function(store)
		return networkInterface:getIsVerifiedCreator():andThen(function(result)
			local response = result.responseBody
			store:dispatch(SetIsVerifiedCreator(response.isVerifiedCreator))
		end, function(result)
			store:dispatch(NetworkError(result))
		end)
	end
end
