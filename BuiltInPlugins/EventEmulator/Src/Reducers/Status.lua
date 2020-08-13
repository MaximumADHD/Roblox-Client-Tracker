--[[
	Sets which component is currently being viewed.
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Constants = require(Plugin.Src.Util.Constants)
local VIEW_ID = Constants.VIEW_ID

local Actions = Plugin.Src.Actions
local SetView = require(Actions.SetView)
local SetRBXParameters = require(Actions.SetRBXParameters)
local SetTheme = require(Actions.SetTheme)
local SetMemStoragePair = require(Actions.SetMemStoragePair)
local ClearMemStoragePair = require(Actions.ClearMemStoragePair)
local ClearRBXParameters = require(Actions.ClearRBXParameters)
local ChangeCurrentEventName = require(Actions.ChangeCurrentEventName)

return Rodux.createReducer({
	ActiveView = VIEW_ID.RBXEvent,
	Parameters = {
		Namespace = "UpdateNotificationBadge",
		Detail = '{"badgeString": "1"}',
		DetailType = "NotificationIcon",
	},
	ThemeName = "dark",
	MemStoragePair = {
		Key = "ThemeUpdate",
		Value = "dark",
	},
	CurrentEventName = VIEW_ID.RBXEvent,
}, {
	[SetView.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			ActiveView = action.view,
		})
	end,
	[SetRBXParameters.name] = function (state,action)		
		return Cryo.Dictionary.join(state, {
			Parameters = action.parameters,
		})
	end,
	[SetTheme.name] = function (state,action)
		return Cryo.Dictionary.join(state, {
			ThemeName = action.themeName,
		})
	end,
	[SetMemStoragePair.name] = function (state, action)
		local pair = {
			Key = action.pair.Key or state.MemStoragePair.Key,
			Value = action.pair.Value or state.MemStoragePair.Value,
		}
		
		return Cryo.Dictionary.join(state, {
			MemStoragePair = pair,
		})
	end,
	[ClearMemStoragePair.name] = function (state, action)
		return Cryo.Dictionary.join(state, {
			MemStoragePair = {
				Key = "",
				Value = "",
			}
		})
	end,
	[ClearRBXParameters.name] = function (state, action)
		return Cryo.Dictionary.join(state, {
			Parameters = {
				Detail = "",
				Namespace = "",
				DetailType = "",
			}
		})
	end,
	[ChangeCurrentEventName.name] = function (state, action)
		return Cryo.Dictionary.join(state, {
			CurrentEventName = action.name,
		})
	end
})
