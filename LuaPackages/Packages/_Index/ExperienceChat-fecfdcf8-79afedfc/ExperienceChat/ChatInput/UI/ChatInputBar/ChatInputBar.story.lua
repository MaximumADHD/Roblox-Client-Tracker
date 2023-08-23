local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)
local React = require(ProjectRoot.React)
local Config = require(ProjectRoot.ExperienceChat.Config)

local ChatInputBar = require(script.Parent)

return {
	story = function(props)
		return React.createElement(ChatInputBar, {
			contextActionService = game:GetService("ContextActionService"),
			userInputService = game:GetService("UserInputService"),
			transparencyValue = Roact.createBinding(0),
			sendButtonContainerWidth = 30,
			onSendChat = props.onSendChat,
			placeholderText = props.placeholderText,
			size = props.size,
			canLocalUserChat = props.controls.canLocalUserChat,
			messageCharacterLimit = props.controls.messageCharacterLimit,
			disabledChatPlaceholderText = props.disabledChatPlaceholderText,
			localPlayer = props.localPlayer,
			focusChatHotKeyActivated = props.focusChatHotKeyActivated,
			targetTextChannel = props.targetTextChannel,
			devDefinedFocusKeyCode = Enum.KeyCode.Slash,
			onFocus = props.onFocus,
			onUnfocus = props.onUnfocus,
			chatWindowSettings = {
				Font = Config.ChatWindowFont,
				TextColor3 = Config.ChatWindowTextColor3,
				TextSize = Config.ChatWindowTextSize,
				TextStrokeColor3 = Config.ChatWindowTextStrokeColor,
				TextStrokeTransparency = Config.ChatWindowTextStrokeTransparency,
				BackgroundColor3 = Config.ChatWindowBackgroundColor3,
				BackgroundTransparency = Config.ChatWindowBackgroundTransparency,
			},
			chatInputBarSettings = {
				BackgroundTransparency = Config.ChatInputBarBackgroundTransparency,
				BackgroundColor3 = Config.ChatInputBarBackgroundColor,
				TextSize = Config.ChatInputBarTextSize,
				TextColor3 = Config.ChatInputBarTextColor3,
				TextStrokeColor3 = Config.ChatInputBarTextStrokeColor,
				TextStrokeTransparency = Config.ChatInputBarTextStrokeTransparency,
				FontFace = Config.ChatInputBarFontFace,
				PlaceholderColor3 = Config.ChatInputBarPlaceholderColor,
			},
			isChatHotkeyEnabled = true,
			autocompleteDropdownReducer = {
				activated = props.activated,
				results = props.results,
				selectedIndex = 1,
				autocompleteType = props.autocompleteType,
			},
			autocompleteDropdownActivated = props.autocompleteDropdownActivated,
			autocompleteDropdownResultsChanged = props.autocompleteDropdownResultsChanged,
			autocompleteDropdownSelectionChanged = props.autocompleteDropdownSelectionChanged,
			autocompleteDropdownTypeChanged = props.autocompleteDropdownTypeChanged,
			autocompleteDropdownDeactivated = props.autocompleteDropdownDeactivated,
			autocompleteEnabled = true,
		})
	end,
	controls = {
		canLocalUserChat = true,
		messageCharacterLimit = 200,
	},
	props = {
		onSendChat = function() end,
		placeholderText = 'To chat click here or press "/" key',
		disabledChatPlaceholderText = "Your chat settings prevent you from sending messages.",
		size = UDim2.new(0, 300, 0, 0),
		localPlayer = {
			UserId = -1,
			Team = {
				Name = "Team",
				TeamColor = BrickColor.Blue(),
			},
		},
		onFocus = function() end,
		onUnfocus = function() end,
		focusChatHotKeyActivated = function() end,
		isChatHotkeyEnabled = true,
		activated = false,
		results = {},
		autocompleteType = "emojis",
		autocompleteDropdownActivated = function() end,
		autocompleteDropdownResultsChanged = function() end,
		autocompleteDropdownSelectionChanged = function() end,
		autocompleteDropdownTypeChanged = function() end,
		autocompleteDropdownDeactivated = function() end,
	},
}
