-- Note: This module is a stub and still needs work, but the TopBar is a prerequisite for several screens.
-- Note: Remaining features will be finished once integrated.

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")

local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local Device = require(Modules.LuaChat.Device)
local Constants = require(Modules.LuaApp.Constants)
local LocalizedTextLabel = require(Modules.LuaApp.Components.LocalizedTextLabel)
local SearchBar = require(Modules.LuaApp.Components.SearchBar)
local NotificationBadge = require(Modules.LuaApp.Components.NotificationBadge)

local SetStatusBarHeight = require(Modules.LuaApp.Actions.SetStatusBarHeight)
local SetNavBarHeight = require(Modules.LuaApp.Actions.SetNavBarHeight)

local DEFAULT_LEFT_TEXT_MARGIN = 12

local TopBarLeftTextMargin = {
	[Enum.Platform.Android] = {
		[Device.FormFactor.PHONE] = 16,
		[Device.FormFactor.TABLET] = 18,
	},
}

local TOP_BAR_ICON_SIZE = 24
local TOP_BAR_ICON_MARGIN = 5
local TOP_BAR_ICON_PADDING = 6
local TOP_BAR_ICON_TOUCH_SIZE = TOP_BAR_ICON_SIZE + TOP_BAR_ICON_PADDING * 2

local DeviceSpecificTopBarIconSpec = {
	--[[
	[Device Type] = {
		[Form Factor Type] = {
			Size = Icon Size,
			Margin = Margin for the list layout of the icons
			Padding = Padding between icons in the list layout
			Touch Size = Size of the touchable area of the icon. (Size + Padding * 2)
		},
	},
	--]]
	[Enum.Platform.IOS] = {
		[Device.FormFactor.PHONE] = {
			Size = 24,
			Margin = 5,
			Padding = 6,
			TouchSize = 24 + 6 * 2,
		},
		[Device.FormFactor.TABLET] = {
			Size = 24,
			Margin = 4,
			Padding = 12,
			TouchSize = 24 + 12 * 2,
		},
	},
	[Enum.Platform.Android] = {
		[Device.FormFactor.PHONE] = {
			Size = 27,
			Margin = 2,
			Padding = 16,
			TouchSize = 24 + 14 * 2,
		},
		[Device.FormFactor.TABLET] = {
			Size = 27,
			Margin = 10,
			Padding = 12,
			TouchSize = 30 + 12 * 2,
		},
	},
}

local TOP_BAR_COLOR = Constants.Color.BLUE_PRESSED
local TOP_SYSTEM_BACKGROUND_COLOR = Constants.Color.BLUE_PRESSED

local DEFAULT_TEXT_COLOR = Constants.Color.WHITE

local DEFAULT_TITLE_FONT = Enum.Font.SourceSansSemibold
local DEFAULT_TITLE_FONT_SIZE = 23
local DEFAULT_TITLE_HEIGHT = 23

local DEFAULT_SUBTITLE_FONT = Enum.Font.SourceSansLight
local DEFAULT_SUBTITLE_FONT_SIZE = 13
local DEFAULT_SUBTITLE_HEIGHT = 13
local DEFAULT_SUBTITLE_BOTTOM_PADDING = 9

local DeviceSpecificSubtitleBottomPadding = {
	[Enum.Platform.IOS] = {
		[Device.FormFactor.PHONE] = 9,
		[Device.FormFactor.TABLET] = 11,
	},
	[Enum.Platform.Android] = {
		[Device.FormFactor.PHONE] = 0,
		[Device.FormFactor.TABLET] = 1,
	},
}

local DEFAULT_ZINDEX = 2

local function showBuyRobuxCallback()
	GuiService:BroadcastNotification("", GuiService:GetNotificationTypeList().PURCHASE_ROBUX)
end

local function showNotificationsCallback()
	GuiService:BroadcastNotification("", GuiService:GetNotificationTypeList().VIEW_NOTIFICATIONS)
end

