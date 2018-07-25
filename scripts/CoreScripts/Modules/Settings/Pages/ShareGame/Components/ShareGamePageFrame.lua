--[[
	Container for both the Share Game Page contents and header
]]

local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local AppTempCommon = CorePackages.AppTempCommon

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Players = game:GetService("Players")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local httpRequest = require(AppTempCommon.Temp.httpRequest)
local ApiFetchUsersFriends = require(AppTempCommon.LuaApp.Thunks.ApiFetchUsersFriends)

local ShareGame = Modules.Settings.Pages.ShareGame

local Header = require(ShareGame.Components.Header)
local ConversationList = require(ShareGame.Components.ConversationList)
local Constants = require(ShareGame.Constants)

local ClosePage = require(ShareGame.Actions.ClosePage)

local USER_LIST_PADDING = 10

local ShareGamePageFrame = Roact.PureComponent:extend("ShareGamePageFrame")

function ShareGamePageFrame:didMount()
	self.props.reFetch()
end

function ShareGamePageFrame:render()
	local isSmallTouchScreen = self.props.isSmallTouchScreen
	local deviceOrientation = self.props.deviceOrientation
	local deviceLayout = self.props.deviceLayout
	local zIndex = self.props.zIndex
	local closePage = self.props.closePage
	local searchAreaActive = self.props.searchAreaActive
	local searchText = self.props.searchText

	local layoutSpecific = Constants.LayoutSpecific[deviceLayout]
	local headerHeight = layoutSpecific.HEADER_HEIGHT

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		ZIndex = zIndex,
	}, {
		Header = Roact.createElement(Header, {
			deviceLayout = deviceLayout,
			size = UDim2.new(1, 0, 0, headerHeight),
			position = UDim2.new(0, 0, 0, -headerHeight),
			layoutOrder = 0,
			zIndex = zIndex,
			closePage = closePage,
			searchAreaActive = searchAreaActive,
		}),
		ConversationList = Roact.createElement(ConversationList, {
			size = UDim2.new(1, 0, 1, layoutSpecific.EXTEND_BOTTOM_SIZE - USER_LIST_PADDING),
			topPadding = USER_LIST_PADDING,
			layoutOrder = 1,
			zIndex = zIndex,
			searchText = searchText,
		}),
	})
end

ShareGamePageFrame = RoactRodux.connect(function(store)
	local state = store:getState()
	return {
		isSmallTouchScreen = state.DeviceInfo.IsSmallTouchScreen,
		deviceOrientation = state.DeviceInfo.DeviceOrientation,
		deviceLayout = state.DeviceInfo.DeviceLayout,

		searchAreaActive = state.ConversationsSearch.SearchAreaActive,
		searchText = state.ConversationsSearch.SearchText,

		closePage = function()
			store:dispatch(ClosePage(Constants.PageRoute.SHARE_GAME))
		end,

		reFetch = function()
			local userId = tostring(Players.LocalPlayer.UserId)
			local networkImpl = httpRequest(HttpRbxApiService)
			store:dispatch(ApiFetchUsersFriends(networkImpl, userId, Constants.ThumbnailRequest.InviteToGameHeadshot))
		end
	}
end)(ShareGamePageFrame)

return ShareGamePageFrame
