local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)

local ReportConfirmationContainer = require(script.Parent.ReportConfirmationContainer)

local renderWithCoreScriptsStyleProvider =
	require(script.Parent.Parent.Parent.Parent.Common.renderWithCoreScriptsStyleProvider)

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
	return renderWithCoreScriptsStyleProvider({
		reportConfirmationContainer = Roact.createElement(ReportConfirmationContainer, self.props),
	})
end

return ReportConfirmationScreen
