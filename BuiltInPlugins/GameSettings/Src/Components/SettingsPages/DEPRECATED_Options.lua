--[[
	Settings page for Http settings (formerly known as Security).
		- Http Enabled

	Settings:
		bool HttpEnabled - Whether the game is allowed to access external Http endpoints
]]

local PageName = "Options"

local FFlagVersionControlServiceScriptCollabEnabled = settings():GetFFlag("VersionControlServiceScriptCollabEnabled")
local FFlagsEnableVersionHistorySetting = settings():GetFFlag("CollabEditVersionHistoryEnabled") and 
	(settings():GetFFlag("StudioInternalScriptVersionHistorySetting") or settings():GetFFlag("StudioPlaceFilterScriptVersionHistorySetting"))
local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)
local Header = require(Plugin.Src.Components.Header)

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.DEPRECATED_createSettingsPage)

--Loads settings values into props by key
local function loadValuesToProps(getValue)
	local loadedProps = {
		HttpEnabled = getValue("HttpEnabled"),
		studioAccessToApisAllowed = getValue("studioAccessToApisAllowed"),
		ScriptCollabEnabled = FFlagVersionControlServiceScriptCollabEnabled and getValue("ScriptCollabEnabled"),
		ScriptVersionHistoryEnabled = FFlagsEnableVersionHistorySetting and getValue("ScriptVersionHistoryEnabled")
	}
	return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	local dispatchFuncs = {
		HttpEnabledChanged = setValue("HttpEnabled"),
		StudioApiServicesChanged = setValue("studioAccessToApisAllowed"),
		ScriptCollabEnabledChanged = FFlagVersionControlServiceScriptCollabEnabled and setValue("ScriptCollabEnabled"),
		ScriptVersionHistoryEnabledChanged = FFlagsEnableVersionHistorySetting and setValue("ScriptVersionHistoryEnabled")
	}
	
	return dispatchFuncs
end

--Uses props to display current settings values
local function displayContents(page, localized)
	local props = page.props
	return {
		Header = Roact.createElement(Header, {
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "Category" .. PageName) or localized.Category[PageName],
			LayoutOrder = 0,
		}),

		Http = Roact.createElement(RadioButtonSet, {
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "TitleHttp") or localized.Title.Http,
			Buttons = {{
					Id = true,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOn") or localized.Http.On,
					Description = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "HttpDesc") or localized.Http.OnDescription,
				}, {
					Id = false,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOff") or localized.Http.Off,
				},
			},
			Enabled = props.HttpEnabled ~= nil,
			LayoutOrder = 3,
			--Functionality
			Selected = props.HttpEnabled,
			SelectionChanged = function(button)
				props.HttpEnabledChanged(button.Id)
			end,
		}),
		
		StudioApiServices = Roact.createElement(RadioButtonSet, {
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "TitleStudioApiServices") or localized.Title.StudioApiServices,
			Buttons = {{
					Id = true,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOn") or localized.StudioApiServices.On,
					Description = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "StudioApiServicesDesc") or localized.StudioApiServices.OnDescription,
				}, {
					Id = false,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOff") or localized.StudioApiServices.Off,
				},
			},
			Enabled = props.studioAccessToApisAllowed ~= nil,
			LayoutOrder = 4,
			--Functionality
			Selected = props.studioAccessToApisAllowed,
			SelectionChanged = function(button)
				props.StudioApiServicesChanged(button.Id)
			end,
		}),
		EnableScriptCollab = FFlagVersionControlServiceScriptCollabEnabled and Roact.createElement(RadioButtonSet, {
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "TitleScriptCollab") or localized.Title.ScriptCollab,
			Buttons = {{
					Id = true,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOn") or localized.ScriptCollab.On,
					Description = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "ScriptCollabDesc") or localized.ScriptCollab.OnDescription,
				}, {
					Id = false,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOff") or localized.ScriptCollab.Off,
				},
			},
			Enabled = props.ScriptCollabEnabled ~= nil and (not FFlagsEnableVersionHistorySetting or props.ScriptVersionHistoryEnabled == false),
			LayoutOrder = 5,
			Selected = props.ScriptCollabEnabled,
			SelectionChanged = function(button)
				props.ScriptCollabEnabledChanged(button.Id)
			end,
		}),
		EnableScriptVersionHistory = FFlagsEnableVersionHistorySetting and Roact.createElement(RadioButtonSet, { --Internal ONLY, no translation needed, should never be in production
			Title = "Enable Script Version History", 
			Buttons = {{
					Id = true,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOn") or localized.ScriptCollab.On,
					Description = "Track version history for scripts"
				}, {
					Id = false,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOff") or localized.ScriptCollab.Off,
				},
			},
			Enabled = props.ScriptCollabEnabled,  --only enabled if enablescriptcollab is true
			LayoutOrder = 6,
			Selected = props.ScriptVersionHistoryEnabled,
			SelectionChanged = function(button)
				props.ScriptVersionHistoryEnabledChanged(button.Id)
			end,
		}),
	}
end

local SettingsPage = createSettingsPage(PageName, loadValuesToProps, dispatchChanges)

local function Options(props)
	return Roact.createElement(SettingsPage, {
		ContentHeightChanged = props.ContentHeightChanged,
		SetScrollbarEnabled = props.SetScrollbarEnabled,
		LayoutOrder = props.LayoutOrder,
		Content = displayContents,

		AddLayout = true,
	})
end

return Options