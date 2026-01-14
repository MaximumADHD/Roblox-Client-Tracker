local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local Tooltip = require(Foundation.Components.Tooltip)
local View = require(Foundation.Components.View)

-- Used as a constant on purpose; otherwise a new table will be created each render, causing extra renders.
local shortcut = { Enum.KeyCode.F2, Enum.KeyCode.One, Enum.KeyCode.ButtonR3 }

return {
	summary = "Tooltip",
	stories = {
		{
			name = "Base",
			story = function(props)
				return React.createElement(
					View,
					{
						Size = UDim2.new(1, 0, 0, 300),
						tag = "row align-x-right align-y-center",
					},
					React.createElement(
						Tooltip,
						{
							title = props.controls.title,
							shortcut = shortcut,
							side = props.controls.side,
							align = props.controls.align,
							text = "Generally we should avoid tooltips with long titles and bodys. Consider using other affordances for sharing contextual information when content expands beyond a few lines.",
						},
						React.createElement(
							View,
							{ tag = "auto-xy bg-surface-100 radius-medium" },
							React.createElement(Icon, {
								name = "icons/controls/voice/microphone_off_light",
								size = IconSize.Medium,
							})
						)
					)
				)
			end,
		} :: unknown,
		{
			name = "Only title",
			story = function(props)
				return React.createElement(
					Tooltip,
					{
						title = props.controls.text,
						shortcut = shortcut,
						side = props.controls.side,
						align = props.controls.align,
					},
					React.createElement(
						View,
						{ tag = "auto-xy bg-surface-100 radius-medium" },
						React.createElement(Icon, {
							name = "icons/controls/voice/microphone_off_light",
							size = IconSize.Medium,
						})
					)
				)
			end,
		},
		{
			name = "Short text",
			story = function(props)
				return React.createElement(
					View,
					{
						Size = UDim2.new(1, 0, 0, 300),
						tag = "row align-x-center align-y-center",
					},
					React.createElement(
						Tooltip,
						{
							title = "Test",
							shortcut = shortcut,
							side = props.controls.side,
							align = props.controls.align,
							text = "Hi!",
						},
						React.createElement(
							View,
							{ tag = "auto-xy bg-surface-100 radius-medium" },
							React.createElement(Icon, {
								name = "icons/controls/voice/microphone_off_light",
								size = IconSize.Medium,
							})
						)
					)
				)
			end,
		},
	},
	controls = {
		title = "Title",
		side = Dash.values(PopoverSide),
		align = Dash.values(PopoverAlign),
	},
}
