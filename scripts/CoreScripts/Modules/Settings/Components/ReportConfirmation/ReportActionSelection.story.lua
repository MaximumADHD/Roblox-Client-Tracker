local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local ReportActionSelection = require(script.Parent.ReportActionSelection)

return {
	summary = "Post-report actions and confirmation",
	story = function(props)
		return Roact.createElement("Frame", {
			Size = UDim2.new(0, 16*50, 0, 9*50),
			BackgroundTransparency = 1,
		}, {
			reportActionSelection = Roact.createElement(ReportActionSelection, {
				height = props.height,
				descriptionText = props.descriptionText,
				checkboxSelected = props.checkboxSelected,
			})
		})
	end,
	controls = {},
	props = {},
}
