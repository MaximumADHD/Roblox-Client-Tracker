local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local View = require(Foundation.Components.View)
local ScrollView = require(Foundation.Components.ScrollView)
local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local function StoryScrolling(props)
	local controls = props.controls

	return React.createElement(View, {
		tag = "row gap-large auto-xy",
	}, {
		Vertical = React.createElement(ScrollView, {
			Size = UDim2.new(0, 120, 0, 120),
			layout = {
				FillDirection = Enum.FillDirection.Vertical,
			},
			scroll = {
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				CanvasSize = UDim2.fromOffset(0, 0),
				ScrollingDirection = Enum.ScrollingDirection.Y,
				scrollBarVisibility = controls.scrollBarVisibility,
			},
		}, {
			React.createElement(View, {
				Size = UDim2.fromOffset(120, 75),
				backgroundStyle = {
					Transparency = 0,
					Color3 = Color3.new(0, 1, 1),
				},
			}),
			React.createElement(View, {
				Size = UDim2.fromOffset(120, 75),
				backgroundStyle = {
					Transparency = 0,
					Color3 = Color3.new(1, 0, 1),
				},
			}),
		}),
		Horizontal = React.createElement(ScrollView, {
			Size = UDim2.new(0, 120, 0, 120),
			layout = {
				FillDirection = Enum.FillDirection.Horizontal,
			},
			scroll = {
				AutomaticCanvasSize = Enum.AutomaticSize.X,
				CanvasSize = UDim2.fromOffset(0, 0),
				ScrollingDirection = Enum.ScrollingDirection.X,
				scrollBarVisibility = controls.scrollBarVisibility,
			},
		}, {
			React.createElement(View, {
				Size = UDim2.fromOffset(120, 75),
				backgroundStyle = {
					Transparency = 0,
					Color3 = Color3.new(0, 1, 1),
				},
			}),
			React.createElement(View, {
				Size = UDim2.fromOffset(120, 75),
				backgroundStyle = {
					Transparency = 0,
					Color3 = Color3.new(1, 0, 1),
				},
			}),
		}),
	})
end

return {
	summary = "ScrollView",
	stories = {
		Scrolling = {
			name = "Scrolling",
			story = StoryScrolling,
		},
	},
	controls = {
		scrollBarVisibility = {
			"Auto",
			"Always",
			"None",
		},
	},
}
