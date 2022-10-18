local Page = script.Parent
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local ToggleButtonWithTitle = require(Plugin.Src.Components.ToggleButtonWithTitle)

local Dialog = require(Plugin.Src.ContextServices.Dialog)

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local UI = Framework.UI

local SettingsPage = require(Plugin.Src.Components.SettingsPages.SettingsPage)
local AddChange = require(Plugin.Src.Actions.AddChange)
local KeyProvider = require(Plugin.Src.Util.KeyProvider)

local GuiService = game:GetService("GuiService")

local FFlagAvatarChatSettingsAudioLinkEnabled = game:DefineFastFlag("AvatarChatSettingsAudioLinkEnabled", false)
local FFlagAvatarChatSettingsVideoLinkEnabled = game:DefineFastFlag("AvatarChatSettingsVideoLinkEnabled", false)

local FStringAvatarChatSettingsAudioLink = game:DefineFastString(
	"AvatarChatSettingsAudioLink",
	"https://developer.roblox.com/articles/chat-with-avatars-audio"
)
local FStringAvatarChatSettingsVideoLink = game:DefineFastString(
	"AvatarChatSettingsVideoLink",
	"https://developer.roblox.com/articles/chat-with-avatars-video"
)

local GetAvatarChatAudioEnabledKeyName = KeyProvider.getAvatarChatAudioEnabledKeyName
local avatarChatAudioEnabledKey = GetAvatarChatAudioEnabledKeyName()

local GetAvatarChatVideoEnabledKeyName = KeyProvider.getAvatarChatVideoEnabledKeyName
local avatarChatVideoEnabledKey = GetAvatarChatVideoEnabledKeyName()

local LOCALIZATION_ID = script.Name

local function loadSettings(store, contextItems)
	local state = store:getState()
	local gameId = state.Metadata.gameId
	local communicationController = contextItems.communicationController

	return {
		function(loadedSettings)
			local settings = communicationController:getAvatarChatSettings(gameId)

			loadedSettings[avatarChatAudioEnabledKey] = settings.audioEnabled
			loadedSettings[avatarChatVideoEnabledKey] = settings.videoEnabled
		end,
	}
end

local function saveSettings(store, contextItems)
	local state = store:getState()
	local gameId = state.Metadata.gameId
	local communicationController = contextItems.communicationController

	return {
		function()
			local audioEnabled = state.Settings.Changed.AvatarChatAudioEnabled
			local videoEnabled = state.Settings.Changed.AvatarChatVideoEnabled

			if audioEnabled ~= nil or videoEnabled ~= nil then
				communicationController:setAvatarChatSettings(gameId, audioEnabled, videoEnabled)
			end
		end,
	}
end

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
	return {
		AvatarChatAudioEnabled = getValue(avatarChatAudioEnabledKey),
		AvatarChatVideoEnabled = getValue(avatarChatVideoEnabledKey),
	}
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	return {
		AvatarChatAudioEnabledChanged = setValue(avatarChatAudioEnabledKey),
		AvatarChatVideoEnabledChanged = setValue(avatarChatVideoEnabledKey),
	}
end

local Communication = Roact.PureComponent:extend(script.Name)

function Communication:render()
	local props = self.props
	local dialog = props.Dialog
	local theme = props.Stylizer
	local localization = props.Localization

	local layoutIndex = LayoutOrderIterator.new()

	local function createChildren()
		local props = self.props

		local localization = props.Localization

		local enableAvatarChatAudioProperties = {
			Title = localization:getText("General", "AvatarChatAudioTitle"),
			LayoutOrder = layoutIndex:getNextOrder(),
			Disabled = false,
			Selected = props.AvatarChatAudioEnabled,
			OnClick = function()
				props.AvatarChatAudioEnabledChanged(not props.AvatarChatAudioEnabled)
			end,
		}

		if FFlagAvatarChatSettingsAudioLinkEnabled then
			enableAvatarChatAudioProperties["LinkProps"] = {
				Text = localization:getText("General", "AvatarChatAudioBody"),
				LinkText = localization:getText("General", "AvatarChatAudioLink"),
				OnLinkClicked = function()
					GuiService:OpenBrowserWindow(FStringAvatarChatSettingsAudioLink)
				end,
			}
		end

		local enableAvatarChatVideoProperties = {
			Title = localization:getText("General", "AvatarChatVideoTitle"),
			LayoutOrder = layoutIndex:getNextOrder(),
			Disabled = false,
			Selected = props.AvatarChatVideoEnabled,
			OnClick = function()
				props.AvatarChatVideoEnabledChanged(not props.AvatarChatVideoEnabled)
			end,
		}

		if FFlagAvatarChatSettingsVideoLinkEnabled then
			enableAvatarChatVideoProperties["LinkProps"] = {
				Text = localization:getText("General", "AvatarChatVideoBody"),
				LinkText = localization:getText("General", "AvatarChatVideoLink"),
				OnLinkClicked = function()
					GuiService:OpenBrowserWindow(FStringAvatarChatSettingsVideoLink)
				end,
			}
		end

		return {
			EnableAvatarChatAudio = Roact.createElement(ToggleButtonWithTitle, enableAvatarChatAudioProperties),
			EnableAvatarChatVideo = Roact.createElement(ToggleButtonWithTitle, enableAvatarChatVideoProperties),
		}
	end

	return Roact.createElement(SettingsPage, {
		SettingsLoadJobs = loadSettings,
		SettingsSaveJobs = saveSettings,
		Title = localization:getText("General", "Category" .. LOCALIZATION_ID),
		PageId = LOCALIZATION_ID,
		CreateChildren = createChildren,
	})
end

Communication = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	Dialog = Dialog,
})(Communication)

local settingFromState = require(Plugin.Src.Networking.settingFromState)
Communication = RoactRodux.connect(function(state, props)
	if not state then
		return
	end

	local getValue = function(propName)
		return settingFromState(state.Settings, propName)
	end

	return loadValuesToProps(getValue, state)
end, function(dispatch)
	local setValue = function(propName)
		return function(value)
			dispatch(AddChange(propName, value))
		end
	end

	return dispatchChanges(setValue, dispatch)
end)(Communication)

Communication.LocalizationId = LOCALIZATION_ID

return Communication
