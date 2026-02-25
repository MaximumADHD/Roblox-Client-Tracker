local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local CursorComponent = require(script.Parent.CursorComponent)

return {
	summary = "Selection cursors for different types of UI elements",
	story = function(props)
		local controls = props.controls

		return React.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(100, 50),
		}, {
			Frame = React.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, -20, 1, -20),
				Position = UDim2.fromOffset(10, 10),
			}, {
				Cursor = React.createElement(CursorComponent, {
					cornerRadius = UDim.new(0, controls.cornerRadius),
					offset = controls.offset,
					borderWidth = controls.borderWidth,
					isVisible = true,
				}),
			}),
		})
	end,
	controls = {
		cornerRadius = 8,
		offset = 3,
		borderWidth = 2,
	},
}
