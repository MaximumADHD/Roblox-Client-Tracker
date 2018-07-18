--[[
	Container for both the Share Game Page contents and header
]]

local CorePackages = game:GetService("CorePackages")

local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local ShareGame = Modules.Settings.Pages.ShareGame

local Header = require(ShareGame.Components.Header)
local ConversationList = require(ShareGame.Components.ConversationList)
local Constants = require(ShareGame.Constants)

local ClosePage = require(ShareGame.Actions.ClosePage)

local HUB_HEADER_HEIGHT_PORTRAIT = 60
local HUB_HEADER_HEIGHT_SMALL_TOUCH_SCREEN = 55
local HUB_HEADER_HEIGHT_LARGE = 90

local function calculateAdditionalHeight(isSmallTouchScreen, deviceOrientation)
	if deviceOrientation == Constants.DeviceOrientation.PORTRAIT then
		return HUB_HEADER_HEIGHT_PORTRAIT
	elseif isSmallTouchScreen then
		return HUB_HEADER_HEIGHT_SMALL_TOUCH_SCREEN
	else
		return HUB_HEADER_HEIGHT_LARGE
	end
end

local PageFrame = Roact.PureComponent:extend("PageFrame")

function PageFrame:render()
	local isSmallTouchScreen = self.props.isSmallTouchScreen
	local deviceOrientation = self.props.deviceOrientation
	local deviceLayout = self.props.deviceLayout
	local zIndex = self.props.zIndex
	local closePage = self.props.closePage
	local searchAreaActive = self.props.searchAreaActive
	local searchText = self.props.searchText

	local layoutSpecific = Constants.LayoutSpecific[deviceLayout]
	local headerHeight = layoutSpecific.HEADER_HEIGHT
	local pageSideMargins = layoutSpecific.PAGE_SIDE_MARGINS

	-- Calculate additional page height so that the top of this page frame is
	-- flush with the Settings Hub header.
	local addedPageHeight = calculateAdditionalHeight(isSmallTouchScreen, deviceOrientation)

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, addedPageHeight),
		Position = UDim2.new(0, 0, 0, -addedPageHeight),
		ZIndex = zIndex,
	}, {
		UIPadding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, pageSideMargins),
			PaddingRight = UDim.new(0, pageSideMargins),
		}),
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}),

		Header = Roact.createElement(Header, {
			deviceLayout = deviceLayout,
			size = UDim2.new(1, 0, 0, headerHeight),
			layoutOrder = 0,
			zIndex = zIndex,
			closePage = closePage,
			searchAreaActive = searchAreaActive,
		}),
		ConversationList = Roact.createElement(ConversationList, {
			size = UDim2.new(1, 0, 1, -headerHeight),
			position = UDim2.new(0, 0, 0, headerHeight),
			layoutOrder = 1,
			zIndex = zIndex,
			searchText = searchText,
		}),
	})
end

PageFrame = RoactRodux.connect(function(store)
	local state = store:getState()
	return {
		isSmallTouchScreen = state.DeviceInfo.IsSmallTouchScreen,
		deviceOrientation = state.DeviceInfo.DeviceOrientation,
		deviceLayout = state.DeviceInfo.DeviceLayout,

		searchAreaActive = state.ConversationsSearch.SearchAreaActive,
		searchText = state.ConversationsSearch.SearchText,

		closePage = function()
			store:dispatch(ClosePage(Constants.PageRoute.SHARE_GAME))
		end
	}
end)(PageFrame)

return PageFrame
