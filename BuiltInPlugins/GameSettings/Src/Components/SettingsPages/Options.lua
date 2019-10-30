--[[
	Settings page for Http settings (formerly known as Security).
		- Http Enabled

	Settings:
		bool HttpEnabled - Whether the game is allowed to access external Http endpoints
]]

local PageName = "Options"

local FFlagGameSettingsReorganizeHeaders = settings():GetFFlag("GameSettingsReorganizeHeaders")
local FFlagVersionControlServiceScriptCollabEnabled = settings():GetFFlag("VersionControlServiceScriptCollabEnabled")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)
local Header = require(Plugin.Src.Components.Header)

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.createSettingsPage)

--Loads settings values into props by key
local function loadValuesToProps(getValue)
	local loadedProps = {
		HttpEnabled = getValue("HttpEnabled"),
		studioAccessToApisAllowed = getValue("studioAccessToApisAllowed"),
		ScriptCollabEnabled = FFlagVersionControlServiceScriptCollabEnabled and getValue("ScriptCollabEnabled"),
	}
	
	return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	local dispatchFuncs = {
		HttpEnabledChanged = setValue("HttpEnabled"),
		StudioApiServicesChanged = setValue("studioAccessToApisAllowed"),
		ScriptCollabEnabledChanged = FFlagVersionControlServiceScriptCollabEnabled and setValue("ScriptCollabEnabled"),
	}
	
	return dispatchFuncs
end

--Uses props to display current settings values
local function displayContents(page, localized)
	local props = page.props
	return {
		Header = FFlagGameSettingsReorganizeHeaders and
		Roact.createElement(Header, {
			Title = localized.Category[PageName],
			LayoutOrder = 0,
		}),

		Http = Roact.createElement(RadioButtonSet, {
			Title = localized.Title.Http,
			Buttons = {{
					Id = true,
					Title = localized.Http.On,
					Description = localized.Http.OnDescription,
				}, {
					Id = false,
					Title = localized.Http.Off,
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
			Title = localized.Title.StudioApiServices,
			Buttons = {{
					Id = true,
					Title = localized.StudioApiServices.On,
					Description = localized.StudioApiServices.OnDescription,
				}, {
					Id = false,
					Title = localized.StudioApiServices.Off,
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
			Title = localized.Title.ScriptCollab,
			Buttons = {{
					Id = true,
					Title = localized.ScriptCollab.On,
					Description = localized.ScriptCollab.OnDescription,
				}, {
					Id = false,
					Title = localized.ScriptCollab.Off,
				},
			},
			Enabled = props.ScriptCollabEnabled ~= nil,
			LayoutOrder = 5,
			Selected = props.ScriptCollabEnabled,
			SelectionChanged = function(button)
				props.ScriptCollabEnabledChanged(button.Id)
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