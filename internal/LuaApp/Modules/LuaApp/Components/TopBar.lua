-- Note: This module is a stub and still needs work, but the TopBar is a prerequisite for several screens.
-- Note: Remaining features will be finished once integrated.

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")

local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local Constants = require(Modules.LuaApp.Constants)
local LocalizedTextLabel = require(Modules.LuaApp.Components.LocalizedTextLabel)
local SearchBar = require(Modules.LuaApp.Components.SearchBar)

local TOP_BAR_ICON_SIZE = 24
local TOP_BAR_ICON_MARGIN = 12
local TOP_BAR_ICON_PADDING = 6

local TOP_BAR_COLOR = Constants.Color.BLUE_PRESSED
local TOP_SYSTEM_BACKGROUND_COLOR = Constants.Color.BLUE_PRESSED

local DEFAULT_TEXT_COLOR = Constants.Color.WHITE

local DEFAULT_TITLE_FONT = Enum.Font.SourceSansSemibold
local DEFAULT_TITLE_FONT_SIZE = 20
local DEFAULT_TITLE_HEIGHT = 20

local DEFAULT_SUBTITLE_FONT = Enum.Font.SourceSansLight
local DEFAULT_SUBTITLE_FONT_SIZE = 12
local DEFAULT_SUBTITLE_HEIGHT = 12

local DEFAULT_TOP_BAR_HEIGHT = 42
local DEFAULT_TOP_SYSTEM_PADDING = 21
local DEFAULT_ZINDEX = 2

-- Note: This function can fail when called, StatusBarSize & NavBarSize
-- require restricted permissions.
pcall(function()
	local newSystemPadding = UserInputService.StatusBarSize.Y
	if newSystemPadding ~= 0 then
		DEFAULT_TOP_SYSTEM_PADDING = newSystemPadding
	end
	local newTopBarHeight = UserInputService.NavBarSize.Y
	if newTopBarHeight ~= 0 then
		DEFAULT_TOP_BAR_HEIGHT = newTopBarHeight
	end
end)

local TopBar = Roact.Component:extend("TopBar")

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

function TopBar.getLeftAlignTitle()
	-- Note: This function can fail when called, GetPlatform requires restricted
	-- permissions.
	local ok, platform = pcall(function()
		return UserInputService:GetPlatform()
	end)

	if ok then
		return platform ~= Enum.Platform.IOS
	else
		return true
	end
end

function TopBar:init()
	self.state = {
		onSearch = false,
	}

	self.confirmSearch = function(keyword)
		-- function callback when "Enter" on keyboard is pressed  when searching
		local notificationType = GuiService:GetNotificationTypeList().SEARCH_GAMES
		GuiService:BroadcastNotification(keyword, notificationType)
	end
end

