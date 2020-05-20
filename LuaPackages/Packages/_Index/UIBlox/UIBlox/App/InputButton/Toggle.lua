local InputButton = script.Parent
local App = InputButton.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Otter = require(Packages.Otter)
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)

local withStyle = require(Packages.UIBlox.Core.Style.withStyle)
local Images = require(Packages.UIBlox.App.ImageSet.Images)
local Controllable = require(Packages.UIBlox.Core.Control.Controllable)
local ControlState = require(Packages.UIBlox.Core.Control.Enum.ControlState)
local ImageSetComponent = require(Packages.UIBlox.Core.ImageSet.ImageSetComponent)

local divideTransparency = require(Packages.UIBlox.Utility.divideTransparency)
local lerp = require(Packages.UIBlox.Utility.lerp)

local SPRING_PARAMETERS = {
	frequency = 4,
}

local KNOB_OFF_POSITION = UDim2.new(0, -4, 0.5, 0)
local KNOB_ON_POSITION = UDim2.new(0, 20, 0.5, 0)

local TRACK_IMAGE_ID = "component_assets/circle_36_stroke_1"
local TRACK_SLICE_CENTER = Rect.new(18, 18, 18, 18)

local TRACK_FILL_IMAGE_ID = "component_assets/circle_36"
local TRACK_FILL_SLICE_CENTER = Rect.new(18, 18, 18, 18)

local KNOB_IMAGE_ID = "component_assets/circle_28_padding_10"
local KNOB_SHADOW_IMAGE_ID = "component_assets/dropshadow_28"

local validateProps = t.strictInterface({
	isSelected = t.optional(t.boolean),
	isDisabled = t.optional(t.boolean),
	onActivated = t.callback,

	layoutOrder = t.optional(t.integer),
	anchorPoint = t.optional(t.Vector2),
	position = t.optional(t.UDim2),
})

local InnerToggle = Roact.PureComponent:extend("Toggle")

function InnerToggle:init()
	local initialProgress = self.props.isSelected and 1 or 0
	local setProgress
	self.progress, setProgress = Roact.createBinding(initialProgress)

	self.style, self.setStyle = Roact.createBinding(self.props.style)
	self.controlState, self.setControlState = Roact.createBinding(self.state.controlState)

	local joinedBinding = Roact.joinBindings({
		progress = self.progress,
		style = self.style,
		controlState = self.controlState,
	})

	self.fillTransparency = joinedBinding:map(function(values)
		local baseTransparency = values.style.Theme.ContextualPrimaryDefault.Transparency
		local transparencyDivisor = values.controlState == ControlState.Disabled and 2 or 1
		return lerp(1, divideTransparency(baseTransparency, transparencyDivisor), values.progress)
	end)

	self.knobPosition = self.progress:map(function(value)
		return KNOB_OFF_POSITION:lerp(KNOB_ON_POSITION, value)
	end)

	self.knobTransparency = Roact.joinBindings({
		style = self.style,
		controlState = self.controlState,
	}):map(function(values)
		local baseTransparency = values.style.Theme.ContextualPrimaryDefault.Transparency
		local transparencyDivisor = values.controlState == ControlState.Disabled and 2 or 1
		return divideTransparency(baseTransparency, transparencyDivisor)
	end)

	-- We need to fade the track outline out when the toggle is selected, because
	-- otherwise it creates a visually jarring border around the filled track.
	self.trackTransparency = joinedBinding:map(function(values)
		local targetTransparency = values.controlState == ControlState.Hover
			and values.style.Theme.SecondaryOnHover.Transparency
			or values.style.Theme.SecondaryDefault.Transparency

		if values.controlState == ControlState.Disabled then
			targetTransparency = 1 - (1 - targetTransparency) / 2
		end

		return lerp(targetTransparency, 1, values.progress)
	end)

	self.trackColor = Roact.joinBindings({
		style = self.style,
		controlState = self.controlState,
	}):map(function(values)
		if values.controlState == ControlState.Hover then
			return values.style.Theme.SecondaryOnHover.Color
		else
			return values.style.Theme.SecondaryDefault.Color
		end
	end)

	self.fillColor = self.style:map(function(style)
		return style.Theme.ContextualPrimaryDefault.Color
	end)

	self.progressMotor = Otter.createSingleMotor(initialProgress)
	self.progressMotor:onStep(setProgress)
