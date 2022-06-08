local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local ReportActionAreYouSure = require(script.Parent.ReportActionAreYouSure)

return {
	summary = "Post-report input confirmation",
	story = function(props)
		return Roact.createElement("Frame", {
			Size = UDim2.new(0, 16*50, 0, 9*50),
			BackgroundTransparency = 1,
		}, {
			ReportActionAreYouSure = Roact.createElement(ReportActionAreYouSure, {})
		})
	end,
	controls = {},
	props = {},
}
