--[[
	The current status of the plugin.
	Holds on to which component is currently being viewed in the InfoPanel.
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local SetCurrentItem = require(Plugin.Src.Actions.SetCurrentItem)

return Rodux.createReducer({
	CurrentItem = nil,
}, {
	[SetCurrentItem.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			CurrentItem = action.currentItem,
		})
	end,
})
