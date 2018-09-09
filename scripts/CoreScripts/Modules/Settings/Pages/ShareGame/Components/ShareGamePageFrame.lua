--[[
	Container for both the Share Game Page contents and header
]]

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local Players = game:GetService("Players")

local AppTempCommon = CorePackages.AppTempCommon
local Modules = CoreGui.RobloxGui.Modules

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local httpRequest = require(AppTempCommon.Temp.httpRequest)
local ApiFetchUsersFriends = require(AppTempCommon.LuaApp.Thunks.ApiFetchUsersFriends)
local RetrievalStatus = require(CorePackages.AppTempCommon.LuaApp.Enum.RetrievalStatus)

local ShareGame = Modules.Settings.Pages.ShareGame

local Header = require(ShareGame.Components.Header)
local ConversationList = require(ShareGame.Components.ConversationList)
local Constants = require(ShareGame.Constants)

local ClosePage = require(ShareGame.Actions.ClosePage)

local USER_LIST_PADDING = 10

local ShareGamePageFrame = Roact.PureComponent:extend("ShareGamePageFrame")

local ToasterComponent = require(ShareGame.Components.ErrorToaster)

function ShareGamePageFrame:init()
	self.props.reFetch()
end

function ShareGamePageFrame:render()
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
		toasterPortal = Roact.createElement(Roact.Portal, {
			target = CoreGui,
		}, {
			Toaster = Roact.createElement(ToasterComponent),
		}),

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

-- TODO: Update to use RoactRodux.UNSTABLE_connect2
ShareGamePageFrame = RoactRodux.connect(function(store)
	local state = store:getState()
	return {
		deviceLayout = state.DeviceInfo.DeviceLayout,

		searchAreaActive = state.ConversationsSearch.SearchAreaActive,
		searchText = state.ConversationsSearch.SearchText,

		closePage = function()
			store:dispatch(ClosePage(Constants.PageRoute.SHARE_GAME))
		end,

		reFetch = function()
			local userId = tostring(Players.LocalPlayer.UserId)
			local friendsRetrievalStatus = state.Friends.retrievalStatus[userId]
			if friendsRetrievalStatus ~= RetrievalStatus.Fetching then
				local networkImpl = httpRequest(HttpRbxApiService)
				store:dispatch(ApiFetchUsersFriends(networkImpl, userId, Constants.ThumbnailRequest.InviteToGame))
			end
		end
	}
end)(ShareGamePageFrame)

return ShareGamePageFrame
