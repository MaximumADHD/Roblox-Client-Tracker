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

local ShareGamePageFrame = require(ShareGame.Components.ShareGamePageFrame)
local Constants = require(ShareGame.Constants)
local FetchUserFriends = require(ShareGame.Thunks.FetchUserFriends)

local ClosePage = require(ShareGame.Actions.ClosePage)

local FFlagLuaChatRemoveOldRoactRoduxConnect = settings():GetFFlag("LuaChatRemoveOldRoactRoduxConnect")

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

if FFlagLuaChatRemoveOldRoactRoduxConnect then
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
else
	ShareGameContainer = RoactRodux.connect(function(store)
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
	end)(ShareGameContainer)
end

return ShareGameContainer