local function confirmSearch(keyword)
	-- function callback when "Enter" on keyboard is pressed  when searching
	local notificationType = GuiService:GetNotificationTypeList().SEARCH_GAMES
	GuiService:BroadcastNotification(keyword, notificationType)
end

local function TouchFriendlyImageIcon(props)
	local Image = props.Image
	local LayoutOrder = props.LayoutOrder
	local AnchorPoint = props.AnchorPoint or Vector2.new(0, 0)
	local onActivated = props.onActivated
	local hasNotificationBadge = props.hasNotificationBadge
	local notificationCount = props.notificationCount

	local topBarIconSize = props.topBarIconSize
	local topBarIconTouchSize = props.topBarIconTouchSize

	return Roact.createElement("ImageButton", {
		AnchorPoint = AnchorPoint,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = LayoutOrder,
		Size = UDim2.new(0, topBarIconTouchSize, 0, topBarIconTouchSize),
		[Roact.Event.Activated] = onActivated,
	}, {
		IconImage = Roact.createElement("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, topBarIconSize, 0, topBarIconSize),
			Image = Image,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = 1,
		}, {
			NotificationBadge = hasNotificationBadge and Roact.createElement(NotificationBadge, {
				layoutOrder = 0,
				notificationCount = notificationCount,
			}) or nil,
		}),
	})
end

local TopBar = Roact.PureComponent:extend("TopBar")

function TopBar:getFancyPlayerName()
	local playerName = self.props.localUserName or ""
	local localPlayer = Players.LocalPlayer

	-- Note: This function can fail when called, GetUnder13 requires restricted
	-- permissions.
	local ok, isUnder13 = pcall(function()
		return localPlayer:GetUnder13()
	end)

	if ok then
		if isUnder13 then
			return playerName .. " <13"
		else
			return playerName .. " 13+"
		end
	else
		return playerName
	end
end

function TopBar:getLeftAlignTitle()
	return self.devicePlatform ~= Enum.Platform.IOS
end

function TopBar:updateStatusBarHeight()
	local setStatusBarHeight = self.props.setStatusBarHeight

	-- Note: This function can fail when called during unit testing
	-- because UserInputService.StatusBarSize require restricted permissions.
	pcall(function()
		local newSystemPadding = UserInputService.StatusBarSize.Y
		if newSystemPadding ~= 0 then
			setStatusBarHeight(newSystemPadding)
		end
	end)
end

function TopBar:updateNavBarHeight()
	local setNavBarHeight = self.props.setNavBarHeight

	-- Note: This function can fail when called during unit testing
	-- because UserInputService.NavBarSize require restricted permissions.
	pcall(function()
		local newTopBarHeight = UserInputService.NavBarSize.Y
		if newTopBarHeight ~= 0 then
			setNavBarHeight(newTopBarHeight)
		end
	end)
end

function TopBar:init()
	self.state = {
		onSearch = false,
	}

	-- Predefine callback functions for top bar icons
	self.onActivatedForSearchButton = function()
		self:setState({
			onSearch = true,
		})
	end

	self.onExitSearch = function()
		self:setState({
			onSearch = false,
		})
	end
	-- End of predefined call back functions for top bar icons

	self.connections = {}

	self:updateStatusBarHeight()
	self:updateNavBarHeight()
	pcall(function()
		local statusBarSizeListener = UserInputService:GetPropertyChangedSignal("StatusBarSize"):Connect(function()
			self:updateStatusBarHeight()
		end)
		table.insert(self.connections, statusBarSizeListener)

		local navBarSizeListener = UserInputService:GetPropertyChangedSignal("NavBarSize"):Connect(function()
			self:updateNavBarHeight()
		end)
		table.insert(self.connections, navBarSizeListener)
	end)

	-- Note: This function can fail when called, GetPlatform requires restricted
	-- permissions.
	local ok, platform = pcall(function()
		return UserInputService:GetPlatform()
	end)

	if ok then
		self.devicePlatform = platform
	else
		warn("Top Bar: Device Platform is not identified during initialization.")
	end

end

