local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local CheckboxRow = require(script.Parent.CheckboxRow)

return {
	summary = "Row with an image, description, and checkbox.",
	story = function(props)
		return Roact.createElement(CheckboxRow, {
			height = props.height,
			descriptionText = props.descriptionText,
			checkboxSelected = props.checkboxSelected,
		})
	end,
	controls = {
		height = 28,
		image = "icons/controls/microphone",
		descriptionText = "Description text",
		checkboxSelected = false,
	},
	props = {
		height = 28,
		checkboxSelected = false,
	},
}
