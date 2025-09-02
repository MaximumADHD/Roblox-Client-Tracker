local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local ScreenshotFlowStepHandler = require(script.Parent.ScreenshotFlowStepHandler)

local ScreenshotFlowStepHandlerContainer = React.PureComponent:extend("ScreenshotFlowStepHandlerContainer")

local CoreScriptsRootProvider = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusRoot = FocusNavigationUtils.FocusRoot
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum

export type Props = ScreenshotFlowStepHandler.Props

function ScreenshotFlowStepHandlerContainer:render()
	return React.createElement(CoreScriptsRootProvider, {}, {
		FocusNavigationCoreScriptsWrapper = React.createElement(FocusRoot, {
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.CentralOverlay,
			isIsolated = true,
			isAutoFocusRoot = true,
		}, {

			ScreenshotFlowStepHandlerContainer = React.createElement(ScreenshotFlowStepHandler, self.props),
		}),
	})
end

return ScreenshotFlowStepHandlerContainer
