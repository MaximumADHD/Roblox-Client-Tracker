local Slider = script.Parent
local App = Slider.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local Otter = require(Packages.Otter)
local t = require(Packages.t)

local GenericSlider = require(UIBlox.Core.Slider.GenericSlider)
local SliderTextInput = require(Slider.SliderTextInput)
local Images = require(App.ImageSet.Images)
local withStyle = require(UIBlox.Style.withStyle)

local validateStyle = require(App.Style.Validator.validateStyle)

local SPRING_PARAMETERS = {
	frequency = 5,
}

local divideTransparency = require(UIBlox.Utility.divideTransparency)
local lerp = require(UIBlox.Utility.lerp)

local function wrapStyle(component)
	return function(props)
		return withStyle(function(style)
			local joinedProps = Cryo.Dictionary.join(props, {
				style = style,
			})

			return Roact.createElement(component, joinedProps)
		end)
	end
end

local function makeAppSlider(trackFillThemeKey)
	-- Creates a slider using the specified theme key for the track fill color.
	local appSliderComponent = Roact.PureComponent:extend("AppSliderFor" .. trackFillThemeKey)
	appSliderComponent.validateProps = t.strictInterface({
		value = t.number,
		min = t.number,
		max = t.number,
		stepInterval = t.optional(t.numberPositive),
		onValueChanged = t.callback,
		isDisabled = t.optional(t.boolean),
		textInputEnabled = t.optional(t.boolean),

		width = t.optional(t.UDim),
		position = t.optional(t.UDim2),
		anchorPoint = t.optional(t.Vector2),
		layoutOrder = t.optional(t.integer),

		--Internal - do not pass in
		style = validateStyle,
	})

	appSliderComponent.defaultProps = {
		textInputEnabled = false,
		stepInterval = 1,
		width = UDim.new(1, 0),
	}

	function appSliderComponent:init()
		local setPressedProgress
		self.pressedProgress, setPressedProgress = Roact.createBinding(0)
		self.disabled, self.setDisabled = Roact.createBinding(self.props.isDisabled)
		self.style, self.setStyle = Roact.createBinding(self.props.style)

		local joinedBindings = Roact.joinBindings({
			disabled = self.disabled,
			pressedProgress = self.pressedProgress,
			style = self.style,
		})

		self.trackColor = joinedBindings:map(function(values)
			return values.style.Theme.UIMuted.Color
		end)

		self.trackTransparency = joinedBindings:map(function(values)
			return divideTransparency(
				values.style.Theme.UIMuted.Transparency,
				values.disabled and 2 or 1)
		end)

		self.trackFillColor = joinedBindings:map(function(values)
			return values.style.Theme[trackFillThemeKey].Color
		end)

		self.trackFillTransparency = joinedBindings:map(function(values)
			return divideTransparency(
				values.style.Theme[trackFillThemeKey].Transparency,
				values.disabled and 2 or 1)
		end)

		self.knobColor = joinedBindings:map(function(values)
			-- The knob, when unpressed, is white on all themes.
			local unpressedColor = Color3.new(1, 1, 1)
			local pressedColor = values.style.Theme[trackFillThemeKey].Color

			return unpressedColor:lerp(pressedColor, values.pressedProgress)
		end)

		self.knobTransparency = joinedBindings:map(function(values)
			return divideTransparency(
				values.style.Theme[trackFillThemeKey].Transparency,
				values.disabled and 2 or 1)
		end)

		self.knobShadowTransparency = joinedBindings:map(function(values)
			if values.disabled then
				return 1
			else
				return lerp(values.style.Theme.DropShadow.Transparency, 1, values.pressedProgress)
			end
		end)

		self.pressedMotor = Otter.createSingleMotor(0)
		self.pressedMotor:onStep(setPressedProgress)

		self.onDragStart = function()
			self.pressedMotor:setGoal(Otter.spring(1, SPRING_PARAMETERS))
		end

		self.onDragEnd = function()
			self.pressedMotor:setGoal(Otter.spring(0, SPRING_PARAMETERS))
		end
	end

	function appSliderComponent:render()
		local props = self.props

		local sliderProps = {
			value = props.value,
			min = props.min,
			max = props.max,
			stepInterval = props.stepInterval,
			isDisabled = props.isDisabled,

			onValueChanged = props.onValueChanged,
			onDragStart = self.onDragStart,
			onDragEnd = self.onDragEnd,

			trackImage = Images["component_assets/circle_16"],
			trackColor = self.trackColor,
			trackTransparency = self.trackTransparency,
			trackSliceCenter = Rect.new(8, 8, 8, 8),

			trackFillImage = Images["component_assets/circle_16"],
			trackFillColor = self.trackFillColor,
			trackFillTransparency = self.trackFillTransparency,
			trackFillSliceCenter = Rect.new(8, 8, 8, 8),

			knobImage = Images["component_assets/circle_28_padding_10"],
			knobColor = self.knobColor,
			knobTransparency = self.knobTransparency,

			knobImagePadding = 10,

			knobShadowImage = Images["component_assets/dropshadow_28"],
			knobShadowTransparency = self.knobShadowTransparency,
		}

		if not self.props.textInputEnabled then
			sliderProps.width = props.width
			sliderProps.position = props.position
			sliderProps.anchorPoint = props.anchorPoint
			sliderProps.layoutOrder = props.layoutOrder

			return Roact.createElement(GenericSlider, sliderProps)
		else
			sliderProps.width = UDim.new(1, -(56 + 12))

			return Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(
					props.width.Scale,
					props.width.Offset,
					0,
					44
				),
				AnchorPoint = props.anchorPoint,
				LayoutOrder = props.layoutOrder,
				Position = props.position,
			}, {
				Slider = Roact.createElement(GenericSlider, sliderProps),
				TextInput = Roact.createElement(SliderTextInput, {
					position = UDim2.new(1, 0, 0.5, 0),
					anchorPoint = Vector2.new(1, 0.5),
					value = props.value,
					min = props.min,
					max = props.max,
					disabled = props.isDisabled,
					stepInterval = props.stepInterval,
					onValueChanged = props.onValueChanged,
				})
			})
		end
	end

	function appSliderComponent:didMount()
		self.pressedMotor:start()
	end

	function appSliderComponent:didUpdate(prevProps)
		if prevProps.style ~= self.props.style then
			self.setStyle(self.props.style)
		end

		if prevProps.isDisabled ~= self.props.isDisabled then
			self.setDisabled(self.props.isDisabled)

			if self.props.isDisabled then
				self.pressedMotor:setGoal(Otter.spring(0, SPRING_PARAMETERS))
			end
		end
	end

	function appSliderComponent:willUnmount()
		self.pressedMotor:destroy()
	end

	return wrapStyle(appSliderComponent)
end

return makeAppSlider