function TopBar:render()
	-- Read properties to local variables:
	local textKey = self.props.textKey -- Must be a localization key.
	local textColor = self.props.textColor or DEFAULT_TEXT_COLOR

	local textTitleFont = self.props.titleFont or DEFAULT_TITLE_FONT
	local textTitleFontSize = self.props.titleSize or DEFAULT_TITLE_FONT_SIZE

	local textSubtitleFont = self.props.subtitleFont or DEFAULT_SUBTITLE_FONT
	local textSubtitleFontSize = self.props.subtitleSize or DEFAULT_SUBTITLE_FONT_SIZE

	local showBackButton = self.props.showBackButton or false
	local showBuyRobux = self.props.showBuyRobux or false
	local showNotifications = self.props.showNotifications or false
	local showSearch = self.props.showSearch or false

	local zIndex = self.props.ZIndex or DEFAULT_ZINDEX
	local confirmSearch = self.confirmSearch

	-- The design calls for left-aligning the title on Android, but not on iOS:
	local leftAlign = self.getLeftAlignTitle()

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
			leftStart = TOP_BAR_ICON_SIZE + TOP_BAR_ICON_MARGIN
		end
	end
	if self.state.onSearch then
		listBarLayout["SearchBar"] = Roact.createElement(SearchBar, {
			exitSearch = function()
				self:setState({
					onSearch = false,
				})
			end,
			confirmSearch = confirmSearch,
		})
	else
		if showBackButton then
			-- Android-like back button in the top-left of the screen layout:
			listBarLayout["ButtonBack"] = Roact.createElement("ImageButton", {
				AnchorPoint = Vector2.new(0, 0.5),
				AutoButtonColor = false,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Image = "rbxasset://textures/ui/LuaChat/icons/ic-back.png",
				LayoutOrder = 1,
				Position = UDim2.new(0, TOP_BAR_ICON_MARGIN, 0.5, 0),
				Size = UDim2.new(0, TOP_BAR_ICON_SIZE, 0, TOP_BAR_ICON_SIZE),
				[Roact.Event.Activated] = self.props.onBack,
			})
		end

		-- Title of our current location:
		listBarLayout["Title"] = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0, 0.5),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = 2,
			Position = UDim2.new(0, 0, 0.5, 0),
			Size = UDim2.new(1, 0, 0, DEFAULT_TITLE_HEIGHT + DEFAULT_SUBTITLE_HEIGHT),
		},{
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, TOP_BAR_ICON_MARGIN + leftStart),
				PaddingRight = UDim.new(0, TOP_BAR_ICON_MARGIN),
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
			Padding = UDim.new(0, TOP_BAR_ICON_PADDING),
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		})

		if showSearch then
			functionButtons["Search"] = Roact.createElement("ImageButton", {
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Image = "rbxasset://textures/ui/LuaChat/icons/ic-search.png",
				LayoutOrder = 3,
				Size = UDim2.new(0, TOP_BAR_ICON_SIZE, 0, TOP_BAR_ICON_SIZE),
				[Roact.Event.Activated] = function()
					self:setState({
						onSearch = true,
					})
				end,
			})
		end

		if showBuyRobux then
			functionButtons["Robux"] = Roact.createElement("ImageButton", {
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Image = "rbxasset://textures/ui/LuaApp/icons/ic-ROBUX.png",
				LayoutOrder = 4,
				Size = UDim2.new(0, TOP_BAR_ICON_SIZE, 0, TOP_BAR_ICON_SIZE),
				[Roact.Event.Activated] = function()
					GuiService:BroadcastNotification("", GuiService:GetNotificationTypeList().PURCHASE_ROBUX)
				end,
			})
		end

		if showNotifications then
			functionButtons["Notifications"] = Roact.createElement("ImageButton", {
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Image = "rbxasset://textures/ui/LuaApp/icons/ic-notification.png",
				LayoutOrder = 5,
				Size = UDim2.new(0, TOP_BAR_ICON_SIZE, 0, TOP_BAR_ICON_SIZE),
				[Roact.Event.Activated] = function()
					GuiService:BroadcastNotification("", GuiService:GetNotificationTypeList().VIEW_NOTIFICATIONS)
				end,
			})
		end

		listBarLayout["Right Icons"] = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(1, 0.5),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = UDim2.new(1, -TOP_BAR_ICON_MARGIN, 0.5, 0),
		}, functionButtons)
	end

	-- Return the outer frame with all items:
	return Roact.createElement("Frame", {
		BackgroundColor3 = TOP_SYSTEM_BACKGROUND_COLOR,
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
		LayoutOrder = self.props.LayoutOrder,
		Size = UDim2.new(1, 0, 0, DEFAULT_TOP_BAR_HEIGHT + DEFAULT_TOP_SYSTEM_PADDING),
		ZIndex = zIndex,
	}, {
		Layout = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0, 1),
			BackgroundColor3 = TOP_BAR_COLOR,
			BackgroundTransparency = 0,
			BorderSizePixel = 0,
			Position = UDim2.new(0, 0, 1, 0),
			Size = UDim2.new(1, 0, 0, DEFAULT_TOP_BAR_HEIGHT),
		}, listBarLayout),
	})
end

TopBar = RoactRodux.connect(function(store, props)
	local state = store:GetState()

	return {
		localUserName = state.LocalUser.name,
	}
end)(TopBar)

function TopBar.getHeight()
	return DEFAULT_TOP_SYSTEM_PADDING + DEFAULT_TOP_BAR_HEIGHT
end

return TopBar