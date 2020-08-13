local App = script:FindFirstAncestor("App")
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local t = require(Packages.t)
local Roact = require(Packages.Roact)
local enumerate = require(Packages.enumerate)

local Interactable = require(Core.Control.Interactable)

local ControlState = require(Core.Control.Enum.ControlState)
local getContentStyle = require(Core.Button.getContentStyle)
local getIconSize = require(App.ImageSet.getIconSize)
local enumerateValidator = require(UIBlox.Utility.enumerateValidator)
local validateImage = require(Core.ImageSet.Validator.validateImage)

local withStyle = require(Core.Style.withStyle)
local HoverButtonBackground = require(Core.Button.HoverButtonBackground)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local IconSize = require(App.ImageSet.Enum.IconSize)

local IconButton = Roact.PureComponent:extend("IconButton")
IconButton.debugProps = enumerate("debugProps", {
	"controlState",
})

IconButton.validateProps = t.strictInterface({
	-- The state change callback for the button
	onStateChanged = t.optional(t.callback),

	-- Is the button visually disabled
	isDisabled = t.optional(t.boolean),

	colorStyleDefault = t.optional(t.string),
	colorStyleHover = t.optional(t.string),

	--A Boolean value that determines whether user events are ignored and sink input
	userInteractionEnabled = t.optional(t.boolean),

	-- The activated callback for the button
	onActivated = t.optional(t.callback),

	anchorPoint = t.optional(t.Vector2),
	layoutOrder = t.optional(t.number),
	position = t.optional(t.UDim2),
	size = t.optional(t.UDim2),
	icon = t.optional(validateImage),
	iconSize = t.optional(enumerateValidator(IconSize)),
	iconColor3 = t.optional(t.Color3),
	iconTransparency = t.optional(t.number),

	-- Override the default controlState
	[IconButton.debugProps.controlState] = t.optional(enumerateValidator(ControlState)),
})

IconButton.defaultProps = {
	anchorPoint = Vector2.new(0, 0),
	layoutOrder = 0,
	position = UDim2.new(0, 0, 0, 0),
	size = nil,
	icon = "",
	iconSize = IconSize.Medium,

	colorStyleDefault = "SystemPrimaryDefault",
	colorStyleHover = "SystemPrimaryDefault",
	iconColor3 = nil,
	iconTransparency = nil,

	isDisabled = false,
	userInteractionEnabled = true,

	[IconButton.debugProps.controlState] = nil,
}

function IconButton:init()
	self:setState({
		controlState = ControlState.Initialize
	})

	self.onStateChanged = function(oldState, newState)
		self:setState({
			controlState = newState,
		})
		if self.props.onStateChanged then
			self.props.onStateChanged(oldState, newState)
		end
	end

	local iconSizeToSizeScale = {
		[IconSize.Small] = 1,
		[IconSize.Medium] = 2,
		[IconSize.Large] = 3,
		[IconSize.XLarge] = 4,
		[IconSize.XXLarge] = 5,
	}
	self.getSize = function(iconSizeMeasurement)
		if self.props.size then
			return self.props.size
		end

		local iconSize = self.props.iconSize
		local extents = iconSizeMeasurement + 4 * iconSizeToSizeScale[iconSize]
		return UDim2.fromOffset(extents, extents)
	end
end

function IconButton:render()
	return withStyle(function(style)
		local iconSizeMeasurement = getIconSize(self.props.iconSize)
		local size = self.getSize(iconSizeMeasurement)
		local currentState = self.props[IconButton.debugProps.controlState] or self.state.controlState

		local iconStateColorMap = {
			[ControlState.Default] = self.props.colorStyleDefault,
			[ControlState.Hover] = self.props.colorStyleHover,
		}

		local iconStyle = getContentStyle(iconStateColorMap, currentState, style)

		return Roact.createElement(Interactable, {
			AnchorPoint = self.props.anchorPoint,
			LayoutOrder = self.props.layoutOrder,
			Position = self.props.position,
			Size = size,

			isDisabled = self.props.isDisabled,
			onStateChanged = self.onStateChanged,
			userInteractionEnabled = self.props.userInteractionEnabled,
			BackgroundTransparency = 1,
			AutoButtonColor = false,

			[Roact.Event.Activated] = self.props.onActivated,
		}, {
			sizeConstraint = Roact.createElement("UISizeConstraint", {
				MinSize = Vector2.new(iconSizeMeasurement, iconSizeMeasurement),
			}),
			imageLabel = Roact.createElement(ImageSetComponent.Label, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				Size = UDim2.fromOffset(iconSizeMeasurement, iconSizeMeasurement),
				BackgroundTransparency = 1,
				Image = self.props.icon,
				ImageColor3 = self.props.iconColor3 or iconStyle.Color,
				ImageTransparency = self.props.iconTransparency or iconStyle.Transparency,
			}),
			background = currentState == ControlState.Hover and Roact.createElement(HoverButtonBackground),
		})
	end)
end

return IconButton
