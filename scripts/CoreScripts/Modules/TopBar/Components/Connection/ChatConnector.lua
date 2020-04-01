local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)

local Components = script.Parent.Parent
local TopBar = Components.Parent

local UpdateChatVisible = require(TopBar.Actions.UpdateChatVisible)
local UpdateChatMessages = require(TopBar.Actions.UpdateChatMessages)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ChatSelector = require(RobloxGui.Modules.ChatSelector)

local GameSettings = UserSettings().GameSettings

local ChatConnector = Roact.PureComponent:extend("ChatConnector")

ChatConnector.validateProps = t.strictInterface({
	isSmallTouchScreen = t.boolean,

	updateChatVisible = t.callback,
	updateChatMessages = t.callback,
})

function ChatConnector:didMount()
	local willEnableChat = GameSettings.ChatVisible
	if self.props.isSmallTouchScreen then
		willEnableChat = false
	end
	ChatSelector:SetVisible(willEnableChat)

	self.props.updateChatMessages(ChatSelector:GetMessageCount())
	self.props.updateChatVisible(ChatSelector:GetVisibility())

	self.chatVisibleConnection = ChatSelector.VisibilityStateChanged:connect(function(visible)
		self.props.updateChatVisible(visible)
	end)

	self.chatMessagesConnection = ChatSelector.MessagesChanged:connect(function(messages)
		self.props.updateChatMessages(messages)
	end)
end

function ChatConnector:render()
	return nil
end

function ChatConnector:willUnmount()
	self.chatVisibleConnection:disconnect()
	self.chatMessagesConnection:disconnect()
end

local function mapStateToProps(state)
	return {
		isSmallTouchScreen = state.displayOptions.isSmallTouchDevice,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		updateChatVisible = function(visible)
			return dispatch(UpdateChatVisible(visible))
		end,

		updateChatMessages = function(messages)
			return dispatch(UpdateChatMessages(messages))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(ChatConnector)