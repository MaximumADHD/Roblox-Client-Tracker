--[[
	Settings page for Universe Permission settings

	Settings:
		bool IsThirdPartyPurchaseAllowed - Whether the game allows 3rd party purchases
		bool IsThirdPartyTeleportAllowed -  Whether the game allows 3rd party teleports
]]

local PageName = "Security"

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Header = require(Plugin.Src.Components.Header)
local ToggleButtonWithTitle = require(Plugin.Src.Components.ToggleButtonWithTitle)
local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.createSettingsPage)

--Loads settings values into props by key
local function loadValuesToProps(getValue)
	local loadedProps = {
		HttpEnabled = getValue("HttpEnabled"),
		studioAccessToApisAllowed = getValue("studioAccessToApisAllowed"),
		IsThirdPartyPurchaseAllowed = getValue("IsThirdPartyPurchaseAllowed"),
		IsThirdPartyTeleportAllowed = getValue("IsThirdPartyTeleportAllowed"),
	}
	return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	local dispatchFuncs = {
		HttpEnabledChanged = setValue("HttpEnabled"),
		StudioApiServicesChanged = setValue("studioAccessToApisAllowed"),
		IsThirdPartyPurchaseAllowedChanged = setValue("IsThirdPartyPurchaseAllowed"),
		IsThirdPartyTeleportAllowedChanged = setValue("IsThirdPartyTeleportAllowed"),
	}
	return dispatchFuncs
end

--Uses props to display current settings values
local function displayContents(page, localized)
	local props = page.props
	return {
		Header = Roact.createElement(Header, {
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "Category" .. PageName)or localized.Category[PageName],
			LayoutOrder = 0,
		}),

		HttpEnabled = FFlagStudioConvertGameSettingsToDevFramework and Roact.createElement(ToggleButtonWithTitle, {
			Description = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "HttpDesc") or localized.Http.OnDescription,
			Disabled = (props.HttpEnabled == nil),
			LayoutOrder = 1,
			OnClick = function()
				props.HttpEnabledChanged(not props.HttpEnabled)
			end,
			Selected = props.HttpEnabled,
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "TitleHttp") or localized.Title.Http,
		}),

		HttpEnabled_DEPRECATED = (not FFlagStudioConvertGameSettingsToDevFramework) and Roact.createElement(RadioButtonSet, {
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
			Selected = props.HttpEnabled,
			SelectionChanged = function(button)
				props.HttpEnabledChanged(button.Id)
			end,
		}),

		StudioApiServicesEnabled = FFlagStudioConvertGameSettingsToDevFramework and Roact.createElement(ToggleButtonWithTitle, {
			Description = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "StudioApiServicesDesc") or localized.StudioApiServices.OnDescription,
			Disabled = (props.studioAccessToApisAllowed == nil),
			LayoutOrder = 2,
			OnClick = function()
				props.StudioApiServicesChanged(not props.studioAccessToApisAllowed)
			end,
			Selected = props.studioAccessToApisAllowed,
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "TitleStudioApiServices") or localized.Title.StudioApiServices,
		}),

		StudioApiServicesEnabled_DEPRECATED = (not FFlagStudioConvertGameSettingsToDevFramework) and Roact.createElement(RadioButtonSet, {
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
			LayoutOrder = 2,
			Selected = props.studioAccessToApisAllowed,
			SelectionChanged = function(button)
				props.StudioApiServicesChanged(button.Id)
			end,
		}),

		EnableThirdPartyPurchases = FFlagStudioConvertGameSettingsToDevFramework and Roact.createElement(ToggleButtonWithTitle, {
			Description = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("Security", "EnableThirdPartyPurchasesDescription") or localized.Security.EnableThirdPartyPurchasesDescription,
			Disabled = (props.IsThirdPartyPurchaseAllowed == nil),
			LayoutOrder = 3,
			OnClick = function()
				props.IsThirdPartyPurchaseAllowedChanged(not props.IsThirdPartyPurchaseAllowed)
			end,
			Selected = props.IsThirdPartyPurchaseAllowed,
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("Security", "EnableThirdPartyPurchases") or localized.Security.EnableThirdPartyPurchasesTitle,
		}),

		EnableThirdPartyPurchases_DEPRECATED = (not FFlagStudioConvertGameSettingsToDevFramework) and Roact.createElement(RadioButtonSet, {
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("Security", "EnableThirdPartyPurchases") or localized.Security.EnableThirdPartyPurchasesTitle,
			Buttons = {{
					Id = true,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOn") or localized.ScriptCollab.On,
					Description = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("Security", "EnableThirdPartyPurchasesDescription") or localized.Security.EnableThirdPartyPurchasesDescription,
				}, {
					Id = false,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOff") or localized.ScriptCollab.Off,
				},
			},
			Enabled = props.IsThirdPartyPurchaseAllowed ~= nil,
			LayoutOrder = 3,
			Selected = props.IsThirdPartyPurchaseAllowed,
			SelectionChanged = function()
				props.IsThirdPartyPurchaseAllowedChanged(not props.IsThirdPartyPurchaseAllowed)
			end,
		}),

		EnableThirdPartyTeleports = FFlagStudioConvertGameSettingsToDevFramework and Roact.createElement(ToggleButtonWithTitle, {
			Description = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("Security", "EnableThirdPartyTeleportsDescription") or localized.Security.EnableThirdPartyTeleportsDescription,
			Disabled = (props.IsThirdPartyTeleportAllowed == nil),
			LayoutOrder = 4,
			OnClick = function()
				props.IsThirdPartyTeleportAllowedChanged(not props.IsThirdPartyTeleportAllowed)
			end,
			Selected = props.IsThirdPartyTeleportAllowed,
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("Security", "EnableThirdPartyTeleports") or localized.Security.EnableThirdPartyTeleportsTitle,
		}),

		EnableThirdPartyTeleports_DEPRECATED = (not FFlagStudioConvertGameSettingsToDevFramework) and Roact.createElement(RadioButtonSet, {
			Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("Security", "EnableThirdPartyTeleports") or localized.Security.EnableThirdPartyTeleportsTitle,
			Buttons = {{
					Id = true,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOn") or localized.ScriptCollab.On,
					Description = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("Security", "EnableThirdPartyTeleportsDescription") or localized.Security.EnableThirdPartyTeleportsDescription,
				}, {
					Id = false,
					Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "SettingOff") or localized.ScriptCollab.Off,
				},
			},
			Enabled = props.IsThirdPartyTeleportAllowed ~= nil,
			LayoutOrder = 4,
			Selected = props.IsThirdPartyTeleportAllowed,
			SelectionChanged = function()
				props.IsThirdPartyTeleportAllowedChanged(not props.IsThirdPartyTeleportAllowed)
			end,
		}),
	}
end

local SettingsPage = createSettingsPage(PageName, loadValuesToProps, dispatchChanges)

local function SecurityPage(props)
	return Roact.createElement(SettingsPage, {
		ContentHeightChanged = props.ContentHeightChanged,
		SetScrollbarEnabled = props.SetScrollbarEnabled,
		LayoutOrder = props.LayoutOrder,
		Content = displayContents,

		AddLayout = true,
	})
end

return SecurityPage
