local Slider = script.Parent
local App = Slider.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)

local makeAppSlider = require(Slider.makeAppSlider)
local SliderTextInput = require(Slider.SliderTextInput)
local withStyle = require(UIBlox.Core.Style.withStyle)
local validateStyle = require(App.Style.Validator.validateStyle)

local function wrapStyleAndRef(component)
	return Roact.forwardRef(function(props, ref)
		return withStyle(function(style)
			local joinedProps = Cryo.Dictionary.join(props, {
				style = style,
				forwardedRef = ref,
			})

			return Roact.createElement(component, joinedProps)
		end)
	end)
end

local function makeAppOneKnobSlider(trackFillThemeKey)
	local oneKnobAppSliderComponent = Roact.PureComponent:extend("OneKnobAppSliderFor" .. trackFillThemeKey)
	local appSliderComponent = makeAppSlider(trackFillThemeKey, false)

	oneKnobAppSliderComponent.validateProps = t.strictInterface({
		-- The current value of the slider. Must be greater than or equal to `min` and less than or equal to `max`.
		value = t.number,
		-- The minimum value of the slider. Must be less than `max`.
		min = t.number,
		-- The maximum value of the slider. Must be greater than `min`.
		max = t.number,
		-- A callback that will be invoked whenever the value of the slider is changed by the user, either by dragging it or by typing a value into its input field.
		-- You should update the `value` prop in response to this callback.
		onValueChanged = t.callback,
		-- A callback that will be invoked when the slider knob is pressed
		onDragStart = t.optional(t.callback),
		-- A callback that will be invoked when the slider knob stops being pressed
		onDragEnd = t.optional(t.callback),
		-- The step interval of the slider. Values will be rounded to this. Must be a positive number.
		stepInterval = t.optional(t.numberPositive),
		-- Whether to show a text input field next to the slider
		textInputEnabled = t.optional(t.boolean),
		-- Whether the slider is disabled or not
		isDisabled = t.optional(t.boolean),
		-- The width of the slider. Sliders have a fixed height of 36px.
		width = t.optional(t.UDim),
		-- The position of the slider
		position = t.optional(t.UDim2),
		-- The anchor point of the slider
		anchorPoint = t.optional(t.Vector2),
		-- The layout order of the slider
		layoutOrder = t.optional(t.integer),

		forwardedRef = t.optional(t.table),
		-- Navigation parameter for RoactGamepad support
		NextSelectionUp = t.optional(t.table),
		-- Navigation parameter for RoactGamepad support
		NextSelectionDown = t.optional(t.table),

		customTrack = t.optional(t.table),
		customKnobColorLower = t.optional(t.Color3),
		customPressedKnobShadowTransparencyLower = t.optional(t.number),
		customKnobHeight = t.optional(t.number),
		customKnobBorderSize = t.optional(t.number),
		customKnobBorderColor = t.optional(t.Color3),
		-- Internal Only - Don't Pass In
		style = validateStyle,

		-- Some guiObject that encompasses the entire area we should be listening to input changed events on
		containerRef = t.optional(t.table),
	})

	oneKnobAppSliderComponent.defaultProps = {
		stepInterval = 1,
		width = UDim.new(1, 0),
		textInputEnabled = false,
	}

	function oneKnobAppSliderComponent:render()
		local props = self.props

		local sliderProps = {
			value = props.value,
			min = props.min,
			max = props.max,
			stepInterval = props.stepInterval,
			isDisabled = props.isDisabled,
			onValueChanged = props.onValueChanged,
			onDragStartLower = props.onDragStart,
			onDragEnd = props.onDragEnd,
			style = props.style,
			forwardedRef = props.forwardedRef,
			NextSelectionUp = props.NextSelectionUp,
			NextSelectionDown = props.NextSelectionDown,
			customTrack = props.customTrack,
			customKnobHeight = props.customKnobHeight,
			customKnobBorderColor = props.customKnobBorderColor,
			customKnobBorderSize = props.customKnobBorderSize,
			customKnobColorLower = props.customKnobColorLower,
			customPressedKnobShadowTransparencyLower = props.customPressedKnobShadowTransparencyLower,
			containerRef = props.containerRef,
		}

		if not props.textInputEnabled then
			sliderProps.width = props.width
			sliderProps.position = props.position
			sliderProps.anchorPoint = props.anchorPoint
			sliderProps.layoutOrder = props.layoutOrder
			return Roact.createElement(appSliderComponent, sliderProps)
		else
			sliderProps.width = UDim.new(1, -(56 + 12))
			return Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(props.width.Scale, props.width.Offset, 0, 44),
				AnchorPoint = props.anchorPoint,
				LayoutOrder = props.layoutOrder,
				Position = props.position,
			}, {
				Slider = Roact.createElement(appSliderComponent, sliderProps),
				TextInput = Roact.createElement(SliderTextInput, {
					position = UDim2.new(1, 0, 0.5, 0),
					anchorPoint = Vector2.new(1, 0.5),
					value = props.value,
					min = props.min,
					max = props.max,
					disabled = props.isDisabled,
					stepInterval = props.stepInterval,
					onValueChanged = props.onValueChanged,
				}),
			})
		end
	end

	return wrapStyleAndRef(oneKnobAppSliderComponent)
end

return makeAppOneKnobSlider
