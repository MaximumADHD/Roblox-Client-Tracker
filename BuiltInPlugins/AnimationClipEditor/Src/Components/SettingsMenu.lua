--[[
	Handles the settings menu which appears when the user clicks the SettingsButton.

	Props:
		bool ShowMenu = Whether to display the menu.
		function OnMenuOpened = A callback for when the menu is displayed.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)

local Localizing = require(Plugin.UILibrary.Localizing)
local withLocalization = Localizing.withLocalization

local Constants = require(Plugin.Src.Util.Constants)

local ContextMenu = require(Plugin.Src.Components.ContextMenu)
local SetShowAsSeconds = require(Plugin.Src.Actions.SetShowAsSeconds)
local ToggleSnapToKeys = require(Plugin.Src.Thunks.ToggleSnapToKeys)
local SetShowEvents = require(Plugin.Src.Actions.SetShowEvents)

local SettingsMenu = Roact.PureComponent:extend("SettingsMenu")

function SettingsMenu:makeTimelineUnitMenu(localization)
	local props = self.props

	return {
		Name = localization:getText("Settings", "TimelineUnit"),
		Items = {
			{Name = localization:getText("Settings", "Seconds"), Value = Constants.TIMELINE_UNITS.Seconds},
			{Name = localization:getText("Settings", "Frames"), Value = Constants.TIMELINE_UNITS.Frames},
		},
		CurrentItem = props.ShowAsSeconds and Constants.TIMELINE_UNITS.Seconds or Constants.TIMELINE_UNITS.Frames,
		ItemSelected = function(item)
			props.SetShowAsSeconds(item.Value == Constants.TIMELINE_UNITS.Seconds)
			props.Analytics:onTimeUnitChanged(item.Value)
		end,
	}
end

function SettingsMenu:makeMenuActions(localization)
	local props = self.props
	local actions = {}

	table.insert(actions, self:makeTimelineUnitMenu(localization))
	table.insert(actions, Constants.MENU_SEPARATOR)
	table.insert(actions, {
		Name = localization:getText("Settings", "ShowEvents"),
		IsEnabled = props.ShowEvents,
		ItemSelected = function()
			props.SetShowEvents(not props.ShowEvents)
		end,
	})
	table.insert(actions, {
		Name = localization:getText("Settings", "SnapToKeys"),
		IsEnabled = props.SnapToKeys,
		ItemSelected = function()
			props.ToggleSnapToKeys()
			props.Analytics:onKeyframeSnapChanged(not props.SnapToKeys)
		end,
	})

	return actions
end

function SettingsMenu:render()
	return withLocalization(function(localization)
		local props = self.props
		local showMenu = props.ShowMenu

		return showMenu and Roact.createElement(ContextMenu, {
			Actions = self:makeMenuActions(localization),
			OnMenuOpened = props.OnMenuOpened,
		}) or nil
	end)
end

local function mapStateToProps(state, props)
	local status = state.Status
	return {
		ShowAsSeconds = status.ShowAsSeconds,
		SnapToKeys = status.SnapToKeys,
		ShowEvents = status.ShowEvents,
		Analytics = state.Analytics,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetShowAsSeconds = function(showAsSeconds)
			dispatch(SetShowAsSeconds(showAsSeconds))
		end,

		ToggleSnapToKeys = function()
			dispatch(ToggleSnapToKeys())
		end,

		SetShowEvents = function(showEvents)
			dispatch(SetShowEvents(showEvents))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(SettingsMenu)