local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)
local Rodux = require(Packages.Rodux)

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local NetworkError = require(Plugin.Core.Actions.NetworkError)

local function logNetworkError(response)
	warn(
		("Toolbox network error on %s %s:  (code %s)  %s"):format(
			response.requestType or "",
			response.url or "",
			tostring(response.responseCode or ""),
			response.responseBody or ""
		)
	)
end

return Rodux.createReducer({}, {
	[NetworkError.name] = function(state, action)
		if DebugFlags.shouldDebugWarnings() then
			logNetworkError(action.response)
		end

		return Cryo.List.join(state, { action.response })
	end,
})
