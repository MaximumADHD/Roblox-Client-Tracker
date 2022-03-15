local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetAgeVerificationData = require(Actions.SetAgeVerificationData)

type VerificationResult = {
	isVerified : boolean,
	verifiedAge : number?,
}

return function(networkInterface)
	return function(store)
		return networkInterface:getUserAgeVerification():andThen(function(result)
			local response: VerificationResult = result.responseBody
			if response then
				store:dispatch(SetAgeVerificationData(response.isVerified, response.verifiedAge))
			else
				if DebugFlags.shouldDebugWarnings() then
					warn("Fetching verification response body is empty")
				end
				store:dispatch(NetworkError(result))
			end
		end, function(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Fetching verification was unsuccessful")
			end
			store:dispatch(NetworkError(result))
		end)
	end
end