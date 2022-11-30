local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local GetUnreadConversationCount = require(SocialTab.Conversations.NetworkRequests.GetUnreadConversationCount)

local Logger = require(SocialTab.Logger)

local SocialTabNavigationEventReceiver = Roact.PureComponent:extend("SocialTabNavigationEventReceiver")

function SocialTabNavigationEventReceiver:init()
	self.skipDidFocusOnMount = true

	self.getUnreadConversationCount = function()
		return self.props.getUnreadConversationCount():catch(function(err)
			Logger:warning("{} has issues fetching UnreadConversationCount: {}", script.Name, err)
		end)
	end

	self.onDidFocusHandler = function()
		if self.skipDidFocusOnMount then
			self.skipDidFocusOnMount = false
		else
			self.getUnreadConversationCount()
		end
	end
end

function SocialTabNavigationEventReceiver:render()
	return Roact.createElement(self.props.navigationEventReceiver, {
		onDidFocus = self.onDidFocusHandler,
	})
end

return RoactRodux.connect(nil, function(dispatch)
	return {
		getUnreadConversationCount = function()
			return dispatch(GetUnreadConversationCount.API())
		end,
	}
end)(SocialTabNavigationEventReceiver)
