local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Localization = require(ExperienceChat.Localization)

local Packages = ExperienceChat.Parent
local Roact = require(Packages.Roact)
local React = require(Packages.React)
local RoactRodux = require(Packages.RoactRodux)
local Config = require(ExperienceChat.Config)

local FocusChatHotKeyActivated = require(ExperienceChat.Actions.FocusChatHotKeyActivated)
local AutocompleteDropdownActivated = require(ExperienceChat.Actions.AutocompleteDropdownActivated)
local AutocompleteDropdownResultsChanged = require(ExperienceChat.Actions.AutocompleteDropdownResultsChanged)
local AutocompleteDropdownSelectionChanged = require(ExperienceChat.Actions.AutocompleteDropdownSelectionChanged)
local AutocompleteDropdownTypeChanged = require(ExperienceChat.Actions.AutocompleteDropdownTypeChanged)
local AutocompleteDropdownDeactivated = require(ExperienceChat.Actions.AutocompleteDropdownDeactivated)

local UI = script.Parent.UI
local ChatInputBar = require(UI.ChatInputBar)

local UserInteraction = require(ExperienceChat.Actions.UserInteraction)

local ChatInputBarApp = Roact.Component:extend("ChatInputBarApp")
ChatInputBarApp.defaultProps = {
	addTopPadding = true,
	LayoutOrder = 1,
	onSendChat = nil,
	transparencyValue = Roact.createBinding(0.3),
}

function ChatInputBarApp:render()
	return React.createElement(ChatInputBar, {
		userInputService = UserInputService,
		contextActionService = game:GetService("ContextActionService"),
		messageCharacterLimit = Config.MessageCharacterLimit,
		sendButtonContainerWidth = 30,
		addTopPadding = self.props.addTopPadding,
		LayoutOrder = self.props.LayoutOrder,
		placeholderText = if self.props.isUsingTouch
			then self.props.placeholderTouchText
			else self.props.placeholderKeyboardText,
		disabledChatPlaceholderText = self.props.disabledChatPlaceholderText,
		size = UDim2.fromScale(1, 0),
		onSendChat = self.props.onSendChat,
		transparencyValue = self.props.transparencyValue,
		canLocalUserChat = self.props.canLocalUserChat,
		targetTextChannel = self.props.targetTextChannel,
		localTeam = self.props.localTeam,
		localPlayer = self.props.localPlayer,
		defaultSystemTextChannel = self.props.defaultSystemTextChannel,
		shouldFocusChatInputBar = self.props.shouldFocusChatInputBar,
		resetTargetChannel = self.props.resetTargetChannel,
		focusChatHotKeyActivated = self.props.focusChatHotKeyActivated,
		devDefinedFocusKeyCode = self.props.devDefinedFocusKeyCode,
		visible = self.props.visible,
		onFocus = self.props.onFocus,
		onUnfocus = self.props.onUnfocus,
		onHovered = self.props.onHovered,
		onUnhovered = self.props.onUnhovered,
		onAbsoluteSizeChanged = self.props.onAbsoluteSizeChanged,
		onAbsolutePositionChanged = self.props.onAbsolutePositionChanged,
		chatWindowSettings = self.props.chatWindowSettings,
		chatInputBarSettings = self.props.chatInputBarSettings,
		isChatHotkeyEnabled = self.props.isChatHotkeyEnabled,
		autocompleteDropdownReducer = self.props.autocompleteDropdownReducer,
		autocompleteDropdownActivated = self.props.autocompleteDropdownActivated,
		autocompleteDropdownResultsChanged = self.props.autocompleteDropdownResultsChanged,
		autocompleteDropdownSelectionChanged = self.props.autocompleteDropdownSelectionChanged,
		autocompleteDropdownTypeChanged = self.props.autocompleteDropdownTypeChanged,
		autocompleteDropdownDeactivated = self.props.autocompleteDropdownDeactivated,
		autocompleteEnabled = self.props.autocompleteEnabled,
	})
end

return RoactRodux.connect(function(state)
	return {
		targetTextChannel = state.TextChannels.targetTextChannel,
		localPlayer = Players.LocalPlayer,
		localTeam = state.LocalTeam,
		isUsingTouch = state.isUsingTouch,
		devDefinedFocusKeyCode = state.ChatLayout.ChatInputBarSettings.KeyboardKeyCode,
		defaultSystemTextChannel = state.TextChannels.allTextChannels.RBXSystem,
		shouldFocusChatInputBar = state.shouldFocusChatInputBar,
		chatInputBarSettings = state.ChatLayout.ChatInputBarSettings,
		isChatHotkeyEnabled = state.ChatVisibility.isChatHotkeyEnabled.value,
		autocompleteDropdownReducer = state.AutocompleteDropdown,
		autocompleteEnabled = state.ChatLayout.ChatInputBarSettings.AutocompleteEnabled,
	}
end, function(dispatch)
	return {
		focusChatHotKeyActivated = function()
			return dispatch(FocusChatHotKeyActivated())
		end,

		onFocus = function()
			return dispatch(UserInteraction("focus"))
		end,

		onUnfocus = function()
			return dispatch(UserInteraction("unfocus"))
		end,

		onHovered = function()
			return dispatch(UserInteraction("hover"))
		end,

		onUnhovered = function()
			return dispatch(UserInteraction("unhover"))
		end,

		autocompleteDropdownActivated = function(prop)
			return dispatch(AutocompleteDropdownActivated(prop))
		end,

		autocompleteDropdownResultsChanged = function(results)
			return dispatch(AutocompleteDropdownResultsChanged(results))
		end,

		autocompleteDropdownSelectionChanged = function(selectedIndex)
			return dispatch(AutocompleteDropdownSelectionChanged(selectedIndex))
		end,

		autocompleteDropdownTypeChanged = function(autocompleteType)
			return dispatch(AutocompleteDropdownTypeChanged(autocompleteType))
		end,

		autocompleteDropdownDeactivated = function()
			return dispatch(AutocompleteDropdownDeactivated())
		end,
	}
end)(Localization.connect(function(props)
	return {
		placeholderKeyboardText = {
			"CoreScripts.TextChat.InputBar.Hint.MouseKeyboard",
			{ KEY = UserInputService:GetStringForKeyCode(props.devDefinedFocusKeyCode) } :: any,
		},
		placeholderTouchText = "CoreScripts.TextChat.InputBar.Hint.Touch",
		disabledChatPlaceholderText = "CoreScripts.TextChat.InputBar.Hint.PrivacySettingsDisabled",
	}
end)(ChatInputBarApp))
