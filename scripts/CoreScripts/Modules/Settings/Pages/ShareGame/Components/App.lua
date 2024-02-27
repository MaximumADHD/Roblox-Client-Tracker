local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local AppTempCommon = CorePackages.AppTempCommon
local Modules = CoreGui.RobloxGui.Modules

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local ShareGame = Modules.Settings.Pages.ShareGame
local Constants = require(ShareGame.Constants)

local GetFFlagRemoveAppTempCommonTemp =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagRemoveAppTempCommonTemp
local DEPRECATED_EventStream = require(AppTempCommon.Temp.EventStream)
local EventStream = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventStream

local LayoutProvider = require(ShareGame.Components.LayoutProvider)

local ShareGameContainer = require(ShareGame.Components.ShareGameContainer)

local ShareGameApp = Roact.PureComponent:extend("App")

function ShareGameApp:render()
	local analytics = self.props.analytics
	local pageTarget = self.props.pageTarget

	local pageFrame = nil
	if self.props.isPageOpen then
		pageFrame = Roact.createElement(ShareGameContainer, {
			analytics = analytics,
			zIndex = Constants.SHARE_GAME_Z_INDEX,
		})
	end

	return Roact.createElement(LayoutProvider, nil, {
		Roact.createElement(Roact.Portal, {
			target = pageTarget,
		}, {
			ShareGamePageFrame = pageFrame,
		}),
	})
end

function ShareGameApp:didMount()
	self.eventStream = if GetFFlagRemoveAppTempCommonTemp()
		then EventStream.new(RbxAnalyticsService) :: any
		else DEPRECATED_EventStream.new() :: any
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
