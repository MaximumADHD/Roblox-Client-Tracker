--[[
	Handles the settings menu which appears when the user clicks the SettingsButton.

	Props:
		bool ShowMenu = Whether to display the menu.
		function OnMenuOpened = A callback for when the menu is displayed.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Util.Constants)

local ContextMenu = require(Plugin.Src.Components.ContextMenu)
local SetShowAsSeconds = require(Plugin.Src.Actions.SetShowAsSeconds)
local SetSnapMode = require(Plugin.Src.Actions.SetSnapMode)
local SetFrameRate = require(Plugin.Src.Actions.SetFrameRate)
local SetShowEvents = require(Plugin.Src.Actions.SetShowEvents)
local SetPlaybackSpeed = require(Plugin.Src.Thunks.Playback.SetPlaybackSpeed)

local SettingsMenu = Roact.PureComponent:extend("SettingsMenu")

function SettingsMenu:makeTimelineUnitMenu(localization)
	local props = self.props

	return {
		Name = localization:getText("Settings", "TimelineUnit"),
		Items = {
			{Name = localization:getText("Settings", "Seconds"), Value = Constants.TIMELINE_UNITS.Seconds},
			{Name = localization:getText("Settings", "Frames"), Value = Constants.TIMELINE_UNITS.Frames},
		},
		CurrentValue = props.ShowAsSeconds and Constants.TIMELINE_UNITS.Seconds or Constants.TIMELINE_UNITS.Frames,
		ItemSelected = function(item)
			props.SetShowAsSeconds(item.Value == Constants.TIMELINE_UNITS.Seconds)
			props.Analytics:report("onTimeUnitChanged", item.Value)
		end,
	}
end

function SettingsMenu:makePlaybackSpeedMenu(localization)
	local props = self.props
	local playbackSpeed = props.PlaybackSpeed

	local isPresetPlaybackSpeed = false
	for _, presetSpeed in pairs(Constants.PLAYBACK_SPEEDS) do
		if presetSpeed ~= Constants.PLAYBACK_SPEEDS.CUSTOM and playbackSpeed == presetSpeed then
			isPresetPlaybackSpeed = true
			break
		end
	end

	return {
		Name = localization:getText("Settings", "PlaybackSpeed") ..": " ..string.format("%.2f", playbackSpeed):gsub("%.?0+$", "") .."x",
		Items = {
			{Name = localization:getText("Settings", "025x"), Value = Constants.PLAYBACK_SPEEDS.PBS_025},
			{Name = localization:getText("Settings", "05x"), Value = Constants.PLAYBACK_SPEEDS.PBS_05},
			{Name = localization:getText("Settings", "1x"), Value = Constants.PLAYBACK_SPEEDS.PBS_1},
			{Name = localization:getText("Settings", "2x"), Value = Constants.PLAYBACK_SPEEDS.PBS_2},
			{Name = localization:getText("Settings", "4x"), Value = Constants.PLAYBACK_SPEEDS.PBS_4},
			{Name = localization:getText("Settings", "CustomPlaybackSpeed") .."...", Value = Constants.PLAYBACK_SPEEDS.CUSTOM},
		},

		CurrentValue = isPresetPlaybackSpeed and playbackSpeed or Constants.PLAYBACK_SPEEDS.CUSTOM,
		ItemSelected = function(item)
			if item.Value ~= Constants.PLAYBACK_SPEEDS.CUSTOM then
				props.SetPlaybackSpeed(item.Value)
			else
				if props.OnChangePlaybackSpeed then
					props.OnChangePlaybackSpeed()
				end
			end
		end,
	}
end

function SettingsMenu:makeFrameRateMenu(localization)
	local props = self.props
	local animationData = props.AnimationData
	if not animationData or not animationData.Metadata then
		return
	end

	local currentFPS = props.FrameRate

	local isPresetFrameRate = false
	for _, fps in pairs(Constants.FRAMERATES) do
		if fps ~= Constants.FRAMERATES.CUSTOM and fps == currentFPS then
			isPresetFrameRate = true
			break
		end
	end

	return {
		Name = localization:getText("Settings", "FrameRate") ..": " ..currentFPS .." fps",
		Items = {
			{Name = localization:getText("Settings", "24FPS"), Value = Constants.FRAMERATES.FPS_24},
			{Name = localization:getText("Settings", "30FPS"), Value = Constants.FRAMERATES.FPS_30},
			{Name = localization:getText("Settings", "60FPS"), Value = Constants.FRAMERATES.FPS_60},
			{Name = localization:getText("Settings", "120FPS"), Value = Constants.FRAMERATES.FPS_120},
			{Name = localization:getText("Settings", "CustomFPS") .."...", Value = Constants.FRAMERATES.CUSTOM},
		},

		CurrentValue = isPresetFrameRate and currentFPS or Constants.FRAMERATES.CUSTOM,
		ItemSelected = function(item)
			if item.Value ~= Constants.FRAMERATES.CUSTOM then
				props.SetFrameRate(item.Value)
			else
				if props.OnChangeFPS then
					props.OnChangeFPS()
				end
			end
		end,
	}
end

function SettingsMenu:makeSnapMenu(localization)
	local props = self.props
	local snapMode = props.SnapMode

	return {
		Name = localization:getText("Settings", "SnapMode"),
		Items = {
			{Name = localization:getText("Settings", "SnapKeyframes"), Value = Constants.SNAP_MODES.Keyframes},
			{Name = localization:getText("Settings", "SnapFrames"), Value = Constants.SNAP_MODES.Frames},
			{Name = localization:getText("Settings", "SnapNone"), Value = Constants.SNAP_MODES.None},
		},

		CurrentValue = snapMode,
		ItemSelected = function(item)
			props.SetSnapMode(item.Value)
		end,
	}
end

function SettingsMenu:makeMenuActions(localization)
	local props = self.props
	local actions = {}

	table.insert(actions, self:makeTimelineUnitMenu(localization))
	table.insert(actions, Constants.MENU_SEPARATOR)

	table.insert(actions, self:makeFrameRateMenu(localization))
	table.insert(actions, self:makePlaybackSpeedMenu(localization))
	table.insert(actions, Constants.MENU_SEPARATOR)

	table.insert(actions, {
		Name = localization:getText("Settings", "ShowEvents"),
		Checked = props.ShowEvents,
		ItemSelected = function()
			props.SetShowEvents(not props.ShowEvents)
		end,
	})
	table.insert(actions, self:makeSnapMenu(localization))
	return actions
end

function SettingsMenu:render()
	local localization = self.props.Localization
		local props = self.props
		local showMenu = props.ShowMenu

		return showMenu and Roact.createElement(ContextMenu, {
			Actions = self:makeMenuActions(localization),
			OnMenuOpened = props.OnMenuOpened,
		}) or nil
end

local function mapStateToProps(state, props)
	local status = state.Status

	local stateToProps = {
		ShowAsSeconds = status.ShowAsSeconds,
		ShowEvents = status.ShowEvents,
		Analytics = state.Analytics,
		AnimationData = state.AnimationData,
		FrameRate = status.FrameRate,
		SnapMode = status.SnapMode,
		PlaybackSpeed = status.PlaybackSpeed,
	}

	return stateToProps
end

local function mapDispatchToProps(dispatch)
	local dispatchToProps = {
		SetShowAsSeconds = function(showAsSeconds)
			dispatch(SetShowAsSeconds(showAsSeconds))
		end,

		SetFrameRate = function(frameRate)
			dispatch(SetFrameRate(frameRate))
		end,

		SetPlaybackSpeed = function(playbackSpeed)
			dispatch(SetPlaybackSpeed(playbackSpeed))
		end,

		SetSnapMode = function(snapMode)
			dispatch(SetSnapMode(snapMode))
		end,

		SetShowEvents = function(showEvents)
			dispatch(SetShowEvents(showEvents))
		end,
	}

	return dispatchToProps
end


SettingsMenu = withContext({
	Localization = ContextServices.Localization,
	Analytics = ContextServices.Analytics
})(SettingsMenu)



return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(SettingsMenu)