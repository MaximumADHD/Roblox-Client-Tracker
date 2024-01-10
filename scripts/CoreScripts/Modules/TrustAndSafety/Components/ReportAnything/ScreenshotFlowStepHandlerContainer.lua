local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)

local ScreenshotFlowStepHandler = require(script.Parent.ScreenshotFlowStepHandler)

local GetFFlagEnableStyleProviderCleanUp =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableStyleProviderCleanUp
local AppDarkTheme = if GetFFlagEnableStyleProviderCleanUp()
	then nil
	else require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = if GetFFlagEnableStyleProviderCleanUp()
	then nil
	else require(CorePackages.Workspace.Packages.Style).Fonts.Gotham
local renderWithCoreScriptsStyleProvider =
	require(script.Parent.Parent.Parent.Parent.Common.renderWithCoreScriptsStyleProvider)

local ScreenshotFlowStepHandlerContainer = Roact.PureComponent:extend("ScreenshotFlowStepHandlerContainer")

export type Props = ScreenshotFlowStepHandler.Props

function ScreenshotFlowStepHandlerContainer:render()
	if GetFFlagEnableStyleProviderCleanUp() then
		return renderWithCoreScriptsStyleProvider({
			ScreenshotFlowStepHandlerContainer = Roact.createElement(ScreenshotFlowStepHandler, self.props),
		})
	else
		local appStyle = {
			Theme = AppDarkTheme,
			Font = AppFont,
		}

		return Roact.createElement(UIBlox.Style.Provider, {
			style = appStyle,
		}, {
			ScreenshotFlowStepHandlerContainer = Roact.createElement(ScreenshotFlowStepHandler, self.props),
		})
	end
end

return ScreenshotFlowStepHandlerContainer
