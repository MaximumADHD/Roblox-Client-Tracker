local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Roact = require(ProjectRoot.Roact)
local RoactRodux = require(ProjectRoot.RoactRodux)

local mapStateToProps = require(script.Parent.mapStateToProps)
local mapDispatchToProps = require(script.Parent.mapDispatchToProps)

local AppLayout = require(script.Parent.Parent.AppLayout)

local AppContainer = Roact.Component:extend("AppContainer")
AppContainer.defaultProps = {
	isChatInputBarVisible = true,
	isChatWindowVisible = true,
	messages = nil,
	messageHistory = nil,
	onSendChat = nil,
	mutedUserIds = nil,
	onTargetChannelChanged = nil,
	targetChannelDisplayName = nil,
	textTimer = nil,
	timer = nil,
}

function AppContainer:render()
	return Roact.createElement(AppLayout, {
		canLocalUserChat = self.props.canLocalUserChat,
		isChatInputBarVisible = self.props.isChatInputBarVisible,
		isChatWindowVisible = self.props.isChatWindowVisible,
		messages = self.props.messages,
		messageHistory = self.props.messageHistory,
		mutedUserIds = self.props.mutedUserIds,
		onSendChat = self.props.onSendChat,
		onTargetChannelChanged = self.props.onTargetChannelChanged,
		targetChannelDisplayName = self.props.targetChannelDisplayName,
		timer = self.props.timer,
		textTimer = self.props.textTimer,
	})
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AppContainer)
