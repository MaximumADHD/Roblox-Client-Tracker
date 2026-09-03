local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local ColorNamespace = require(Foundation.Enums.ColorNamespace)
local CursorComponent = require(Foundation.Providers.Cursor.CursorComponent)
local View = require(Foundation.Components.View)

return {
	summary = "Selection cursors for different types of UI elements",
	story = function(props)
		local controls = props.controls

		return React.createElement(View, {
			Size = UDim2.fromOffset(100, 50),
		}, {
			-- The cursor draws outside its host, so inset the host to keep the stroke visible.
			CursorHost = React.createElement(View, {
				Size = UDim2.new(1, -20, 1, -20),
				Position = UDim2.fromOffset(10, 10),
			}, {
				Cursor = React.createElement(CursorComponent, {
					cornerRadius = UDim.new(0, controls.cornerRadius),
					offset = controls.offset,
					borderWidth = controls.borderWidth,
					isVisible = true,
					colorNamespace = controls.colorNamespace,
				}),
			}),
		})
	end,
	controls = {
		cornerRadius = 8,
		offset = 3,
		borderWidth = 2,
		colorNamespace = Dash.values(ColorNamespace),
	},
}
