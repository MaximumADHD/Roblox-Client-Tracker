--[[
	Holds previous items
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Constants = require(Plugin.Src.Util.Constants)


local Actions = Plugin.Src.Actions
local AddHistoryItem = require(Actions.AddHistoryItem)
local RemoveHistoryItem = require(Actions.RemoveHistoryItem)

local TemplateItem = {
	Name = "",
	View = "",
	Data = {},
}

return Rodux.createReducer({
	HistoryItems = {}
}, {
	[AddHistoryItem.name] = function(state, action)
		local items = Cryo.Dictionary.join(state.HistoryItems, {
			[action.item.Name] = action.item
		})

		return Cryo.Dictionary.join(state, {
			HistoryItems = items,
		})
	end,

	[RemoveHistoryItem.name] = function (state, action)
		local items = Cryo.Dictionary.join(state.HistoryItems, {
			[action.historyItem] = Cryo.None,
		})

		return Cryo.Dictionary.join(state, {
			HistoryItems = items,
		})
	end
})
