--!nonstrict
local InputButton = script.Parent
local App = InputButton.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Otter = require(Packages.Otter)
local Roact = require(Packages.Roact)
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

local Toggle = Roact.PureComponent:extend("Toggle")

Toggle.validateProps = t.strictInterface({
	-- Whether the toggle is currently selected
	isSelected = t.optional(t.boolean),
	-- Whether the toggle is disabled. When `true`, the `onActivated` callback
	-- will not be invoked, even if the user interacts with the toggle.
	isDisabled = t.optional(t.boolean),
	-- A function that will be called whenever the toggle is activated
	onActivated = t.callback,
	-- The layout order of the toggle, if it is being laid out by a UI layout
	layoutOrder = t.optional(t.integer),
	-- The anchor point of the toggle. Ignored if the toggle is being laid out by a UI layout.
	anchorPoint = t.optional(t.Vector2),
	-- The position of the toggle. Ignored if the toggle is being laid out by a UI layout.
	position = t.optional(t.UDim2),
})

function Toggle:init()
	local initialProgress = self.props.isSelected and 1 or 0
	self.state = {
		progress = initialProgress,
	}

	self.progressMotor = Otter.createSingleMotor(initialProgress)
	self.progressMotor:onStep(function(newValue)
		self:setState({
			progress = newValue,
		})
	end)

	self.setControlState = function(_, newState)
		self:setState({
			controlState = newState,
		})
	end
end

function Toggle:render()
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		local controlState = self.state.controlState
		local progress = self.state.progress

		local transparencyDivisor = if controlState == ControlState.Disabled then 2 else 1
		local trackTheme = if controlState == ControlState.Hover then theme.SecondaryOnHover else theme.SecondaryDefault
		local trackColor = trackTheme.Color

		local targetTransparency = divideTransparency(trackTheme.Transparency, transparencyDivisor)
		local knobTransparency = divideTransparency(theme.ContextualPrimaryDefault.Transparency, transparencyDivisor)

		-- We need to fade the track outline out when the toggle is selected, because
		-- otherwise it creates a visually jarring border around the filled track.
		local trackTransparency = lerp(targetTransparency, 1, progress)
		local fillTransparency = lerp(1, knobTransparency, progress)

		local knobPosition = KNOB_OFF_POSITION:lerp(KNOB_ON_POSITION, progress)

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
						ImageTransparency = trackTransparency,
						ImageColor3 = trackColor,
						Position = UDim2.fromScale(0.5, 0.5),
						AnchorPoint = Vector2.new(0.5, 0.5),
					}),
					Fill = Roact.createElement(ImageSetComponent.Label, {
						Size = UDim2.fromOffset(60, 36),
						BackgroundTransparency = 1,
						Image = Images[TRACK_FILL_IMAGE_ID],
						ScaleType = Enum.ScaleType.Slice,
						SliceCenter = TRACK_FILL_SLICE_CENTER,
						ImageColor3 = theme.ContextualPrimaryDefault.Color,
						ImageTransparency = fillTransparency,
						Position = UDim2.fromScale(0.5, 0.5),
						AnchorPoint = Vector2.new(0.5, 0.5),
						ZIndex = 2,
					}),
					Knob = Roact.createElement(ImageSetComponent.Label, {
						Size = UDim2.fromOffset(44, 44),
						BackgroundTransparency = 1,
						Image = Images[KNOB_IMAGE_ID],
						ImageTransparency = knobTransparency,
						Position = knobPosition,
						AnchorPoint = Vector2.new(0, 0.5),
						ZIndex = 4,
					}),
					KnobShadow = Roact.createElement(ImageSetComponent.Label, {
						Size = UDim2.fromOffset(44, 44),
						BackgroundTransparency = 1,
						Image = Images[KNOB_SHADOW_IMAGE_ID],
						ImageTransparency = knobTransparency,
						Position = knobPosition,
						AnchorPoint = Vector2.new(0, 0.5),
						ZIndex = 3,
					}),
				},
			},
			isDisabled = self.props.isDisabled,
			onStateChanged = self.setControlState,
		})
	end)
end

function Toggle:didMount()
	self.progressMotor:start()
end

function Toggle:didUpdate(lastProps, lastState)
	if lastProps.isSelected ~= self.props.isSelected then
		local newProgress = self.props.isSelected and 1 or 0
		self.progressMotor:setGoal(Otter.spring(newProgress, SPRING_PARAMETERS))
	end
end

function Toggle:willUnmount()
	self.progressMotor:destroy()
end

return Toggle
