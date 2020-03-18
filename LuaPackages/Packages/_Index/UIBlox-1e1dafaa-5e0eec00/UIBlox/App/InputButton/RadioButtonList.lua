local Packages = script.Parent.Parent.Parent.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local RadioButton = require(script.parent.RadioButton)

local RadioButtonList = Roact.PureComponent:extend("RadioButtonList")

local validateButton = t.strictInterface({
	label = t.string,
	isDisabled = t.optional(t.boolean),
})

local validateProps = t.strictInterface({
	radioButtons = t.array(t.union(t.string, validateButton)),
	onActivated = t.callback,
	elementSize = t.UDim2,
	selectedValue = t.optional(t.number),
	layoutOrder = t.optional(t.number)
})

function RadioButtonList:init()
	self.state = {
		currentValue = self.props.selectedValue or 0,
	}

	local disabledIndices = {}
	for i, v in ipairs(self.props.radioButtons) do
		disabledIndices[i] = type(v) == "table" and v.isDisabled or false
	end
	self.state.disabledIndices = disabledIndices

	self.doLogic = function(key)
		if self.state.disabledIndices[key] then return end
		self:setState({
			currentValue = key,
		})
		self.props.onActivated(key)
	end
end

function RadioButtonList:render()
	assert(validateProps(self.props))

	local radioButtons = {}
	radioButtons.layout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder
	})

	for i, value in ipairs(self.props.radioButtons) do
		radioButtons["RadioButton"..i] = Roact.createElement(RadioButton, {
			text = type(value) == "table" and value.label or value,
			isSelected = i == self.state.currentValue,
			isDisabled = self.state.disabledIndices[i],
			onActivated = self.doLogic,
			size = self.props.elementSize,
			layoutOrder = i,
			key = i,
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		LayoutOrder = self.props.layoutOrder,
	}, radioButtons)
end

return RadioButtonList