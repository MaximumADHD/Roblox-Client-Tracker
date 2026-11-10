local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Parent.React)

local Checkbox = require(Framework.UI.Components.Checkbox)
local Image = require(Framework.UI.Components.Image)
local Pane = require(Framework.UI.Components.Pane)
local Tooltip = require(Framework.UI.Components.Tooltip)

local Checkboxes = React.PureComponent:extend("Checkboxes")

function Checkboxes:init()
	self.state = {
		KEY1 = false,
		KEY2 = false,
		KEY3 = Checkbox.Indeterminate,
		KEY4 = true,
	}

	self.onClick = function(key)
		self:setState({
			[key] = not self.state[key],
		})
	end
end

function Checkboxes:render()
	return React.createElement(Pane, {
		[React.Tag] = "X-Column X-FitY X-Pad",
	}, {
		Disabled = React.createElement(Checkbox, {
			Checked = self.state["KEY1"],
			Disabled = true,
			Key = "KEY1",
			LayoutOrder = 1,
			OnClick = self.onClick,
			Text = "Disabled",
		}),
		Default = React.createElement(Checkbox, {
			Checked = self.state["KEY2"],
			Key = "KEY2",
			LayoutOrder = 2,
			OnClick = self.onClick,
			Text = "Clickable",
		}),
		Indeterminate = React.createElement(Checkbox, {
			Checked = self.state["KEY3"],
			Key = "KEY3",
			LayoutOrder = 3,
			OnClick = self.onClick,
			Text = "Mixed",
		}),
		NoLabel = React.createElement(Checkbox, {
			Checked = self.state["KEY4"],
			Key = "KEY4",
			LayoutOrder = 4,
			OnClick = self.onClick,
		}),
		WithTooltip = React.createElement(Checkbox, {
			Checked = self.state["KEY5"],
			Key = "KEY5",
			LayoutOrder = 5,
			OnClick = self.onClick,
			Text = "Tooltip",
		}, {
			Tooltip = React.createElement(Tooltip, {
				Text = "This checkbox has a tooltip",
			}),
		}),
		WithHelpIcon = React.createElement(Checkbox, {
			Checked = self.state["KEY6"],
			Key = "KEY6",
			LayoutOrder = 6,
			OnClick = self.onClick,
			Text = "Help Icon",
		}, {
			Image = React.createElement(Image, {
				AnchorPoint = Vector2.new(0, 0.5),
				ImageColor3 = Color3.new(1, 1, 1),
				Image = "rbxasset://textures/AlignTool/Help.png",
				Position = UDim2.new(1, 4, 0.5, 0),
				Size = UDim2.fromOffset(14, 14),
			}),
		}),
		Wrapped = React.createElement(Checkbox, {
			Checked = self.state["KEY7"],
			Key = "KEY7",
			LayoutOrder = 7,
			OnClick = self.onClick,
			Text = "Call me Ishmael. Some years ago—never mind how long precisely—having little or no money in my purse, and nothing particular to interest me on shore, I thought I would sail about a little and see the watery part of the world. It is a way I have of driving off the spleen and regulating the circulation.",
			TextWrapped = true,
		}),
	})
end

return Checkboxes
