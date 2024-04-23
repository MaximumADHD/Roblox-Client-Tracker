local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local ScreenshotFlowStepHandler = require(script.Parent.ScreenshotFlowStepHandler)

local renderWithCoreScriptsStyleProvider =
	require(script.Parent.Parent.Parent.Parent.Common.renderWithCoreScriptsStyleProvider)

local ScreenshotFlowStepHandlerContainer = Roact.PureComponent:extend("ScreenshotFlowStepHandlerContainer")

export type Props = ScreenshotFlowStepHandler.Props

function ScreenshotFlowStepHandlerContainer:render()
	return renderWithCoreScriptsStyleProvider({
		ScreenshotFlowStepHandlerContainer = Roact.createElement(ScreenshotFlowStepHandler, self.props),
	})
end

return ScreenshotFlowStepHandlerContainer
