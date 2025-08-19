local ButtonRoot = script.Parent
local App = ButtonRoot.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)

local Images = require(App.ImageSet.Images)
local useCursor = require(App.SelectionCursor.useCursor)

local ControlState = require(Core.Control.Enum.ControlState)
local GenericButton = require(Core.Button.GenericButton)
local validateImage = require(Core.ImageSet.Validator.validateImage)
local withStyle = require(Core.Style.withStyle)

local ComboButton = Roact.PureComponent:extend("ComboButton")

local BUTTON_GAP = 1
local CORNER_RADIUS = UDim.new(0, 8)
local OVERFLOW_WIDTH = 39

local BUTTON_STATE_COLOR = {
	[ControlState.Default] = "ContextualPrimaryDefault",
	[ControlState.Hover] = "ContextualPrimaryOnHover",
}

local CONTENT_STATE_COLOR = { [ControlState.Default] = "ContextualPrimaryContent" }

ComboButton.validateProps = t.strictInterface({
	button = t.strictInterface({
		-- The icon of the button
		icon = t.optional(validateImage),
		-- The text of the button
		text = t.optional(t.string),

		-- Is the button disabled
		isDisabled = t.optional(t.boolean),

		-- The activated callback for the button
		onActivated = t.callback,
	}),
	overflow = t.strictInterface({
		-- The icon of the button
		icon = t.optional(validateImage),

		-- Is the button disabled
		isDisabled = t.optional(t.boolean),

		-- The activated callback for the button
		onActivated = t.callback,
	}),

	-- The position of the component
	position = t.optional(t.UDim2),

	-- The size of the entire component including button and overflow
	size = t.optional(t.UDim2),

	-- The layout order of the component
	layoutOrder = t.optional(t.number),

	-- the selectionCursor to use
	cursor = t.optional(t.table),
})

ComboButton.defaultProps = {
	size = UDim2.fromScale(1, 1),
}

function ComboButton:init()
	self:setState({ buttonControlState = ControlState.Initialize, overflowControlState = ControlState.Initialize })

	self.onButtonStateChanged = function(oldState, newState)
		self:setState({ buttonControlState = newState })
	end

	self.onOverflowStateChanged = function(oldState, newState)
		self:setState({ overflowControlState = newState })
	end
end

function ComboButton:render()
	return withStyle(function(style)
		return self:renderWithProviders(style, nil, nil)
	end)
end

function ComboButton:renderWithProviders(style, getSelectionCursor, getCursor)
	local size = self.props.size
	local buttonSize = UDim2.new(1, -BUTTON_GAP - OVERFLOW_WIDTH, 1, 0)
	local overflowSize = UDim2.new(0, OVERFLOW_WIDTH, 1, 0)

	return Roact.createElement("Frame", {
		LayoutOrder = self.props.layoutOrder,
		Position = self.props.position,
		Size = size,
		BackgroundTransparency = 1,
	}, {
		Button = Roact.createElement(GenericButton, {
			Position = UDim2.fromScale(0, 0),
			Size = buttonSize,
			buttonImage = Images["component_assets/bulletLeft_17"],
			buttonStateColorMap = BUTTON_STATE_COLOR,
			contentStateColorMap = CONTENT_STATE_COLOR,
			hoverImage = Images["component_assets/bulletLeft_17"],
			icon = self.props.button.icon,
			isDisabled = self.props.button.isDisabled,
			isHoverBackgroundEnabled = true,
			onActivated = self.props.button.onActivated,
			onStateChanged = self.onButtonStateChanged,
			SelectionImageObject = self.props.cursor,
			text = self.props.button.text,
			ZIndex = 0,
		}),

		Overflow = Roact.createElement(GenericButton, {
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.fromScale(1, 0),
			Size = overflowSize,
			ZIndex = 0,
			buttonImage = Images["component_assets/bulletRight_17"],
			buttonStateColorMap = BUTTON_STATE_COLOR,
			contentStateColorMap = CONTENT_STATE_COLOR,
			hoverImage = Images["component_assets/bulletRight_17"],
			icon = self.props.overflow.icon or Images["icons/actions/truncationExpand"],
			isDisabled = self.props.overflow.isDisabled,
			isHoverBackgroundEnabled = true,
			onActivated = self.props.overflow.onActivated,
			onStateChanged = self.onOverflowStateChanged,
			SelectionImageObject = self.props.cursor,
		}),
	})
end
function ComboButtonFunctionalWrapper(props)
	local cursor = useCursor(CORNER_RADIUS)
	return Roact.createElement(
		ComboButton,
		Cryo.Dictionary.join(props, {
			cursor = cursor,
		})
	)
end

local ComboButtonOuterWrapper = Roact.PureComponent:extend("ComboButtonOuterWrapper")

ComboButtonOuterWrapper.validateProps = ComboButton.validateProps

function ComboButtonOuterWrapper:render()
	return Roact.createElement(ComboButtonFunctionalWrapper, self.props)
end

return ComboButtonOuterWrapper
