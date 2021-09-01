local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)

local UI = require(Framework.UI)
local Checkbox = UI.Checkbox
local Image = UI.Decoration.Image
local Pane = UI.Pane
local Tooltip = UI.Tooltip

local Checkboxes = Roact.PureComponent:extend("Checkboxes")

function Checkboxes:init()
	self.state = {
		KEY1 = false,
		KEY2 = false,
		KEY3 = Checkbox.Indeterminate,
		KEY4 = true,
	}

	self.onClick = function(key)
		self:setState({
			[key] = not self.state[key]
		})
	end
end

function Checkboxes:render()
	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		Layout = Enum.FillDirection.Vertical,
		Padding = 10,
		Spacing = 15
	}, {
		Disabled = Roact.createElement(Checkbox, {
			Checked = self.state["KEY1"],
			Disabled = true,
			Key = "KEY1",
			LayoutOrder = 1,
			OnClick = self.onClick,
			Text = "Disabled",
		}),
		Default = Roact.createElement(Checkbox, {
			Checked = self.state["KEY2"],
			Key = "KEY2",
			LayoutOrder = 2,
			OnClick = self.onClick,
			Text = "Clickable",
		}),
		Indeterminate = Roact.createElement(Checkbox, {
			Checked = self.state["KEY3"],
			Key = "KEY3",
			LayoutOrder = 3,
			OnClick = self.onClick,
			Text = "Mixed",
		}),
		NoLabel = Roact.createElement(Checkbox, {
			Checked = self.state["KEY4"],
			Key = "KEY4",
			LayoutOrder = 4,
			OnClick = self.onClick,
		}),
		WithTooltip = Roact.createElement(Checkbox, {
			Checked = self.state["KEY5"],
			Key = "KEY5",
			LayoutOrder = 5,
			OnClick = self.onClick,
			Text = "Tooltip",
		}, {
			Tooltip = Roact.createElement(Tooltip, {
				Text = "This checkbox has a tooltip"
			})
		}),
		WithHelpIcon = Roact.createElement(Checkbox, {
			Checked = self.state["KEY6"],
			Key = "KEY6",
			LayoutOrder = 6,
			OnClick = self.onClick,
			Text = "Help Icon",
		}, {
			Image = Roact.createElement(Image, {
				AnchorPoint = Vector2.new(0, 0.5),
				ImageColor3 = Color3.new(1, 1, 1),
				Image = "rbxasset://textures/AlignTool/Help.png",
				Position = UDim2.new(1, 4, 0.5, 0),
				Size = UDim2.fromOffset(14, 14),
			})
		}),
	})
end

return Checkboxes