end

function InnerToggle:render()
	return withStyle(function(style)
		return Roact.createElement(Controllable, {
			controlComponent = {
				component = "ImageButton",
				props = {
					BackgroundTransparency = 1,
					Image = "",
					Size = UDim2.fromOffset(60, 44),
					Position = self.props.position,
					LayoutOrder = self.props.layoutOrder,
					AnchorPoint = self.props.anchorPoint,
					[Roact.Event.Activated] = not self.props.isDisabled and self.props.onActivated,
				},
				children = {
					Track = Roact.createElement(ImageSetComponent.Label, {
						Size = UDim2.fromOffset(60, 36),
						BackgroundTransparency = 1,
						Image = Images[TRACK_IMAGE_ID],
						ScaleType = Enum.ScaleType.Slice,
						SliceCenter = TRACK_SLICE_CENTER,
						ImageTransparency = self.trackTransparency,
						ImageColor3 = self.trackColor,
						Position = UDim2.fromScale(0.5, 0.5),
						AnchorPoint = Vector2.new(0.5, 0.5),
					}),
					Fill = Roact.createElement(ImageSetComponent.Label, {
						Size = UDim2.fromOffset(60, 36),
						BackgroundTransparency = 1,
						Image = Images[TRACK_FILL_IMAGE_ID],
						ScaleType = Enum.ScaleType.Slice,
						SliceCenter = TRACK_FILL_SLICE_CENTER,
						ImageColor3 = self.fillColor,
						ImageTransparency = self.fillTransparency,
						Position = UDim2.fromScale(0.5, 0.5),
						AnchorPoint = Vector2.new(0.5, 0.5),
						ZIndex = 2,
					}),
					Knob = Roact.createElement(ImageSetComponent.Label, {
						Size = UDim2.fromOffset(44, 44),
						BackgroundTransparency = 1,
						Image = Images[KNOB_IMAGE_ID],
						ImageTransparency = self.knobTransparency,
						Position = self.knobPosition,
						AnchorPoint = Vector2.new(0, 0.5),
						ZIndex = 4,
					}),
					KnobShadow = Roact.createElement(ImageSetComponent.Label, {
						Size = UDim2.fromOffset(44, 44),
						BackgroundTransparency = 1,
						Image = Images[KNOB_SHADOW_IMAGE_ID],
						ImageTransparency = self.knobTransparency,
						Position = self.knobPosition,
						AnchorPoint = Vector2.new(0, 0.5),
						ZIndex = 3,
					}),
				}
			},
			isDisabled = self.props.isDisabled,
			onStateChanged = function(_, newState)
				self.setControlState(newState)
			end,
		})
	end)
end

function InnerToggle:didMount()
	self.progressMotor:start()
end

function InnerToggle:didUpdate(lastProps, lastState)
	if lastProps.isSelected ~= self.props.isSelected then
		local newProgress = self.props.isSelected and 1 or 0
		self.progressMotor:setGoal(Otter.spring(newProgress, SPRING_PARAMETERS))
	end

	if lastProps.style ~= self.props.style then
		self.setStyle(self.props.style)
	end
end

function InnerToggle:willUnmount()
	self.progressMotor:destroy()
end

local function injectUIBloxStyle(props)
	-- Validate props here, since the inner toggle receives these props plus
	-- the style prop!
	assert(validateProps(props))
	return withStyle(function(style)
		return Roact.createElement(InnerToggle, Cryo.Dictionary.join(props, {
			style = style,
		}))
	end)
end

return injectUIBloxStyle
