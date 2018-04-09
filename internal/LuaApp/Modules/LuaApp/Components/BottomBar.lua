local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local Constants = require(Modules.LuaApp.Constants)
local AppPage = require(Modules.LuaApp.AppPage)
local DeviceOrientationMode = require(Modules.LuaApp.DeviceOrientationMode)

local BottomBarButton = require(Modules.LuaApp.Components.BottomBarButton)

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

local BottomBar = Roact.Component:extend("BottomBar")

function BottomBar:render()
	local deviceOrientation = self.props.deviceOrientation
	local isVisible = self.props.isVisible
	local displayOrder = self.props.displayOrder

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

	local portraitButtons = {
		HomeButton = homeButton,
		GamesButton = gamesButton,
		AvatarButton = avatarButton,
		ChatButton = chatButton,
		MoreButton = moreButton,
	}

	local landscapeButtons = {
		HomeButton = homeButton,
		GamesButton = gamesButton,
		CatalogButton = catalogButton,
		AvatarButton = avatarButton,
		FriendsButton = friendsButton,
		ChatButton = chatButton,
		MoreButton = moreButton,
	}

	local children = deviceOrientation == DeviceOrientationMode.Landscape and
		landscapeButtons or portraitButtons

	children["TopLine"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 1),
		BorderSizePixel = 0,
		BackgroundTransparency = 0,
		BackgroundColor3 = Constants.Color.GRAY_SEPARATOR,
	})

	return Roact.createElement("ScreenGui", {
		Enabled = isVisible,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		DisplayOrder = displayOrder,
	}, {
		Contents = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 1, 0),
			Size = UDim2.new(1, 0, 0, Constants.TAB_BAR_SIZE),
			BorderSizePixel = 0,
			BackgroundTransparency = 0,
			BackgroundColor3 = Constants.Color.WHITE,
		}, children)
	})
end

BottomBar = RoactRodux.connect(function(store)
	local state = store:GetState()
	return {
		deviceOrientation = state.DeviceOrientation,
	}
end)(BottomBar)

return BottomBar