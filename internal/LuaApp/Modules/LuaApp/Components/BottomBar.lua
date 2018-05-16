local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")

local Modules = CoreGui.RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local Constants = require(Modules.LuaApp.Constants)
local AppPage = require(Modules.LuaApp.AppPage)
local DeviceOrientationMode = require(Modules.LuaApp.DeviceOrientationMode)
local FlagSettings = require(Modules.LuaApp.FlagSettings)

local BottomBarButton = require(Modules.LuaApp.Components.BottomBarButton)

local UseLuaBottomBar = FlagSettings.IsLuaBottomBarEnabled()

local HomeButtonDefaultImage = "rbxasset://textures/ui/LuaApp/icons/ic-home.png"
local GamesButtonDefaultImage = "rbxasset://textures/ui/LuaApp/icons/ic-games.png"
local CatalogButtonDefaultImage = "rbxasset://textures/ui/LuaApp/icons/ic-catalog.png"
local AvatarButtonDefaultImage = "rbxasset://textures/ui/LuaApp/icons/ic-avatar.png"
local FriendsButtonDefaultImage = "rbxasset://textures/ui/LuaApp/icons/ic-friend.png"
local ChatButtonDefaultImage = "rbxasset://textures/ui/LuaApp/icons/ic-chat.png"
local MoreButtonDefaultImage = "rbxasset://textures/ui/LuaApp/icons/ic-more.png"

local HomeButtonSelectedImage = "rbxasset://textures/ui/LuaApp/icons/ic-home-on.png"
local GamesButtonSelectedImage = "rbxasset://textures/ui/LuaApp/icons/ic-games-on.png"
local CatalogButtonSelectedImage = "rbxasset://textures/ui/LuaApp/icons/ic-catalog-on.png"
local AvatarButtonSelectedImage = "rbxasset://textures/ui/LuaApp/icons/ic-avatar-on.png"
local FriendsButtonSelectedImage = "rbxasset://textures/ui/LuaApp/icons/ic-friend-on.png"
local ChatButtonSelectedImage = "rbxasset://textures/ui/LuaApp/icons/ic-chat-on.png"
local MoreButtonSelectedImage = "rbxasset://textures/ui/LuaApp/icons/ic-more-on.png"

local function getNotificationTypeList()
	if not _G.__TESTEZ_RUNNING_TEST__ then
		return GuiService:GetNotificationTypeList()
	else
		return { HIDE_TAB_BAR = "HIDE_TAB_BAR" }
	end
end

local function setGlobalGuiInset(left, right, top, bottom)
	if not _G.__TESTEZ_RUNNING_TEST__ then
		GuiService:SetGlobalGuiInset(left, right, top, bottom)
	end
end

local function broadcastNotification(notification, type)
	if not _G.__TESTEZ_RUNNING_TEST__ then
		GuiService:BroadcastNotification(notification, type)
	end
end

local function getSystemBottomBarHeight()
	if not _G.__TESTEZ_RUNNING_TEST__ then
		return UserInputService.BottomBarSize.Y
	else
		return 0
	end
end

local BottomBar = Roact.PureComponent:extend("BottomBar")

