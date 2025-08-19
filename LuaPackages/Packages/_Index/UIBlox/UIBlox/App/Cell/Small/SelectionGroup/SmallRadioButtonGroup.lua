--!nonstrict
local SelectionGroup = script.Parent
local Small = SelectionGroup.Parent
local Cell = Small.Parent
local App = Cell.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local RoactGamepad = require(Packages.RoactGamepad)
local t = require(Packages.t)

local CursorType = require(App.SelectionCursor.CursorType)
local useCursorByType = require(App.SelectionCursor.useCursorByType)

local SmallRadioButtonCell = require(UIBlox.App.Cell.Small.SelectionGroup.SmallRadioButtonCell)

local SmallRadioButtonGroup = Roact.PureComponent:extend("SmallRadioButtonGroup")

local buttonInterface = t.strictInterface({
	-- Text to display in the cell
	text = t.string,
	id = t.string,
	-- Boolean to represent if this cell is disabled
	isDisabled = t.optional(t.boolean),
})

SmallRadioButtonGroup.validateProps = t.strictInterface({
	-- A list of cells to create
	items = t.optional(t.array(t.tuple(buttonInterface))),

	-- Selected value in the group of cells
	selectedValue = t.optional(t.string),

	-- selectionCursor
	cursor = t.optional(t.table),

	-- Callback for when a cell is activated.
	-- The value passed to this callback function is whatever key used to create this cell.
	onActivated = t.callback,

	-- LayoutOrder of the `SmallRadioButtonGroup`
	layoutOrder = t.optional(t.number),

	-- If this cell should use the default control state
	useDefaultControlState = t.optional(t.boolean),

	-- optional parameters for RoactGamepad
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	frameRef = t.optional(t.table),

	-- Whether to enable RoactGamepad functionality
	isRoactGamepadEnabled = t.optional(t.boolean),
})

SmallRadioButtonGroup.defaultProps = {
	selectedValue = nil,
	isRoactGamepadEnabled = true,
}

function SmallRadioButtonGroup:init()
	self.gamepadRefs = self.props.isRoactGamepadEnabled and RoactGamepad.createRefCache() or {}
end

function SmallRadioButtonGroup:renderButtonCell(button, index, isRoactGamepadEnabled)
	return Roact.createElement(
		if isRoactGamepadEnabled then RoactGamepad.Focusable[SmallRadioButtonCell] else SmallRadioButtonCell,
		{
			id = button.id,
			text = button.text,
			onActivated = self.props.onActivated,
			isSelected = self.props.selectedValue == button.id,
			isDisabled = button.isDisabled,
			layoutOrder = index,
			useDefaultControlState = self.props.useDefaultControlState,

			[Roact.Ref] = self.gamepadRefs[index],
			NextSelectionUp = index > 1 and self.gamepadRefs[index - 1] or nil,
			NextSelectionDown = index < #self.props.items and self.gamepadRefs[index + 1] or nil,
			SelectionImageObject = self.props.cursor,
		}
	)
end

function SmallRadioButtonGroup:render()
	assert(self.validateProps(self.props))

	local smallRadioButtonCellGroup = {}
	smallRadioButtonCellGroup.layout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, 1),
	})

	local isRoactGamepadEnabled = self.props.isRoactGamepadEnabled
	for index, button in ipairs(self.props.items) do
		if not isRoactGamepadEnabled then
			self.gamepadRefs[index] = self.gamepadRefs[index] or Roact.createRef()
		end
		smallRadioButtonCellGroup["smallRadioButtonCell" .. button.id] =
			self:renderButtonCell(button, index, isRoactGamepadEnabled)
	end

	local isGamepad = isRoactGamepadEnabled and self.props.items and #self.props.items > 0
	return Roact.createElement(if isGamepad then RoactGamepad.Focusable.Frame else "Frame", {
		defaultChild = if isGamepad then self.gamepadRefs[1] else nil,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		LayoutOrder = self.props.layoutOrder,
		NextSelectionLeft = self.props.NextSelectionLeft,
		NextSelectionRight = self.props.NextSelectionRight,
		NextSelectionDown = self.props.NextSelectionDown,
		NextSelectionUp = self.props.NextSelectionUp,
		[Roact.Ref] = self.props.frameRef,
	}, smallRadioButtonCellGroup)
end

return Roact.forwardRef(function(props, ref)
	local cursor = useCursorByType(CursorType.SelectionCell)
	return Roact.createElement(SmallRadioButtonGroup, Cryo.Dictionary.join(props, { frameRef = ref, cursor = cursor }))
end)