function TopBar:render()
	local navBarHeight = self.props.topBar.navBarHeight
	local statusBarHeight = self.props.topBar.statusBarHeight

	local formFactor = self.props.formFactor

	local currentTopBarIconSpec = DeviceSpecificTopBarIconSpec[self.devicePlatform]
	currentTopBarIconSpec = currentTopBarIconSpec and currentTopBarIconSpec[formFactor]

	local topBarIconSize = currentTopBarIconSpec and currentTopBarIconSpec.Size or TOP_BAR_ICON_SIZE
	local topBarIconMargin = currentTopBarIconSpec and currentTopBarIconSpec.Margin or TOP_BAR_ICON_MARGIN
	local topBarIconTouchSize = currentTopBarIconSpec and currentTopBarIconSpec.TouchSize or TOP_BAR_ICON_TOUCH_SIZE

	-- Read properties to local variables:
	local textKey = self.props.textKey -- Must be a localization key.
	local textColor = self.props.textColor or DEFAULT_TEXT_COLOR

	local textTitleFont = self.props.titleFont or DEFAULT_TITLE_FONT
	local textTitleFontSize = self.props.titleSize or DEFAULT_TITLE_FONT_SIZE

	local textSubtitleFont = self.props.subtitleFont or DEFAULT_SUBTITLE_FONT
	local textSubtitleFontSize = self.props.subtitleSize or DEFAULT_SUBTITLE_FONT_SIZE

	local subtitleBottomPadding = DeviceSpecificSubtitleBottomPadding[self.devicePlatform]
	subtitleBottomPadding = subtitleBottomPadding and subtitleBottomPadding[formFactor] or DEFAULT_SUBTITLE_BOTTOM_PADDING

	local topBarLeftTextMargin = TopBarLeftTextMargin[self.devicePlatform]
	topBarLeftTextMargin = topBarLeftTextMargin and topBarLeftTextMargin[formFactor] or DEFAULT_LEFT_TEXT_MARGIN

	local showBackButton = self.props.showBackButton or false
	local showBuyRobux = self.props.showBuyRobux or false
	local showNotifications = self.props.showNotifications or false
	local showSearch = self.props.showSearch or false

	local numberOfNotifications = self.props.numberOfNotifications

	local zIndex = self.props.ZIndex or DEFAULT_ZINDEX

	-- The design calls for left-aligning the title on Android, but not on iOS:
	local leftAlign = self:getLeftAlignTitle()

	local playerName = self:getFancyPlayerName()

	-- This list contains all our items for the top bar:
	local listBarLayout = {}

	-- leftStart is used because the title text needs to be wrapped to the
	-- center of the screen, not to the center of the space that's available for
	-- us.
	local leftStart = 0
	local alignText = Enum.TextXAlignment.Center
	if leftAlign then
		alignText = Enum.TextXAlignment.Left
		if showBackButton then
			leftStart = topBarIconSize + topBarIconMargin
		end
	end
	if self.state.onSearch then
		listBarLayout["SearchBar"] = Roact.createElement(SearchBar, {
			exitSearch = self.onExitSearch,
			confirmSearch = confirmSearch,
		})
	else
		if showBackButton then
			-- Android-like back button in the top-left of the screen layout:
			listBarLayout["BackButton"] = Roact.createElement(TouchFriendlyImageIcon, {
				topBarIconSize = topBarIconSize,
				topBarIconTouchSize = topBarIconTouchSize,
				Image = "rbxasset://textures/ui/LuaChat/icons/ic-back.png",
				LayoutOrder = 1,
				onActivated = self.props.onBack,
			})
		end

		-- Title of our current location:
		listBarLayout["Title"] = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0, 0.5),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = 2,
			Position = UDim2.new(0, 0, 0.5, 0),
			Size = UDim2.new(1, 0, 0, DEFAULT_TITLE_HEIGHT + DEFAULT_SUBTITLE_HEIGHT + subtitleBottomPadding),
		},{
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, topBarLeftTextMargin + leftStart),
				PaddingRight = UDim.new(0, topBarIconMargin),
				PaddingBottom = UDim.new(0, subtitleBottomPadding),
			}),
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			SectionName = Roact.createElement(LocalizedTextLabel, {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = textTitleFont,
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 0, DEFAULT_TITLE_HEIGHT),
				Text = textKey,
				TextColor3 = textColor,
				TextSize = textTitleFontSize,
				TextXAlignment = alignText,
				TextYAlignment = Enum.TextYAlignment.Center,
			}),

			PlayerName = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = textSubtitleFont,
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, DEFAULT_SUBTITLE_HEIGHT),
				Text = playerName,
				TextColor3 = textColor,
				TextSize = textSubtitleFontSize,
				TextXAlignment = alignText,
				TextYAlignment = Enum.TextYAlignment.Center,
			}),
		})

		-- Icons on the right side:
		local functionButtons = {}
		functionButtons["Layout"] = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		})

		if showSearch then
			functionButtons["Search"] = Roact.createElement(TouchFriendlyImageIcon, {
				topBarIconSize = topBarIconSize,
				topBarIconTouchSize = topBarIconTouchSize,
				Image = "rbxasset://textures/ui/LuaChat/icons/ic-search.png",
				LayoutOrder = 3,
				AnchorPoint = Vector2.new(0, 0.5),
				onActivated = self.onActivatedForSearchButton,
			})
		end

		if showBuyRobux then
			functionButtons["Robux"] = Roact.createElement(TouchFriendlyImageIcon, {
				topBarIconSize = topBarIconSize,
				topBarIconTouchSize = topBarIconTouchSize,
				Image = "rbxasset://textures/ui/LuaApp/icons/ic-ROBUX.png",
				LayoutOrder = 4,
				AnchorPoint = Vector2.new(0, 0.5),
				onActivated = showBuyRobuxCallback,
			})
		end

		if showNotifications then
			functionButtons["Notifications"] = Roact.createElement(TouchFriendlyImageIcon, {
				topBarIconSize = topBarIconSize,
				topBarIconTouchSize = topBarIconTouchSize,
				Image = "rbxasset://textures/ui/LuaApp/icons/ic-notification.png",
				LayoutOrder = 5,
				AnchorPoint = Vector2.new(0, 0.5),
				onActivated = showNotificationsCallback,
				hasNotificationBadge = true,
				notificationCount = numberOfNotifications,
			})
		end

		listBarLayout["Right Icons"] = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(1, 0.5),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = UDim2.new(1, -topBarIconMargin, 0.5, 0),
		}, functionButtons)
	end

	-- Return the outer frame with all items:
	return Roact.createElement("Frame", {
		BackgroundColor3 = TOP_SYSTEM_BACKGROUND_COLOR,
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
		LayoutOrder = self.props.LayoutOrder,
		Size = UDim2.new(1, 0, 0, navBarHeight + statusBarHeight),
		ZIndex = zIndex,
	}, {
		Layout = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0, 1),
			BackgroundColor3 = TOP_BAR_COLOR,
			BackgroundTransparency = 0,
			BorderSizePixel = 0,
			Position = UDim2.new(0, 0, 1, 0),
			Size = UDim2.new(1, 0, 0, navBarHeight),
		}, listBarLayout),
	})
end

function TopBar:willUnmount()
	if self.connections then
		for _, connection in pairs(self.connections) do
			connection:Disconnect()
		end
	end
end

TopBar = RoactRodux.connect(function(store, props)
	local state = store:GetState()
	local localUserModel = state.Users[state.LocalUserId]

	return {
		localUserName = localUserModel and localUserModel.name,
		formFactor = state.FormFactor,
		topBar = state.TopBar,
		numberOfNotifications = state.NotificationBadgeCounts.TopBarNotificationIcon,

		setStatusBarHeight = function(newStatusBarHeight)
			return store:Dispatch(SetStatusBarHeight(newStatusBarHeight))
		end,

		setNavBarHeight = function(newNavBarHeight)
			return store:Dispatch(SetNavBarHeight(newNavBarHeight))
		end,
	}
end)(TopBar)

return TopBar