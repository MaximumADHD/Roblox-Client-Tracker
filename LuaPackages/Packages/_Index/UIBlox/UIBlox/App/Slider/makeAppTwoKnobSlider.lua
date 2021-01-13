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

local function makeAppTwoKnobSlider(trackFillThemeKey)
	local twoKnobAppSliderComponent = Roact.PureComponent:extend("TwoKnobAppSliderFor" .. trackFillThemeKey)
	local appSliderComponent = makeAppSlider(trackFillThemeKey, true)
	local twoKnobSliderInterface = t.strictInterface({
		--value of the first knob (must be less than or equal to upperValue)
		lowerValue = t.number,
		--value of the second knob (must be greater than or equal to lowerValue)
		upperValue = t.number,
		min = t.number,
		max = t.number,
		stepInterval = t.optional(t.numberPositive),
		onValueChanged = t.callback,
		onDragStartLower = t.optional(t.callback),
		onDragStartUpper = t.optional(t.callback),
		onDragEnd = t.optional(t.callback),
		isDisabled = t.optional(t.boolean),

		width = t.optional(t.UDim),
		position = t.optional(t.UDim2),
		anchorPoint = t.optional(t.Vector2),
		layoutOrder = t.optional(t.integer),

		[Roact.Ref] = t.optional(t.table),
		NextSelectionUp = t.optional(t.table),
		NextSelectionDown = t.optional(t.table),
		focusController = t.optional(t.table),

		--Internal Only - Don't Pass In
		style = validateStyle
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

	return wrapStyle(twoKnobAppSliderComponent)
end

return makeAppTwoKnobSlider