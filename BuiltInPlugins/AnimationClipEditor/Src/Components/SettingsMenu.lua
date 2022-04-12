--!strict
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

local SetDefaultRotationType = require(Plugin.Src.Actions.SetDefaultRotationType)
local SetFrameRate = require(Plugin.Src.Actions.SetFrameRate)
local SetShowAsSeconds = require(Plugin.Src.Actions.SetShowAsSeconds)
local SetShowEvents = require(Plugin.Src.Actions.SetShowEvents)
local SetSnapMode = require(Plugin.Src.Actions.SetSnapMode)

local ContextMenu = require(Plugin.Src.Components.ContextMenu)

local SetPlaybackSpeed = require(Plugin.Src.Thunks.Playback.SetPlaybackSpeed)

local AnimationData = require(Plugin.Src.Util.AnimationData)
local Constants = require(Plugin.Src.Util.Constants)

local GetFFlagQuaternionsUI = require(Plugin.LuaFlags.GetFFlagQuaternionsUI)
local GetFFlagRenameSettings = require(Plugin.LuaFlags.GetFFlagRenameSettings)

local SettingsMenu = Roact.PureComponent:extend("SettingsMenu")

export type Props = {
	-- State/Context
	Analytics: any,
	AnimationData: AnimationData.AnimationData,
	DefaultRotationType: string,
	FrameRate: number,
	Localization: any,
	PlaybackSpeed: number,
	Plugin: any,
	ShowAsSeconds: boolean,
	ShowEvents: boolean,
	SnapMode: string,

	-- Actions/Thunks
	SetDefaultRotationType: (string) -> (),
	SetFrameRate: (number) -> (),
	SetPlaybackSpeed: (number) -> (),
	SetShowAsSeconds: (boolean) -> (),
	SetShowEvents: (boolean) -> (),
	SetSnapMode: (string) -> (),

	-- Properties
	ShowMenu: boolean,

	OnMenuOpened: () -> (),
}

function SettingsMenu:makeTimelineUnitMenu(): (ContextMenu.MenuItem)
	local props = self.props
	local localization = props.Localization
	local plugin = props.Plugin:get()

	return {
		Name = localization:getText("Settings", "TimelineUnit"),
		Items = {
			{Name = localization:getText("Settings", "Seconds"), Value = Constants.TIMELINE_UNITS.Seconds},
			{Name = localization:getText("Settings", "Frames"), Value = Constants.TIMELINE_UNITS.Frames},
		},
		CurrentValue = props.ShowAsSeconds and Constants.TIMELINE_UNITS.Seconds or Constants.TIMELINE_UNITS.Frames,
		ItemSelected = function(item: ContextMenu.MenuItem): ()
			if GetFFlagQuaternionsUI() then
				local showAsSeconds = item.Value == Constants.TIMELINE_UNITS.Seconds
				plugin:SetSetting(if GetFFlagRenameSettings() then Constants.SETTINGS.ShowAsSeconds else "ShowAsSeconds", showAsSeconds)
				props.SetShowAsSeconds(showAsSeconds)
			else
				props.SetShowAsSeconds(item.Value == Constants.TIMELINE_UNITS.Seconds)
			end
			props.Analytics:report("onTimeUnitChanged", item.Value)
		end,
	}
end

function SettingsMenu:makePlaybackSpeedMenu(): (ContextMenu.MenuItem)
	local props = self.props
	local localization = props.Localization
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
		ItemSelected = function(item: ContextMenu.MenuItem): ()
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

function SettingsMenu:makeFrameRateMenu(): (ContextMenu.MenuItem)?
	local props = self.props
	local localization = props.Localization
	local animationData = props.AnimationData
	if not animationData or not animationData.Metadata then
		return nil
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
		ItemSelected = function(item: ContextMenu.MenuItem): ()
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

function SettingsMenu:makeSnapMenu(): (ContextMenu.MenuItem)
	local props = self.props
	local localization = props.Localization
	local plugin = props.Plugin:get()
	local snapMode = props.SnapMode

	return {
		Name = localization:getText("Settings", "SnapMode"),
		Items = {
			{Name = localization:getText("Settings", "SnapKeyframes"), Value = Constants.SNAP_MODES.Keyframes},
			{Name = localization:getText("Settings", "SnapFrames"), Value = Constants.SNAP_MODES.Frames},
			{Name = localization:getText("Settings", "SnapNone"), Value = Constants.SNAP_MODES.None},
		},

		CurrentValue = snapMode,
		ItemSelected = function(item: ContextMenu.MenuItem): ()
			if GetFFlagQuaternionsUI() then
				plugin:SetSetting(if GetFFlagRenameSettings() then Constants.SETTINGS.SnapMode else "SnapMode", item.Value)
			end
			props.SetSnapMode(item.Value)
		end,
	}
