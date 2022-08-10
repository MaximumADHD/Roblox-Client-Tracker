local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Roact = require(ProjectRoot.Roact)

local ChatInputBar = require(script.Parent)

return {
	story = function(props)
		return Roact.createElement(ChatInputBar, {
			onSendChat = props.onSendChat,
			placeholderText = props.placeholderText,
			size = props.size,
			canLocalUserChat = props.controls.canLocalUserChat,
			disabledChatPlaceholderText = props.disabledChatPlaceholderText,
			localPlayer = props.localPlayer,
			focusChatHotKeyActivated = props.focusChatHotKeyActivated,
			onFocus = props.onFocus,
			onUnfocus = props.onUnfocus,
		})
	end,
	controls = {
		canLocalUserChat = true,
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
	},
}
