--!nonstrict
local Slider = script.Parent
local App = Slider.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)

local makeAppSlider = require(Slider.makeAppSlider)
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

local function makeAppTwoKnobSlider(trackFillThemeKey)
	local twoKnobAppSliderComponent = Roact.PureComponent:extend("TwoKnobAppSliderFor" .. trackFillThemeKey)
	local appSliderComponent = makeAppSlider(trackFillThemeKey, true)
	local twoKnobSliderInterface = t.strictInterface({
		-- The current value of the knob of lesser value on the slider.
		-- Must be greater than or equal to `min`, less than or equal to `max`, and less than or equal to `upperValue`
		lowerValue = t.number,
		-- The current value of the knob of higher value on the slider.
		-- Must be greater than or equal to `min`, less than or equal to `max`, and greater than or equal to `lowerValue`.
		upperValue = t.number,
		-- The minimum value of the slider. Must be less than `max`
		min = t.number,
		-- The maximum value of the slider. Must be greater than `min`
		max = t.number,
		-- The step interval of the slider. Values will be rounded to this. Must be a positive number
		stepInterval = t.optional(t.numberPositive),
		-- A callback that will be invoked whenever the value of the slider is changed by user input.
		-- You should update the `lowerValue` and `upperValue` props in response to this callback.
		onValueChanged = t.callback,
		-- A callback that will be invoked when the lower slider knob is pressed
		onDragStartLower = t.optional(t.callback),
		-- A callback that will be invoked when the upper slider knob is pressed
		onDragStartUpper = t.optional(t.callback),
		-- A callback that will be invoked when the slider knob stops being pressed
		onDragEnd = t.optional(t.callback),
		-- Whether the slider is disabled or not
		isDisabled = t.optional(t.boolean),
		-- The width of the slider. Sliders have a fixed height of 36px
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
		-- focusController for RoactGamepad support
		focusController = t.optional(t.table),

		--Internal Only - Don't Pass In
		style = validateStyle,
	})

	local function valueValidator(props)
		if props.lowerValue > props.upperValue then
			return false, "The upper value must be greater than or equal to the lower"
		end

		return true
	end

	twoKnobAppSliderComponent.validateProps = t.intersection(twoKnobSliderInterface, valueValidator)

	twoKnobAppSliderComponent.defaultProps = {
		stepInterval = 1,
		width = UDim.new(1, 0),
	}

	function twoKnobAppSliderComponent:render()
		return Roact.createElement(appSliderComponent, self.props)
	end

	return wrapStyleAndRef(twoKnobAppSliderComponent)
end

return makeAppTwoKnobSlider
