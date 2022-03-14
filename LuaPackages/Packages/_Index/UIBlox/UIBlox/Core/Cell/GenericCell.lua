local Cell = script.Parent
local Core = Cell.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)

local GenericTextLabel = require(Core.Text.GenericTextLabel.GenericTextLabel)
local Interactable = require(Core.Control.Interactable)
local validateColorInfo = require(UIBlox.Core.Style.Validator.validateColorInfo)
local validateFontInfo = require(UIBlox.Core.Style.Validator.validateFontInfo)

local GenericCell = Roact.PureComponent:extend("GenericCell")

local TOP_BOTTOM_PADDING = 12
local LEFT_RIGHT_PADDING = 24

GenericCell.validateProps = t.strictInterface({
	-- Callback for when this selection is activated.
	onActivated = t.optional(t.callback),

	-- Whether this selection is selected or not.
	isSelected = t.optional(t.boolean),

	-- If this cell is disabled.
	isDisabled = t.optional(t.boolean),

	-- Callback for when the Control State has changed.
	onStateChanged = t.callback,

	-- Center title text.
	titleText = t.optional(t.string),

	-- Center subtitle text.
	subtitleText = t.optional(t.string),

	-- Generic right content to render.
	renderRightContent = t.optional(t.callback),

	-- Width of generic right content to render,
	rightContentWidth = t.optional(t.number),

	-- Generic left content to render.
	renderLeftContent = t.optional(t.callback),

	-- Width of the generic left content to render.
	leftContentWidth = t.optional(t.number),

	-- Color style.
	colorStyle = validateColorInfo,

	-- Text Style for the title text.
	textStyle = t.optional(validateColorInfo),

	-- Font style for the title text.
	fontStyle = t.optional(validateFontInfo),

	-- Text style for the subtitle text.
	subtitleTextStyle = t.optional(validateColorInfo),

	-- Font style for the subtitle text.
	subtitleFontStyle = t.optional(validateFontInfo),

	-- Divider style.
	dividerStyle = t.table,

	-- optional parameters for RoactGamepad
	controlRef = t.optional(t.table),
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	SelectionImageObject = t.optional(t.table),
})

GenericCell.defaultProps = {
	rightContentWidth = 0,
	leftContentWidth = 0,
	isDisabled = false,
}

function GenericCell:render()
	assert(self.validateProps(self.props))

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}, {
		Interactable = Roact.createElement(Interactable, {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = self.props.colorStyle.Color,
			BackgroundTransparency = self.props.colorStyle.Transparency,
			BorderSizePixel = 0,
			AutoButtonColor = false,
			[Roact.Event.Activated] = (not self.props.isDisabled) and self.props.onActivated,
			[Roact.Ref] = self.props.controlRef,
			NextSelectionUp = self.props.NextSelectionUp,
			NextSelectionDown = self.props.NextSelectionDown,
			NextSelectionLeft = self.props.NextSelectionLeft,
			NextSelectionRight = self.props.NextSelectionRight,
			SelectionImageObject = self.props.SelectionImageObject,
			isDisabled = self.props.isDisabled,
			onStateChanged = self.props.onStateChanged,
		}, {
			Contents = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				LayoutOrder = 1,
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, LEFT_RIGHT_PADDING),
					PaddingRight = UDim.new(0, LEFT_RIGHT_PADDING),
					PaddingTop = UDim.new(0, TOP_BOTTOM_PADDING),
					PaddingBottom = UDim.new(0, TOP_BOTTOM_PADDING),
				}),
				UIListLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),
				Frame = Roact.createElement("Frame", {
					Size = UDim2.new(1, -self.props.rightContentWidth - self.props.leftContentWidth, 1, 0),
					BackgroundTransparency = 1,
					LayoutOrder = 2,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						FillDirection = Enum.FillDirection.Vertical,
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}),
					TitleText = self.props.titleText and Roact.createElement(GenericTextLabel, {
						Size = UDim2.new(1, 0, 1, 0),
						colorStyle = self.props.textStyle,
						fontStyle = self.props.fontStyle,
						Text = self.props.titleText,
						LayoutOrder = 1,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
					SubTitleText = self.props.subtitleText and Roact.createElement(GenericTextLabel, {
						Size = UDim2.new(1, 0, 1, 0),
						colorStyle = self.props.subtitleTextStyle,
						fontStyle = self.props.subtitleFontStyle,
						Text = self.props.subtitleText,
						LayoutOrder = 2,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
				}),
				RightContent = self.props.renderRightContent and self.props.renderRightContent(),
				LeftContent = self.props.renderLeftContent and self.props.renderLeftContent(),
			}),
			Divider = Roact.createElement("Frame", {
				Size = UDim2.new(1, -LEFT_RIGHT_PADDING, 0, 1),
				Position = UDim2.new(0, LEFT_RIGHT_PADDING, 1, -1),
				BorderSizePixel = 0,
				BackgroundColor3 = self.props.dividerStyle.Color,
				BackgroundTransparency = self.props.dividerStyle.Transparency,
			}),
		})
	})
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(GenericCell, Cryo.Dictionary.join(props, {
		controlRef = ref
	}))
end)