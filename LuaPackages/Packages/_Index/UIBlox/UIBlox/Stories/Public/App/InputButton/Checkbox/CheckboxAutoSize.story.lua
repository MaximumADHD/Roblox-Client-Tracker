local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local Checkbox = require(Packages.UIBlox.App.InputButton.Checkbox)

local CheckboxDemo = Roact.PureComponent:extend("CheckboxDemo")

function CheckboxDemo:init()
	self:setState({
		isSelected = false,
	})
end

function CheckboxDemo:render()
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
	}, {
		Checkbox = Roact.createElement(Checkbox, {
			text = self.props.Text,
			isSelected = self.state.isSelected,
			onActivated = function(selected)
				self:setState({
					isSelected = selected,
				})
			end,
		}),
	})
end

return {
	name = "Checkbox",
	summary = "These checkboxes are sized based on the size of text",
	stories = {
		Single = {
			name = "Single Line",
			story = Roact.createElement(CheckboxDemo, {
				Text = "Short Option.",
			}),
		},
		Multi = {
			name = "Multi-Line",
			story = Roact.createElement(CheckboxDemo, {
				Text = "This is a textbox with a very long setting beside it that will span many lines.",
			}),
		},
	},
}
