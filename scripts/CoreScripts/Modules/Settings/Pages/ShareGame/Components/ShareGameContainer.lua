--[[
	Container for both the Share Game Page contents and header
]]

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local Players = game:GetService("Players")

local AppTempCommon = CorePackages.AppTempCommon
local Modules = CoreGui.RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local httpRequest = require(AppTempCommon.Temp.httpRequest)

local ShareGamePageFrame = require(ShareGame.Components.ShareGamePageFrame)
local Constants = require(ShareGame.Constants)
local FetchUserFriends = require(ShareGame.Thunks.FetchUserFriends)

local ClosePage = require(ShareGame.Actions.ClosePage)

local ShareGameContainer = Roact.PureComponent:extend("ShareGameContainer")
ShareGameContainer.defaultProps = {
	skeletonComponent = ShareGamePageFrame,
}

function ShareGameContainer:init()
	self.props.reFetch()
end

function ShareGameContainer:render()
	return Roact.createElement(self.props.skeletonComponent, self.props)
end

ShareGameContainer = RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			deviceLayout = state.DeviceInfo.DeviceLayout,
			searchAreaActive = state.ConversationsSearch.SearchAreaActive,
			searchText = state.ConversationsSearch.SearchText,
		}
	end,
	function(dispatch)
		return {
			closePage = function()
				dispatch(ClosePage(Constants.PageRoute.SHARE_GAME))
			end,

			reFetch = function()
				local userId = tostring(Players.LocalPlayer.UserId)
				local requestImpl = httpRequest(HttpRbxApiService)

				dispatch(FetchUserFriends(requestImpl, userId))
			end
		}
	end
)(ShareGameContainer)

return ShareGameContainer
