local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)

local UpdateLastFriend = require(script.Parent.Parent.Actions.UpdateLastFriend)

return Rodux.createReducer({
	lastRemovedFriendId = "",
}, {
	[UpdateLastFriend.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			lastRemovedFriendId = tostring(action.lastRemovedFriendId) .. tostring(DateTime.now()),
		})
	end,
})
