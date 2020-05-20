local FFlagVersionControlServiceScriptCollabEnabled = settings():GetFFlag("VersionControlServiceScriptCollabEnabled")
local FFlagsEnableVersionHistorySetting = settings():GetFFlag("CollabEditVersionHistoryEnabled") and
	(settings():GetFFlag("StudioInternalScriptVersionHistorySetting")
	or settings():GetFFlag("StudioPlaceFilterScriptVersionHistorySetting"))

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local ContextServices = require(Plugin.Framework.ContextServices)

local AddChange = require(Plugin.Src.Actions.AddChange)

local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)
local SettingsPage = require(Plugin.Src.Components.SettingsPages.SettingsPage)

local LOCALIZATION_ID = "Options"

local function loadSettings(store, contextItems)
	local state = store:getState()
	local game = state.Metadata.game
	local gameOptionsController = contextItems.gameOptionsController

	return {
		function(loadedSettings)
			local enabled = gameOptionsController:getScriptCollaborationEnabled(game)

			loadedSettings["ScriptCollabEnabled"] = enabled
		end,
		function(loadedSettings)
			local enabled = gameOptionsController:getScriptVersionHistoryEnabled(game)

			loadedSettings["ScriptVersionHistoryEnabled"] = enabled
		end,
	}
end

local function saveSettings(store, contextItems)
	local state = store:getState()
	local game = state.Metadata.game
	local gameOptionsController = contextItems.gameOptionsController

	return {
		function()
			local changed = state.Settings.Changed.ScriptCollabEnabled

			if changed ~= nil then
				gameOptionsController:setScriptCollaborationEnabled(game, changed)
			end
		end,
		function()
			local changed = state.Settings.Changed.ScriptVersionHistoryEnabled

			if changed ~= nil then
				gameOptionsController:setScriptVersionHistoryEnabled(game, changed)
			end
		end,
	}
end

--Loads settings values into props by key
local function loadValuesToProps(getValue)
	local loadedProps = {
		ScriptCollabEnabled = FFlagVersionControlServiceScriptCollabEnabled and getValue("ScriptCollabEnabled"),
		ScriptVersionHistoryEnabled = FFlagsEnableVersionHistorySetting and getValue("ScriptVersionHistoryEnabled")
	}
	return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	local dispatchFuncs = {
		ScriptCollabEnabledChanged = FFlagVersionControlServiceScriptCollabEnabled and setValue("ScriptCollabEnabled"),
		ScriptVersionHistoryEnabledChanged = FFlagsEnableVersionHistorySetting and setValue("ScriptVersionHistoryEnabled")
	}

	return dispatchFuncs
end

local Options = Roact.PureComponent:extend(script.Name)

function Options:render()
	local localization = self.props.Localization

	local function createChildren()
		local props = self.props

		local localization = props.Localization

		return {
			EnableScriptCollab = FFlagVersionControlServiceScriptCollabEnabled and Roact.createElement(RadioButtonSet, {
				LayoutOrder = 1,
				Title = localization:getText("General", "TitleScriptCollab"),
				Enabled = props.ScriptCollabEnabled ~= nil and
					(not FFlagsEnableVersionHistorySetting or props.ScriptVersionHistoryEnabled == false),

				Selected = props.ScriptCollabEnabled,
				SelectionChanged = function(button)
					props.ScriptCollabEnabledChanged(button.Id)
				end,

				Buttons = {{
						Id = true,
						Title = localization:getText("General", "SettingOn"),
						Description = localization:getText("General", "ScriptCollabDesc"),
					}, {
						Id = false,
						Title = localization:getText("General", "SettingOff"),
					},
				},
			}),

			EnableScriptVersionHistory = FFlagsEnableVersionHistorySetting and Roact.createElement(RadioButtonSet, {
				LayoutOrder = 2,
				--Internal ONLY, no translation needed, should never be in production
				Title = "Enable Script Version History",
				Enabled = props.ScriptCollabEnabled,  --only enabled if enablescriptcollab is true

				Selected = props.ScriptVersionHistoryEnabled,
				SelectionChanged = function(button)
					props.ScriptVersionHistoryEnabledChanged(button.Id)
				end,

				Buttons = {{
						Id = true,
						Title = localization:getText("General", "SettingOn"),
						Description = "Track version history for scripts"
					}, {
						Id = false,
						Title = localization:getText("General", "SettingOff"),
					},
				},
			}),
		}
	end

	return Roact.createElement(SettingsPage, {
		SettingsLoadJobs = loadSettings,
		SettingsSaveJobs = saveSettings,
		Title = localization:getText("General", "Category"..LOCALIZATION_ID),
		PageId = script.Name,
		CreateChildren = createChildren,
	})
end

ContextServices.mapToProps(Options, {
	Localization = ContextServices.Localization,
})

local settingFromState = require(Plugin.Src.Networking.settingFromState)
Options = RoactRodux.connect(
	function(state, props)
		if not state then return end

		local getValue = function(propName)
			return settingFromState(state.Settings, propName)
		end

		return loadValuesToProps(getValue, state)
	end,

	function(dispatch)
		local setValue = function(propName)
			return function(value)
				dispatch(AddChange(propName, value))
			end
		end

		return dispatchChanges(setValue, dispatch)
	end
)(Options)

Options.LocalizationId = LOCALIZATION_ID

return Options