--[[
	Sets which component is currently being viewed.
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local SetCurrentItem = require(Plugin.Src.Actions.SetCurrentItem)
local SetRBXParameters = require(Plugin.Src.Actions.SetRBXParameters)

return Rodux.createReducer({
	CurrentItem = nil,
	Parameters = {
		Namespace = "UpdateNotificationBadge",
		DetailType = "NotificationIcon",
		Detail = '{"badgeString": "1"}',
	}
}, {
	[SetCurrentItem.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			CurrentItem = action.currentItem,
		})
	end,
	[SetRBXParameters.name] = function (state,action)
		return Cryo.Dictionary.join(state, {
			Parameters = action.parameters
		})
	end
})
