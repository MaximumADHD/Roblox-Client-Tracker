local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local ReportConfirmationContainer = require(script.Parent.ReportConfirmationContainer)

local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

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
	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	return Roact.createElement(UIBlox.Style.Provider, {
		style = appStyle,
		}, {
			reportConfirmationContainer = Roact.createElement(ReportConfirmationContainer, self.props)
		})
end

return ReportConfirmationScreen
