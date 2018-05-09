local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")

local Modules = CoreGui.RobloxGui.Modules
local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local ChatMaster = require(Modules.ChatMaster)
local AppPage = require(Modules.LuaApp.AppPage)

local RoactChatWrapper = Roact.Component:extend("RoactChatWrapper")
local APP_READY = GuiService:GetNotificationTypeList().APP_READY

local PageTypeToChatType = {
	[AppPage.Chat] = ChatMaster.Type.Default,
	[AppPage.ShareGameToChat] = ChatMaster.Type.GameShare,
}

function RoactChatWrapper:init()
	self.chatMaster = ChatMaster.new(self.props.store)
	self.isPageOpen = false
	self.currentPageType = nil
end

function RoactChatWrapper:didMount()
	self:updateChat()
end

function RoactChatWrapper:render()
	return nil
end

function RoactChatWrapper:didUpdate()
	self:updateChat()
end

function RoactChatWrapper:willUnmount()
	self.chatMaster:Stop()
end

function RoactChatWrapper:updateChat()
	if not self.isPageOpen and self.props.isVisible then
		local pageType = PageTypeToChatType[self.props.pageType]
		self.chatMaster:Start(pageType, self.props.parameters)
		self.isPageOpen = true
		self.currentPageType = pageType

		GuiService:BroadcastNotification(pageType, APP_READY)
	elseif self.isPageOpen and not self.props.isVisible then
		self.chatMaster:Stop(self.currentPageType)
		self.isPageOpen = false
		self.currentPageType = nil
	end
end

-- While you should NOT pass around store like this, store was made visible as ChatMaster
-- is not yet Roactified and expects a store reference to be passed down.
RoactChatWrapper = RoactRodux.connect(function(store)
	return {
		store = store
	}
end)(RoactChatWrapper)

return RoactChatWrapper