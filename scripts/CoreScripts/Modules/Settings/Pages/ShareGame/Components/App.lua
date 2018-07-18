local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local AppTempCommon = CorePackages.AppTempCommon

local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local ShareGame = Modules.Settings.Pages.ShareGame
local Constants = require(ShareGame.Constants)

local Promise = require(AppTempCommon.LuaApp.Promise)
local request = require(AppTempCommon.LuaApp.Http.request)
local ApiFetchUsersFriends = require(AppTempCommon.LuaApp.Thunks.ApiFetchUsersFriends)

local LayoutProvider = require(ShareGame.Components.LayoutProvider)
local ShareGamePageFrame = require(ShareGame.Components.ShareGamePageFrame)

local ShareGameApp = Roact.PureComponent:extend("App")

function ShareGameApp:didMount()
	self._networkImpl = request
	self.props.initialFetch(self._networkImpl)
end

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
