local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local ReportConfirmationContainer = require(script.Parent.ReportConfirmationContainer)

local GetFFlagEnableStyleProviderCleanUp =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableStyleProviderCleanUp
local AppDarkTheme = nil
local AppFont = nil
local renderWithCoreScriptsStyleProvider = nil
if not GetFFlagEnableStyleProviderCleanUp() then
	AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham
else
	renderWithCoreScriptsStyleProvider =
		require(script.Parent.Parent.Parent.Parent.Common.renderWithCoreScriptsStyleProvider)
end

local ReportConfirmationScreen = Roact.PureComponent:extend("ReportConfirmationScreen")

ReportConfirmationScreen.validateProps = t.interface({
	closeMenu = t.callback,
	player = t.interface({
		DisplayName = t.string,
		Name = t.string,
		UserId = t.number,
	}),
})

function ReportConfirmationScreen:render()
	if not GetFFlagEnableStyleProviderCleanUp() then
		local appStyle = {
			Theme = AppDarkTheme,
			Font = AppFont,
		}

		return Roact.createElement(UIBlox.Style.Provider, {
			style = appStyle,
		}, {
			reportConfirmationContainer = Roact.createElement(ReportConfirmationContainer, self.props),
		})
	else
		return renderWithCoreScriptsStyleProvider({
			reportConfirmationContainer = Roact.createElement(ReportConfirmationContainer, self.props),
		})
	end
end

return ReportConfirmationScreen
