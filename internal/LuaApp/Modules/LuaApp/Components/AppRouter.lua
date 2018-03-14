local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")

local Modules = CoreGui.RobloxGui.Modules
local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local AppPage = require(Modules.LuaApp.AppPage)

local NavigationEventReceiver = require(Modules.LuaApp.NavigationEventReceiver)

local HomePage = require(Modules.LuaApp.Components.Home.HomePage)
local GamesHub = require(Modules.LuaApp.Components.Games.GamesHub)
local RoactAvatarEditorWrapper = require(Modules.LuaApp.Components.Avatar.RoactAvatarEditorWrapper)
local RoactChatWrapper = require(Modules.LuaApp.Components.Chat.RoactChatWrapper)

local RemoveLoadingHUDOniOS = settings():GetFFlag("RemoveLoadingHUDOniOS")

local APP_READY = GuiService:GetNotificationTypeList().APP_READY

-- TODO Once HomePage and GamesHub creates their own ScreenGui,
-- the ScreenGuiWrap should be removed.
local RoactScreenGuiWrap = Roact.Component:extend("RoactScreenGuiWrap")

function RoactScreenGuiWrap:render()
	local element = self.props.element
	local isVisible = self.props.isVisible

	return Roact.createElement("ScreenGui", {
		Enabled = isVisible,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		Contents = Roact.createElement(element),
	})
end

-- Staging broadcasting of APP_READY to accomodate for unpredictable delay on the native side.
-- Once Lua tab bar is integrated, there will be no use for this, as current page information
-- will be propagated instantly within the Roact paradigm.
function RoactScreenGuiWrap:didUpdate(prevProps, prevState)
	if not RemoveLoadingHUDOniOS then
		if not prevProps.isVisible and self.props.isVisible then
			GuiService:BroadcastNotification(self.props.pageType, APP_READY)
		end
	end
end

local function AppRouter(props)
	return Roact.createElement(Roact.Portal, {
		target = CoreGui,
	}, {
		NavigationEventReceiver = Roact.createElement(NavigationEventReceiver),
		Home = Roact.createElement(RoactScreenGuiWrap, {
			element = HomePage,
			isVisible = props.currentPage == AppPage.Home,
			pageType = AppPage.Home,
		}),
		Games = Roact.createElement(RoactScreenGuiWrap, {
			element = GamesHub,
			isVisible = props.currentPage == AppPage.Games,
			pageType = AppPage.Games,
		}),
		Avatar = Roact.createElement(RoactAvatarEditorWrapper, {
			isVisible = props.currentPage == AppPage.AvatarEditor,
			pageType = AppPage.AvatarEditor,
		}),
		Chat = Roact.createElement(RoactChatWrapper, {
			isVisible = props.currentPage == AppPage.Chat or props.currentPage == AppPage.ShareGameToChat,
			pageType = props.currentPage,
			parameters = props.parameters,
		}),
	})
end

AppRouter = RoactRodux.connect(function(store)
	local appRouter = store:GetState().AppRouter
	return {
		currentPage = appRouter.currentPage,
		parameters = appRouter.parameters,
	}
end)(AppRouter)

return AppRouter