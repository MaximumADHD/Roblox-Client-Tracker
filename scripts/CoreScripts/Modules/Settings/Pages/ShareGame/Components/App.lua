local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local AppTempCommon = CorePackages.AppTempCommon
local Modules = CoreGui.RobloxGui.Modules

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local ShareGame = Modules.Settings.Pages.ShareGame
local Constants = require(ShareGame.Constants)

local EventStream = require(AppTempCommon.Temp.EventStream)

local LayoutProvider = require(ShareGame.Components.LayoutProvider)

local FFlagLuaInviteModalEnabled = settings():GetFFlag("LuaInviteModalEnabledV384")

local ShareGameContainer
local ShareGamePageFrame
if FFlagLuaInviteModalEnabled then
	ShareGameContainer = require(ShareGame.Components.ShareGameContainer)
else
	ShareGamePageFrame = require(ShareGame.Components.ShareGamePageFrame)
end

local ShareGameApp = Roact.PureComponent:extend("App")

function ShareGameApp:render()
	local analytics = self.props.analytics
	local pageTarget = self.props.pageTarget

	local pageFrame = nil
	if self.props.isPageOpen then
		if FFlagLuaInviteModalEnabled then
			pageFrame = Roact.createElement(ShareGameContainer, {
				analytics = analytics,
				zIndex = Constants.SHARE_GAME_Z_INDEX,
			})
		else
			pageFrame = Roact.createElement(ShareGamePageFrame, {
				analytics = analytics,
				zIndex = Constants.SHARE_GAME_Z_INDEX,
			})
		end
	end

	return Roact.createElement(LayoutProvider, nil, {
		Roact.createElement(Roact.Portal, {
			target = pageTarget,
		}, {
			ShareGamePageFrame = pageFrame,
		})
	})
end

function ShareGameApp:didMount()
	self.eventStream = EventStream.new()
end

function ShareGameApp:willUnmount()
	self.eventStream:releaseRBXEventStream()
end

local connector = RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		isPageOpen = state.Page.IsOpen,
	}
end)

return connector(ShareGameApp)
