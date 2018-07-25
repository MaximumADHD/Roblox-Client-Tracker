local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local Players = game:GetService("Players")


local AppTempCommon = CorePackages.AppTempCommon
local Modules = CoreGui.RobloxGui.Modules

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local ShareGame = Modules.Settings.Pages.ShareGame
local Constants = require(ShareGame.Constants)

local EventStream = require(AppTempCommon.Temp.EventStream)
local Promise = require(AppTempCommon.LuaApp.Promise)
local httpRequest = require(AppTempCommon.Temp.httpRequest)
local ApiFetchUsersFriends = require(AppTempCommon.LuaApp.Thunks.ApiFetchUsersFriends)

local LayoutProvider = require(ShareGame.Components.LayoutProvider)
local ShareGamePageFrame = require(ShareGame.Components.ShareGamePageFrame)

local ShareGameApp = Roact.PureComponent:extend("App")

function ShareGameApp:render()
	local pageTarget = self.props.pageTarget

	local pageFrame = nil
	if self.props.isPageOpen then
		pageFrame = Roact.createElement(ShareGamePageFrame, {
			zIndex = Constants.SHARE_GAME_Z_INDEX,
		})
	end

	return Roact.createElement(LayoutProvider, nil, {
		Roact.createElement(Roact.Portal, {
			target = pageTarget,
		}, {
			ShareGamePageFrame = pageFrame
		})
	})
end

function ShareGameApp:didMount()
	self._networkImpl = httpRequest(HttpRbxApiService)
	self.props.initialFetch(self._networkImpl)
	self.eventStream = EventStream.new()
end

function ShareGameApp:willUnmount()
	self.eventStream:releaseRBXEventStream()
end

local connector = RoactRodux.connect(function(store)
	local userId = tostring(Players.LocalPlayer.UserId)

	return {
		isPageOpen = store:getState().Page.IsOpen,
		initialFetch = function(networkImpl)
			Promise.all({
				store:dispatch(ApiFetchUsersFriends(
					networkImpl, userId, Constants.ThumbnailRequest.InviteToGameHeadshot
				)),
				-- V2: Add a fetch for conversations in this promise list
			}):andThen(function(result)
				-- TODO: This: self.state.store:dispatch(SetFetchedShareGameData(true))
			end)
		end,
	}
end)

return connector(ShareGameApp)