end

function SettingsMenu:makeDefaultRotationTypeMenu(): (ContextMenu.MenuItem)
	local props = self.props
	local localization = props.Localization
	local plugin = props.Plugin:get()
	local rotationType = props.DefaultRotationType

	return {
		Name = localization:getText("Settings", "DefaultRotationType"),
		Items = {
			{Name = localization:getText("Settings", "Quaternions"), Value = Constants.TRACK_TYPES.Quaternion},
			{Name = localization:getText("Settings", "EulerAngles"), Value = Constants.TRACK_TYPES.EulerAngles},
		},
		CurrentValue = rotationType,
		ItemSelected = function(item: ContextMenu.MenuItem): ()
			plugin:SetSetting(if GetFFlagRenameSettings() then Constants.SETTINGS.RotationType else "RotationType", item.Value)
			props.SetDefaultRotationType(item.Value)
		end,
	}
end

function SettingsMenu:makeShowEvents(): (ContextMenu.MenuItem)
	local props = self.props
	local localization = props.Localization

	return {
		Name = localization:getText("Settings", "ShowEvents"),
		Checked = props.ShowEvents,
		ItemSelected = function(): ()
			props.SetShowEvents(not props.ShowEvents)
		end,
	}
end

function SettingsMenu:makeMenuActions(): ({string | ContextMenu.MenuItem})
	local props = self.props
	local localization = props.Localization
	local actions = {}

	table.insert(actions, self:makeTimelineUnitMenu())
	table.insert(actions, Constants.MENU_SEPARATOR)

	table.insert(actions, self:makeFrameRateMenu())
	table.insert(actions, self:makePlaybackSpeedMenu())
	table.insert(actions, Constants.MENU_SEPARATOR)

	if GetFFlagQuaternionsUI() then
		table.insert(actions, self:makeShowEvents())
	else
		table.insert(actions, {
			Name = localization:getText("Settings", "ShowEvents"),
			Checked = props.ShowEvents,
			ItemSelected = function()
				props.SetShowEvents(not props.ShowEvents)
			end,
		})
	end
	table.insert(actions, self:makeSnapMenu())

	if GetFFlagQuaternionsUI() then
		table.insert(actions, Constants.MENU_SEPARATOR)
		table.insert(actions, self:makeDefaultRotationTypeMenu())
	end

	return actions
end

function SettingsMenu:render(): (any?)
	local props = self.props
	local showMenu = props.ShowMenu

	return showMenu and Roact.createElement(ContextMenu, {
		Actions = self:makeMenuActions(),
		OnMenuOpened = props.OnMenuOpened,
	}) or nil
end

local function mapStateToProps(state): {[string]: any}
	local status = state.Status

	local stateToProps = {
		Analytics = if GetFFlagQuaternionsUI() then state.Analytics else nil,
		AnimationData = state.AnimationData,
		DefaultRotationType = status.DefaultRotationType,
		FrameRate = status.FrameRate,
		PlaybackSpeed = status.PlaybackSpeed,
		ShowAsSeconds = status.ShowAsSeconds,
		ShowEvents = status.ShowEvents,
		SnapMode = status.SnapMode,
	}

	return stateToProps
end

local function mapDispatchToProps(dispatch): {[string]: any}
	local dispatchToProps = {
		SetDefaultRotationType = function(rotationType: string): ()
			dispatch(SetDefaultRotationType(rotationType))
		end,

		SetFrameRate = function(frameRate: number): ()
			dispatch(SetFrameRate(frameRate))
		end,

		SetPlaybackSpeed = function(playbackSpeed: number): ()
			dispatch(SetPlaybackSpeed(playbackSpeed))
		end,

		SetShowAsSeconds = function(showAsSeconds: boolean): ()
			dispatch(SetShowAsSeconds(showAsSeconds))
		end,

		SetShowEvents = function(showEvents: boolean): ()
			dispatch(SetShowEvents(showEvents))
		end,

		SetSnapMode = function(snapMode: string): ()
			dispatch(SetSnapMode(snapMode))
		end,
	}

	return dispatchToProps
end

SettingsMenu = withContext({
	Localization = ContextServices.Localization,
	Analytics = ContextServices.Analytics,
	Plugin = ContextServices.Plugin,
})(SettingsMenu)

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(SettingsMenu)