function BottomBar:render()
	local deviceOrientation = self.props.deviceOrientation
	local bottomBarVisible = self.props.bottomBarVisible
	local displayOrder = self.props.displayOrder

	if not bottomBarVisible or not UseLuaBottomBar then
		return nil
	end

	local homeButton = Roact.createElement(BottomBarButton, {
		defaultImage = HomeButtonDefaultImage,
		selectedImage = HomeButtonSelectedImage,
		associatedPageType = AppPage.Home,
	})

	local gamesButton = Roact.createElement(BottomBarButton, {
		defaultImage = GamesButtonDefaultImage,
		selectedImage = GamesButtonSelectedImage,
		associatedPageType = AppPage.Games,
	})

	local catalogButton = Roact.createElement(BottomBarButton, {
		defaultImage = CatalogButtonDefaultImage,
		selectedImage = CatalogButtonSelectedImage,
		associatedPageType = AppPage.Catalog,
	})

	local avatarButton = Roact.createElement(BottomBarButton, {
		defaultImage = AvatarButtonDefaultImage,
		selectedImage = AvatarButtonSelectedImage,
		associatedPageType = AppPage.AvatarEditor,
	})

	local friendsButton = Roact.createElement(BottomBarButton, {
		defaultImage = FriendsButtonDefaultImage,
		selectedImage = FriendsButtonSelectedImage,
		associatedPageType = AppPage.Friends,
	})

	local chatButton = Roact.createElement(BottomBarButton, {
		defaultImage = ChatButtonDefaultImage,
		selectedImage = ChatButtonSelectedImage,
		associatedPageType = AppPage.Chat,
	})

	local moreButton = Roact.createElement(BottomBarButton, {
		defaultImage = MoreButtonDefaultImage,
		selectedImage = MoreButtonSelectedImage,
		associatedPageType = AppPage.More,
	})

	local uiListLayout = Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	local portraitButtons = {
		UIListLayout = uiListLayout,
		HomeButton = homeButton,
		GamesButton = gamesButton,
		AvatarButton = avatarButton,
		ChatButton = chatButton,
		MoreButton = moreButton,
	}

	local landscapeButtons = {
		UIListLayout = uiListLayout,
		HomeButton = homeButton,
		GamesButton = gamesButton,
		CatalogButton = catalogButton,
		AvatarButton = avatarButton,
		FriendsButton = friendsButton,
		ChatButton = chatButton,
		MoreButton = moreButton,
	}

	local children = {}

	if deviceOrientation == DeviceOrientationMode.Portrait then
		children = portraitButtons
	elseif deviceOrientation == DeviceOrientationMode.Landscape then
		children = {
			Frame = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(0.92, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
			}, landscapeButtons),
		}
	end

	return Roact.createElement(Roact.Portal, {
		target = CoreGui,
	}, {
		BottomBar = Roact.createElement("ScreenGui", {
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			DisplayOrder = displayOrder,
		}, {
			TopLine = Roact.createElement("Frame", {
				Position = UDim2.new(0, 0, 1, 0),
				Size = UDim2.new(1, 0, 0, 1),
				BorderSizePixel = 0,
				BackgroundTransparency = 0,
				BackgroundColor3 = Constants.Color.GRAY_SEPARATOR,
				ZIndex = 2,
			}),
			Contents = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 1, 0),
				Size = UDim2.new(1, 0, 0, Constants.TAB_BAR_SIZE),
				BorderSizePixel = 0,
				BackgroundTransparency = 0,
				BackgroundColor3 = Constants.Color.WHITE,
				ZIndex = 1,
			}, children)
		}),
	})
end

function BottomBar:didMount()
	self:updateInset(self.props.bottomBarVisible)
end

function BottomBar:willUpdate(newProps)
	if (self.props.bottomBarVisible ~= newProps.bottomBarVisible) then
		self:updateInset(newProps.bottomBarVisible)
	end
end

function BottomBar:willUnmount()
	if self.bottomBarSizeListener then
		self.bottomBarSizeListener:Disconnect()
	end
end

function BottomBar:updateInset(visible)
	-- Setting the view size to consider bottom bar space.
	-- TODO Needs to be checked if this will be necessary after integrating Lua bottom bar.

	-- self.bottomBarSize is not a local variable because BottomBarSize changed signal callback isn't
	-- re-created each time, it could use the old upvalue if bottomBarSize is local variable.
	self.bottomBarSize = (UseLuaBottomBar and visible) and Constants.TAB_BAR_SIZE or 0
	if UseLuaBottomBar then
		broadcastNotification("", getNotificationTypeList().HIDE_TAB_BAR)
	end
	-- Android device might still have BottomBarSize when we HIDE_TAB_BAR
	-- Which is for system virtual navigation bar
	-- And BottomBarSize might also change while app is running depends on the device
	setGlobalGuiInset(0, 0, 0, self.bottomBarSize + getSystemBottomBarHeight())
	if not self.bottomBarSizeListener and not _G.__TESTEZ_RUNNING_TEST__ then
		self.bottomBarSizeListener = UserInputService:GetPropertyChangedSignal("BottomBarSize"):Connect(function()
			setGlobalGuiInset(0, 0, 0, self.bottomBarSize + UserInputService.BottomBarSize.Y)
		end)
	end
end

BottomBar = RoactRodux.connect(function(store)
	local state = store:GetState()
	return {
		deviceOrientation = state.DeviceOrientation,
		bottomBarVisible = state.ChatAppReducer.TabBarVisible,
	}
end)(BottomBar)

return BottomBar