local Plugin = script.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local Immutable = require(Plugin.Core.Util.Immutable)

local NetworkError = require(Plugin.Core.Actions.NetworkError)

local function logNetworkError(response)
	warn(("Toolbox network error on %s %s:  (code %s)  %s"):format(
		response.requestType,
		response.url,
		tostring(response.responseCode),
		response.responseBody))
end

return function(state, action)
	state = state or {}
	if action.type == NetworkError.name then
		if DebugFlags.shouldDebugWarnings() then
			logNetworkError(action.response)
		end
		return Immutable.Append(state, action.response)
		-- TODO CLIDEVSRVS-1591: Delay clearing
	end
	return state
end
