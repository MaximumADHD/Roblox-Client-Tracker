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
	return Roact.createElement(Checkbox, {
		text = "Interactable",
		isSelected = self.state.isSelected,
		onActivated = function(selected)
			self:setState({
				isSelected = selected,
			})
		end,
		layoutOrder = 6,
		size = UDim2.fromOffset(300, 30),
	})
end

return {
	stories = {
		CheckboxDefault = Roact.createElement(Checkbox, {
			text = "Default",
			isSelected = false,
			isDisabled = false,
			onActivated = function(selected) end,
			layoutOrder = 2,
			size = UDim2.fromOffset(300, 30),
		}),

		CheckboxSelected = Roact.createElement(Checkbox, {
			text = "Selected",
			isSelected = true,
			isDisabled = false,
			onActivated = function(selected) end,
			layoutOrder = 3,
			size = UDim2.fromOffset(300, 30),
		}),

		CheckboxDisabled = Roact.createElement(Checkbox, {
			text = "Disabled",
			isSelected = false,
			isDisabled = true,
			onActivated = function(selected) end,
			layoutOrder = 4,
			size = UDim2.fromOffset(300, 30),
		}),

		CheckboxSelectedDisabled = Roact.createElement(Checkbox, {
			text = "Selected and Disabled",
			isSelected = true,
			isDisabled = true,
			onActivated = function(selected) end,
			layoutOrder = 5,
			size = UDim2.fromOffset(300, 30),
		}),

		CheckBoxInteractable = CheckboxDemo,
	},
}
