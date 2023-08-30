local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)

local ClientSettings = require(ExperienceChat.ClientSettings)

local mapStateToProps = require(script.Parent.mapStateToProps)
local mapDispatchToProps = require(script.Parent.mapDispatchToProps)

local BubbleChat = require(script.Parent.Parent.BubbleChat)
local AppLayout = require(script.Parent.Parent.AppLayout)

local AppContainer = Roact.Component:extend("AppContainer")
AppContainer.defaultProps = {
	isChatInputBarVisible = true,
	isChatWindowVisible = true,
	onSendChat = nil,
	messages = {},
	mutedUserIds = nil,
	textTimer = nil,
	timer = nil,
}

local GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat =
	require(ExperienceChat.Flags.GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat)

function AppContainer:render()
	-- We pass in our selected clientSettings prop into a custom
	-- provider since we do not have RoduxHooks at this time.
	return Roact.createElement(ClientSettings.Provider, {
		value = self.props.clientSettings,
	}, {
		app = Roact.createFragment({
			appLayout = Roact.createElement(AppLayout, {
				canLocalUserChat = self.props.canLocalUserChat,
				isChatInputBarVisible = self.props.isChatInputBarVisible,
				isChatWindowVisible = self.props.isChatWindowVisible,
				chatTopBarVisibility = self.props.chatTopBarVisibility,
				messages = self.props.messages,
				mutedUserIds = self.props.mutedUserIds,
				onSendChat = self.props.onSendChat,
				timer = self.props.timer,
				textTimer = self.props.textTimer,

				activateWhisperMode = self.props.activateWhisperMode,
				resetTargetChannel = self.props.resetTargetChannel,

				lastGeneralActivityTimestamp = self.props.lastGeneralActivityTimestamp,
				lastMessageActivityTimestamp = self.props.lastMessageActivityTimestamp,
				isTextBoxFocused = self.props.isTextBoxFocused,
				onHovered = self.props.onHovered,
				onUnhovered = self.props.onUnhovered,
				chatLayoutAlignment = self.props.chatLayoutAlignment,
				chatWindowSettings = self.props.chatWindowSettings,
				clientSettings = GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat()
						and self.props.clientSettings
					or nil,
			}),
			bubbleChat = Roact.createElement(BubbleChat, {
				getIconVoiceIndicator = self.props.getIconVoiceIndicator,
				onClickedVoiceIndicator = self.props.onClickedVoiceIndicator,
				onClickedCameraIndicator = self.props.onClickedCameraIndicator,
				selfViewListenerChanged = self.props.selfViewListenerChanged,
				getPermissions = self.props.getPermissions,
			}),
		}),
	})
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AppContainer)
