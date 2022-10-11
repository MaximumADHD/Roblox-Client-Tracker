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
local UIBloxConfig = require(UIBlox.UIBloxConfig)

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
		value = t.number,
		min = t.number,
		max = t.number,
		onValueChanged = t.callback,
		onDragStart = t.optional(t.callback),
		onDragEnd = t.optional(t.callback),
		stepInterval = t.optional(t.numberPositive),
		textInputEnabled = t.optional(t.boolean),
		isDisabled = t.optional(t.boolean),

		width = t.optional(t.UDim),
		position = t.optional(t.UDim2),
		anchorPoint = t.optional(t.Vector2),
		layoutOrder = t.optional(t.integer),

		forwardedRef = t.optional(t.table),
		NextSelectionUp = t.optional(t.table),
		NextSelectionDown = t.optional(t.table),

		customTrack = t.optional(t.table),
		customKnobColorLower = t.optional(t.Color3),
		customPressedKnobShadowTransparencyLower = t.optional(t.number),
		customKnobHeight = t.optional(t.number),
		customKnobBorderSize = t.optional(t.number),
		customKnobBorderColor = t.optional(t.Color3),
		--Internal Only - Don't Pass In
		style = validateStyle,
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
