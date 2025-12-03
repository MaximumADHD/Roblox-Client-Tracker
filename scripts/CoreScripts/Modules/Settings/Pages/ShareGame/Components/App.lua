local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local Modules = CoreGui.RobloxGui.Modules

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local RoactAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy).RoactAppPolicy

local ShareGame = Modules.Settings.Pages.ShareGame
local Constants = require(ShareGame.Constants)

local AppFeaturePolicies = require(CorePackages.Workspace.Packages.UniversalAppPolicy).AppFeaturePolicies
local EventStream = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventStream

local LayoutProvider = require(ShareGame.Components.LayoutProvider)

local ShareGameContainer = require(ShareGame.Components.ShareGameContainer)

local ShareGameApp = Roact.PureComponent:extend("App")

local function wrapWithProviders(children)
	return Roact.createElement(LayoutProvider, nil, {
		PolicyProvider = Roact.createElement(RoactAppPolicy.Provider, {
			policy = {
				AppFeaturePolicies,
			},
		}, children),
	})
end

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

	return wrapWithProviders({
		Roact.createElement(Roact.Portal, {
			target = pageTarget,
		}, {
			ShareGamePageFrame = pageFrame,
		}),
	})
end

function ShareGameApp:didMount()
	self.eventStream = EventStream.new(RbxAnalyticsService) :: any
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
