local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)

local ScreenshotFlowStepHandler = require(script.Parent.ScreenshotFlowStepHandler)

local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

local ScreenshotFlowStepHandlerContainer = Roact.PureComponent:extend("ScreenshotFlowStepHandlerContainer")

export type Props = ScreenshotFlowStepHandler.Props

function ScreenshotFlowStepHandlerContainer:render()
	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	return Roact.createElement(UIBlox.Style.Provider, {
		style = appStyle,
		}, {
			ScreenshotFlowStepHandlerContainer = Roact.createElement(ScreenshotFlowStepHandler, self.props)
		})
end

return ScreenshotFlowStepHandlerContainer
