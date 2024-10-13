local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local function Story(props)
	return React.createElement(View, {
		AutomaticSize = Enum.AutomaticSize.XY,
		GroupTransparency = props.GroupTransparency,
		padding = 10,
		stroke = {
			Color = Color3.new(1, 1, 1),
			Transparency = 0.3,
			Thickness = 2,
		},
	}, {
		React.createElement(View, {
			Size = UDim2.new(0, 100, 0, 100),
			backgroundStyle = {
				Transparency = 0.8,
				Color3 = Color3.new(1, 1, 1),
			},
			tag = "row align-x-center align-y-center",
		}, {
			React.createElement(Text, {
				textStyle = {
					Color3 = Color3.new(1, 1, 1),
				},
				fontStyle = {
					Font = Enum.Font.BuilderSansMedium,
					FontSize = 24,
					LineHeight = 1,
				},
				Text = "View",
			}),
		}),
	})
end

local function StoryGuiState(props)
	local guiState, setGuiState = React.useBinding(ControlState.Initialize :: ControlState)

	local function onStateChanged(new: ControlState)
		setGuiState(new)
	end

	return React.createElement(View, {
		Size = UDim2.new(0, 120, 0, 120),
		LayoutOrder = 2,
		GroupTransparency = props.GroupTransparency,
		backgroundStyle = {
			Transparency = 0,
			Color3 = Color3.fromRGB(120, 0, 180),
		},
		layout = {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		},
		onStateChanged = onStateChanged,
	}, {
		React.createElement(Text, {
			textStyle = {
				Color3 = Color3.new(1, 1, 1),
			},
			Text = guiState:map(function(state)
				return tostring(state)
			end),
		}),
	})
end

return {
	summary = "View",
	stories = {
		Basic = {
			name = "Basic Use",
			story = function(props)
				local transparency = props.controls.transparency

				return React.createElement(View, {
					tag = "auto-xy row gap-large",
				}, {
					Basic = React.createElement(Story, {
						GroupTransparency = transparency,
					}),
					GuiState = React.createElement(StoryGuiState, {
						GroupTransparency = transparency,
					}),
				})
			end,
		},
	},
	controls = {
		transparency = {
			0,
			0.25,
			0.75,
		},
	},
}
