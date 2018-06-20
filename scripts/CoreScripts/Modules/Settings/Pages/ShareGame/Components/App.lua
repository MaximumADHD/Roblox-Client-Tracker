local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local ShareGame = Modules.Settings.Pages.ShareGame
local Constants = require(ShareGame.Constants)

local Promise = require(ShareGame.Promise)
local Networking = require(ShareGame.Http.Networking)
local ApiFetchAllUsersFriends = require(ShareGame.Thunks.ApiFetchAllUsersFriends)

local LayoutProvider = require(ShareGame.Components.LayoutProvider)
local PageFrame = require(ShareGame.Components.PageFrame)

local ShareGameApp = Roact.PureComponent:extend("App")

function ShareGameApp:didMount()
	self._networkImpl = Networking.new()
	self.props.initialFetch(self._networkImpl)
end

function ShareGameApp:render()
	local pageTarget = self.props.pageTarget

	return Roact.createElement(LayoutProvider, nil, {
		Roact.createElement(Roact.Portal, {
			target = pageTarget,
		}, {
			PageFrame = Roact.createElement(PageFrame, {
				zIndex = Constants.SHARE_GAME_Z_INDEX,
			})
		})
	})
end

local connector = RoactRodux.connect(function(store)
	return {
		initialFetch = function(networkImpl)
			Promise.all({
				store:dispatch(ApiFetchAllUsersFriends(
					networkImpl, Constants.AvatarThumbnailTypes.HeadShot
				)),
				-- V2: Add a fetch for conversations in this promise list
			}):andThen(function(result)
				-- TODO: This: self.state.store:dispatch(SetFetchedShareGameData(true))
			end)
		end,
	}
end)

return connector(ShareGameApp)
