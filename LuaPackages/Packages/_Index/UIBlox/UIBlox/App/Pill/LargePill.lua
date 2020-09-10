local Pill = script.Parent
local App = Pill.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Images = require(App.ImageSet.Images)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local ControlState = require(UIBlox.Core.Control.Enum.ControlState)
local GenericButton = require(UIBlox.Core.Button.GenericButton)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)

local withStyle = require(UIBlox.Core.Style.withStyle)
local getContentStyle = require(Pill.getContentStyle)

local HEIGHT = 48
local PADDING = 24

local BUTTON_STATE_COLOR = {
	[ControlState.Default] = "SecondaryDefault",
	[ControlState.Hover] = "SecondaryOnHover",
}

local SELECTED_BUTTON_STATE_COLOR = {
	[ControlState.Default] = "UIDefault",
}

local CONTENT_STATE_COLOR = {
	[ControlState.Default] = "SecondaryContent",
	[ControlState.Hover] = "SecondaryOnHover",
}

local SELECTED_CONTENT_STATE_COLOR = {
	[ControlState.Default] = "SecondaryOnHover",
}

local LargePill = Roact.PureComponent:extend("LargePill")

LargePill.validateProps = t.strictInterface({
	-- Position in an ordered layout
	layoutOrder = t.optional(t.number),
	-- Width of the pill
	width = t.optional(t.UDim),
	-- Text shown in the Pill
	text = t.optional(t.string),
	-- Flag that indicates that the Pill is selected (background is filled)
	isSelected = t.optional(t.boolean),
	-- Flag that indicates that the Pill is still loading
	isLoading = t.optional(t.boolean),
	-- Flag that indicates that the Pill is disabled
	isDisabled = t.optional(t.boolean),
	-- BackgroundColor (used for the loading animation)
	backgroundColor = t.optional(t.Color3),
	-- Callback function when the Pill is clicked
	onActivated = t.callback,

	-- optional parameters for RoactGamepad
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	[Roact.Ref] = t.optional(t.table),
})

LargePill.defaultProps = {
	layoutOrder = 1,
	width = UDim.new(.5, 0),
	text = "",
	isSelected = false,
	isLoading = false,
	isDisabled = false,
}

function LargePill:init()
	self.state = {
		controlState = ControlState.Initialize
	}

	self.onStateChanged = function(oldState, newState)
		self:setState({
			controlState = newState,
		})
	end
end

function LargePill:render()
	local isSelected = self.props.isSelected
	local image = isSelected and Images["component_assets/circle_49"] or Images["component_assets/circle_49_stroke_1"]

	local buttonColors = isSelected and SELECTED_BUTTON_STATE_COLOR or BUTTON_STATE_COLOR
	local contentColors = isSelected and SELECTED_CONTENT_STATE_COLOR or CONTENT_STATE_COLOR

	return withStyle(function(style)
		local theme = style.Theme
		local currentState = self.state.controlState
		local textStyle = getContentStyle(contentColors, currentState, style)
		local size = UDim2.new(self.props.width, UDim.new(0, HEIGHT))
		local sliceCenter = Rect.new(24, 24, 25, 25)

		return Roact.createElement("Frame", {
			Size = size,
			BackgroundTransparency = 1,
			LayoutOrder = self.props.layoutOrder,
		}, {
			Button = Roact.createElement(GenericButton, {
				Size = size,
				SliceCenter = sliceCenter,
				isLoading = self.props.isLoading,
				isDisabled = self.props.isDisabled,
				text = self.props.text,
				onActivated = self.props.onActivated,
				buttonImage = image,
				buttonStateColorMap = buttonColors,
				contentStateColorMap = contentColors,
				onStateChanged = self.onStateChanged,
				NextSelectionLeft = self.props.NextSelectionLeft,
				NextSelectionRight = self.props.NextSelectionRight,
				NextSelectionUp = self.props.NextSelectionUp,
				NextSelectionDown = self.props.NextSelectionDown,
				[Roact.Ref] = self.props[Roact.Ref],
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, PADDING),
				}),
				Text = Roact.createElement(GenericTextLabel, {
					Size = UDim2.new(1, -2 * PADDING, 1, 0),
					BackgroundTransparency = 1,
					Text = self.props.text,
					fontStyle = style.Font.Header2,
					colorStyle = textStyle,
					LayoutOrder = 2,
					TextTruncate = Enum.TextTruncate.AtEnd,
				}),
			}),
			Mask = self.props.isLoading and Roact.createElement(ImageSetComponent.Label, {
				BackgroundTransparency = 1,
				Image = Images["component_assets/circle_49_mask"],
				ImageColor3 = self.props.backgroundColor or theme.BackgroundDefault.Color,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = sliceCenter,
				Size = size,
				ZIndex = 3,
			}),
		})
	end)
end

return LargePill