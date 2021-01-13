local Knob = script.Parent
local Control = Knob.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local RoactGamepad = require(Packages.RoactGamepad)
local Images = require(App.ImageSet.Images)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local Interactable = require(UIBlox.Core.Control.Interactable)
local ControlState = require(UIBlox.Core.Control.Enum.ControlState)
local withStyle = require(UIBlox.Core.Style.withStyle)
local validateColor = require(UIBlox.Core.Style.Validator.validateColorInfo)
local BaseKnob = Roact.Component:extend("BaseKnob")

-- local validateColor = t.interface({
-- 	Color = t.Color3,
-- 	Transparency = t.number,
-- })

local ShadowColorMap = {
	[ControlState.Default] = {
		Color = Color3.fromRGB(0,0,0),
		Transparency = 0.7
	},
	[ControlState.Hover] = {
		Color = Color3.fromRGB(0,0,0),
		Transparency = 0.5
	}
}

local ShadowSizeMap = {
	[ControlState.Default] = UDim2.fromOffset(48, 48),
	[ControlState.Hover] = UDim2.fromOffset(48, 48),
	[ControlState.Pressed] = UDim2.fromOffset(0, 0),
	[ControlState.Disabled] = UDim2.fromOffset(0, 0),
	[ControlState.Selected] = UDim2.fromOffset(52, 52),
	[ControlState.SelectedPressed] = UDim2.fromOffset(42, 42),
}

local ShadowImageMap = {
	[ControlState.Default] = "component_assets/dropshadow_28",
	[ControlState.Hover] = "component_assets/dropshadow_28",
	[ControlState.Selected] = "component_assets/circle_52_stroke_3",
	[ControlState.SelectedPressed] = "component_assets/circle_42_stroke_3",
}

BaseKnob.validateProps = t.interface({
	-- The state change callback for the button
	onStateChanged = t.optional(t.callback),

	-- Is the button visually disabled
	isDisabled = t.optional(t.boolean),

	--A Boolean value that determines whether user events are ignored and sink input
	userInteractionEnabled = t.optional(t.boolean),

	-- The activated callback for the button
	onActivated = t.optional(t.callback),

	anchorPoint = t.optional(t.Vector2),
	layoutOrder = t.optional(t.number),
	position = t.optional(t.UDim2),


	colorMap = t.strictInterface({
		[ControlState.Default] = validateColor,
		[ControlState.Hover] = validateColor,
		[ControlState.Pressed] = validateColor,
		[ControlState.Disabled] = validateColor,
		[ControlState.Selected] = validateColor,
		[ControlState.SelectedPressed] = validateColor,
	}),

	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	[Roact.Ref] = t.optional(t.table),
})
BaseKnob.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5),
	userInteractionEnabled = true,
	isDisabled = false
}
function BaseKnob:init()
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
end

function BaseKnob:render()
	return withStyle(function(style)
		local color = self.props.colorMap[self.state.controlState] or self.props.colorMap[ControlState.Default]
		local shadowSize = ShadowSizeMap[self.state.controlState] or ShadowSizeMap[ControlState.Default]
		local shadowImage = ShadowImageMap[self.state.controlState] or ShadowImageMap[ControlState.Default]
		local isGamepadSelected = self.state.controlState == ControlState.Selected or
			self.state.controlState == ControlState.SelectedPressed
		local shadowColor = ShadowColorMap[self.state.controlState] or ShadowColorMap[ControlState.Default]
		if isGamepadSelected then
			shadowColor = style.Theme.SelectionCursor
		end
		if UIBloxConfig.enableExperimentalGamepadSupport then
			return Roact.createElement("Frame",{
				AnchorPoint = self.props.anchorPoint,
				LayoutOrder = self.props.layoutOrder,
				Position = self.props.position,
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(28, 28)
			}, {
				KnobShadow = Roact.createElement(ImageSetComponent.Label, {
					Size = shadowSize,
					Position = UDim2.new(0.5, 0, 0.5, not isGamepadSelected and 2 or 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Image = Images[shadowImage],
					ImageColor3 = shadowColor.Color,
					ImageTransparency = shadowColor.Transparency,
					Active = true,
					BackgroundTransparency = 1,
				}),
				KnobButton = Roact.createElement(RoactGamepad.Focusable[Interactable], {
					Size = UDim2.fromScale(1,1),

					isDisabled = self.props.isDisabled,
					onStateChanged = self.onStateChanged,
					userInteractionEnabled = self.props.userInteractionEnabled,
					BackgroundTransparency = 1,

					Image = Images["component_assets/circle_29"],
					ImageColor3 = color.Color,
					ImageTransparency = color.Transparency,

					[Roact.Ref] = self.props[Roact.Ref],
					[Roact.Event.Activated] = self.props.onActivated,

					NextSelectionLeft = self.props.NextSelectionLeft,
					NextSelectionRight = self.props.NextSelectionRight,
					NextSelectionUp = self.props.NextSelectionUp,
					NextSelectionDown = self.props.NextSelectionDown,
				}),
			})
		else
			return Roact.createElement("Frame",{
				AnchorPoint = self.props.anchorPoint,
				LayoutOrder = self.props.layoutOrder,
				Position = self.props.position,
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(28, 28)
			}, {
				KnobShadow = Roact.createElement(ImageSetComponent.Label, {
					Size = shadowSize,
					Position = UDim2.new(0.5, 0, 0.5, not isGamepadSelected and 2 or 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Image = Images[shadowImage],
					ImageColor3 = shadowColor.Color,
					ImageTransparency = shadowColor.Transparency,
					BackgroundTransparency = 1,
				}),
				KnobButton = Roact.createElement(Interactable, {
					Size = UDim2.fromScale(1,1),

					isDisabled = self.props.isDisabled,
					onStateChanged = self.onStateChanged,
					userInteractionEnabled = self.props.userInteractionEnabled,
					BackgroundTransparency = 1,

					Image = Images["component_assets/circle_29"],
					ImageColor3 = color.Color,
					ImageTransparency = color.Transparency,

					[Roact.Event.Activated] = self.props.onActivated,
				}),
			})
		end
	end)
end

return BaseKnob