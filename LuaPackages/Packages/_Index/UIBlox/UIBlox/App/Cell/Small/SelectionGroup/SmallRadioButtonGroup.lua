local SelectionGroup = script.Parent
local Small = SelectionGroup.Parent
local Cell = Small.Parent
local App = Cell.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local SmallRadioButtonCell = require(UIBlox.App.Cell.Small.SelectionGroup.SmallRadioButtonCell)

local SmallRadioButtonGroup = Roact.PureComponent:extend("SmallRadioButtonGroup")

local buttonInterface = t.strictInterface({
	text = t.string,
	key = t.string,
	isDisabled = t.optional(t.boolean),
})

SmallRadioButtonGroup.validateProps = t.strictInterface({
	-- List of text, key pairs that will be used for each radio button.
	items = t.optional(t.array(t.tuple(buttonInterface))),

	-- Which key is currently selected.
	selectedValue = t.optional(t.string),

	-- Callback for when a cell is activated.
	onActivated = t.callback,

	-- Layout order for this component.
	layoutOrder = t.optional(t.number),
})

SmallRadioButtonGroup.defaultProps = {
	selectedValue = nil,
}

function SmallRadioButtonGroup:render()
	assert(self.validateProps(self.props))

	local smallRadioButtonCellGroup = {}
	smallRadioButtonCellGroup.layout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, 1),
	})
	for index, button in ipairs(self.props.items) do
		smallRadioButtonCellGroup["smallRadioButtonCell"..button.key] = Roact.createElement(SmallRadioButtonCell, {
			key = button.key,
			text = button.text,
			onActivated = self.props.onActivated,
			isSelected = self.props.selectedValue == button.key,
			isDisabled = button.isDisabled,
			layoutOrder = index,
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		LayoutOrder = self.props.layoutOrder,
	}, smallRadioButtonCellGroup)
end

return SmallRadioButtonGroup