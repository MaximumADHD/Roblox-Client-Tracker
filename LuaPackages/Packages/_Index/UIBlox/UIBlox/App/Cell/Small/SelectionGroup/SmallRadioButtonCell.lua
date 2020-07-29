local SelectionGroup = script.Parent
local Small = SelectionGroup.Parent
local Cell = Small.Parent
local App = Cell.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Images = require(Packages.UIBlox.App.ImageSet.Images)

local GenericSelectionCell = require(Packages.UIBlox.Core.Cell.GenericSelectionCell)

local DEFAULT_IMAGE = Images["component_assets/circle_24_stroke_1"]
local SELECTED_IMAGE = Images["component_assets/circle_16"]
local DEFAULT_IMAGE_SIZE = 24
local SELECTED_IMAGE_SIZE = 16
local CELL_SIZE = 56

local SmallRadioButtonCell = Roact.PureComponent:extend("SmallRadioButtonCell")

SmallRadioButtonCell.validateProps = t.strictInterface({
	-- Unique key to identify this selection.
	key = t.string,

	-- Text to display
	text = t.optional(t.string),

	-- Callback for when this selection is activated.
	onActivated = t.optional(t.callback),

	-- Whether this selection is selected or not.
	isSelected = t.optional(t.boolean),

	-- If this cell is disabled
	isDisabled = t.optional(t.boolean),

	-- The LayoutOrder.
	layoutOrder = t.optional(t.number),

	-- optional parameters for RoactGamepad
	[Roact.Ref] = t.optional(t.table),
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
})

SmallRadioButtonCell.defaultProps = {
	text = "",
	isSelected = false,
}

function SmallRadioButtonCell:init()
	self.onSetValue = function()
		self.props.onActivated(self.props.key)
	end
end

function SmallRadioButtonCell:render()
	assert(self.validateProps(self.props))

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, CELL_SIZE),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		LayoutOrder = self.props.layoutOrder,
	}, {
		GenericSelectionCell = Roact.createElement(GenericSelectionCell, {
			isSelected = self.props.isSelected,
			isDisabled = self.props.isDisabled,
			defaultImage = DEFAULT_IMAGE,
			selectedImage = SELECTED_IMAGE,
			defaultImageSize = DEFAULT_IMAGE_SIZE,
			selectedImageSize = SELECTED_IMAGE_SIZE,
			text = self.props.text,
			onActivated = self.onSetValue,

			[Roact.Ref] = self.props[Roact.Ref],
			NextSelectionUp = self.props.NextSelectionUp,
			NextSelectionDown = self.props.NextSelectionDown,
			NextSelectionLeft = self.props.NextSelectionLeft,
			NextSelectionRight = self.props.NextSelectionRight,
		}),
	})
end

return SmallRadioButtonCell