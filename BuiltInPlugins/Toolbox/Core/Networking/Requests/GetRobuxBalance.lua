--[[
	Used to get the current Studio user's Robux balance.

	Params:
		networkInterface = The NetworkInterface impl.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local getUserId = require(Plugin.Core.Util.getUserId)

local NetworkError = require(Plugin.Core.Actions.NetworkError)
local SetRobuxBalance = require(Plugin.Core.Actions.SetRobuxBalance)

return function(networkInterface)
	return function(store)
		local myUserId = getUserId()
		return networkInterface:getRobuxBalance(myUserId):andThen(function(result)
			local data = result.responseBody
			store:dispatch(SetRobuxBalance(tonumber(data.robux)))
		end, function(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Could not get Robux balance")
			end

			store:dispatch(NetworkError(result))
		end)
	end
end
