local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Toggle = require(Foundation.Components.Toggle)
local ToggleSize = require(Foundation.Enums.ToggleSize)

local function Story(props)
	local controls = props.controls
	local isChecked, setIsChecked = React.useState(false)

	return React.createElement(Toggle, {
		isChecked = isChecked,
		isDisabled = controls.isDisabled,
		onActivated = function()
			setIsChecked(not isChecked)
		end,
		size = controls.size,
		label = controls.label or "",
	})
end

return {
	summary = "Toggle component",
	story = Story,
	controls = {
		isDisabled = false,
		label = "Label",
		size = Dash.values(ToggleSize),
	},
}
