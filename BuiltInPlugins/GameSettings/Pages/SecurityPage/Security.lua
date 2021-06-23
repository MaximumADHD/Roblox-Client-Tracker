
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)

local ContextServices = require(Plugin.Framework.ContextServices)
local ToggleButtonWithTitle = require(Plugin.Src.Components.ToggleButtonWithTitle)

local AddChange = require(Plugin.Src.Actions.AddChange)

local SettingsPage = require(Plugin.Src.Components.SettingsPages.SettingsPage)

local LOCALIZATION_ID = script.Name

local function loadSettings(store, contextItems)
	local state = store:getState()
	local game = state.Metadata.game
	local gameId = state.Metadata.gameId
	local universePermissionsController = contextItems.universePermissionsController

	return {
		function(loadedSettings)
			local enabled = universePermissionsController:GetHttpEnabled(game)
			loadedSettings["HttpEnabled"] = enabled
		end,
		function(loadedSettings)
			local enabled = universePermissionsController:GetStudioAccessToApisAllowed(gameId)
			loadedSettings["StudioAccessToApisAllowed"] = enabled
		end,
		function(loadedSettings)
			local enabled = universePermissionsController:GetThirdPartyPurchasesAllowed(gameId)
			loadedSettings["ThirdPartyPurchaseAllowed"] = enabled
		end,
		function(loadedSettings)
			local enabled = universePermissionsController:GetThirdPartyTeleportsAllowed(gameId)
			loadedSettings["ThirdPartyTeleportAllowed"] = enabled
		end,
	}
end

local function saveSettings(store, contextItems)
	local state = store:getState()
	local gameId = state.Metadata.gameId
	local universePermissionsController = contextItems.universePermissionsController

	return {
		function()
			local changedValue = state.Settings.Changed["HttpEnabled"]
			if changedValue ~= nil then
				universePermissionsController:SetHttpEnabled(game, changedValue)
			end
		end,
		function()
			local changedValue = state.Settings.Changed["StudioAccessToApisAllowed"]
			if changedValue ~= nil then
				universePermissionsController:SetStudioAccessToApisAllowed(gameId, changedValue)
			end
		end,
		function()
			local changedValue = state.Settings.Changed["ThirdPartyPurchaseAllowed"]
			if changedValue ~= nil then
				universePermissionsController:SetThirdPartyPurchasesAllowed(gameId, changedValue)
			end
		end,
		function()
			local changedValue = state.Settings.Changed["ThirdPartyTeleportAllowed"]
			if changedValue ~= nil then
				universePermissionsController:SetThirdPartyTeleportsAllowed(gameId, changedValue)
			end
		end,
	}
end

--Loads settings values into props by key
local function loadValuesToProps(getValue)
	local loadedProps = {
		HttpEnabled = getValue("HttpEnabled"),
		StudioAccessToApisAllowed = getValue("StudioAccessToApisAllowed"),
		ThirdPartyPurchaseAllowed = getValue("ThirdPartyPurchaseAllowed"),
		ThirdPartyTeleportAllowed = getValue("ThirdPartyTeleportAllowed"),
	}
	return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	local dispatchFuncs = {
		HttpEnabledChanged = setValue("HttpEnabled"),
		StudioApiServicesChanged = setValue("StudioAccessToApisAllowed"),
		ThirdPartyPurchaseChanged = setValue("ThirdPartyPurchaseAllowed"),
		ThirdPartyTeleportAllowedChanged = setValue("ThirdPartyTeleportAllowed"),
	}
	return dispatchFuncs
end

local Security = Roact.PureComponent:extend(script.Name)

function Security:render()
	local localization = self.props.Localization

	local function createChildren()
		local props = self.props
		local localization = props.Localization

		return {
			HttpEnabled = Roact.createElement(ToggleButtonWithTitle, {
				Description = localization:getText("General", "HttpDesc"),
				Disabled = (props.HttpEnabled == nil),
				LayoutOrder = 1,
				OnClick = function()
					props.HttpEnabledChanged(not props.HttpEnabled)
				end,
				Selected = props.HttpEnabled,
				Title = localization:getText("General", "TitleHttp"),
			}),

			StudioApiServicesEnabled = Roact.createElement(ToggleButtonWithTitle, {
				Description = localization:getText("General", "StudioApiServicesDesc"),
				Disabled = (props.StudioAccessToApisAllowed == nil),
				LayoutOrder = 2,
				OnClick = function()
					props.StudioApiServicesChanged(not props.StudioAccessToApisAllowed)
				end,
				Selected = props.StudioAccessToApisAllowed,
				Title = localization:getText("General", "TitleStudioApiServices"),
			}),

			ThirdPartyPurchasesEnabled = Roact.createElement(ToggleButtonWithTitle, {
				Description = localization:getText("Security", "EnableThirdPartyPurchasesDescription"),
				Disabled = (props.ThirdPartyPurchaseAllowed == nil),
				LayoutOrder = 3,
				OnClick = function()
					props.ThirdPartyPurchaseChanged(not props.ThirdPartyPurchaseAllowed)
				end,
				Selected = props.ThirdPartyPurchaseAllowed,
				Title = localization:getText("Security", "EnableThirdPartyPurchases"),
			}),

			ThirdPartyTeleportsEnabled = Roact.createElement(ToggleButtonWithTitle, {
				Description = localization:getText("Security", "EnableThirdPartyTeleportsDescription"),
				Disabled = (props.ThirdPartyTeleportAllowed == nil),
				LayoutOrder = 4,
				OnClick = function()
					props.ThirdPartyTeleportAllowedChanged(not props.ThirdPartyTeleportAllowed)
				end,
				Selected = props.ThirdPartyTeleportAllowed,
				Title = localization:getText("Security", "EnableThirdPartyTeleports"),
			}),
		}
	end

	return Roact.createElement(SettingsPage, {
		SettingsLoadJobs = loadSettings,
		SettingsSaveJobs = saveSettings,
		Title = localization:getText("General", "Category"..LOCALIZATION_ID),
		PageId = LOCALIZATION_ID,
		CreateChildren = createChildren,
	})
end

ContextServices.mapToProps(Security, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
})

local settingFromState = require(Plugin.Src.Networking.settingFromState)
Security = RoactRodux.connect(
	function(state, props)
		if not state then return end

		local getValue = function(propName)
			return settingFromState(state.Settings, propName)
		end

		return loadValuesToProps(getValue)
	end,

	function(dispatch)
		local setValue = function(propName)
			return function(value)
				dispatch(AddChange(propName, value))
			end
		end

		return dispatchChanges(setValue, dispatch)
	end
)(Security)

Security.LocalizationId = LOCALIZATION_ID

return Security
