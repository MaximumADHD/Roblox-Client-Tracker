local Slider = script.Parent
local App = Slider.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Otter = require(Packages.Otter)

local Colors = require(App.Style.Colors)
local GenericSlider = require(UIBlox.Core.Slider.GenericSlider)
local Images = require(App.ImageSet.Images)

local SPRING_PARAMETERS = {
	frequency = 5,
}

local divideTransparency = require(UIBlox.Utility.divideTransparency)
local lerp = require(UIBlox.Utility.lerp)

local function makeAppSlider(trackFillThemeKey, isTwoKnobs)
	-- Creates a slider using the specified theme key for the track fill color.
	local appSliderComponent = Roact.PureComponent:extend("AppSliderFor" .. trackFillThemeKey)

	appSliderComponent.defaultProps = {
		textInputEnabled = false,
		stepInterval = 1,
		width = UDim.new(1, 0),
	}

	function appSliderComponent:init()
		local setPressedProgressLower, setPressedProgressUpper
		self.pressedProgressLower, setPressedProgressLower = Roact.createBinding(0)
		self.pressedProgressUpper, setPressedProgressUpper = Roact.createBinding(0)
		self.disabled, self.setDisabled = Roact.createBinding(self.props.isDisabled)
		self.style, self.setStyle = Roact.createBinding(self.props.style)

		local joinedBindings = Roact.joinBindings({
			disabled = self.disabled,
			pressedProgressLower = self.pressedProgressLower,
			pressedProgressUpper = self.pressedProgressUpper,
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

		self.knobColorLower = joinedBindings:map(function(values)
			-- The knob, when unpressed, is white on all themes.
			local unpressedColor = Color3.new(1, 1, 1)
			--If the slider is a SystemSlider, it should be pumice on pressed
			local pressedColor = Colors.Pumice
			if trackFillThemeKey ~= "SystemPrimaryDefault" then
				pressedColor = values.style.Theme[trackFillThemeKey].Color
			end

			return unpressedColor:lerp(pressedColor, values.pressedProgressLower)
		end)

		self.knobColorUpper = joinedBindings:map(function(values)
			-- The knob, when unpressed, is white on all themes.
			local unpressedColor = Color3.new(1, 1, 1)
			--If the slider is a SystemSlider, it should be pumice on pressed
			local pressedColor = Colors.Pumice
			if trackFillThemeKey ~= "SystemPrimaryDefault" then
				pressedColor = values.style.Theme[trackFillThemeKey].Color
			end

			return unpressedColor:lerp(pressedColor, values.pressedProgressUpper)
		end)

		self.knobTransparency = joinedBindings:map(function(values)
			return divideTransparency(
				values.style.Theme[trackFillThemeKey].Transparency,
				values.disabled and 2 or 1)
		end)

		self.knobShadowTransparencyLower = joinedBindings:map(function(values)
			if values.disabled then
				return 1
			else
				return lerp(values.style.Theme.DropShadow.Transparency, 1, values.pressedProgressLower)
			end
		end)

		self.knobShadowTransparencyUpper = joinedBindings:map(function(values)
			if values.disabled then
				return 1
			else
				return lerp(values.style.Theme.DropShadow.Transparency, 1, values.pressedProgressUpper)
			end
		end)

		self.pressedMotorLower = Otter.createSingleMotor(0)
		self.pressedMotorLower:onStep(setPressedProgressLower)

		self.pressedMotorUpper = Otter.createSingleMotor(0)
		self.pressedMotorUpper:onStep(setPressedProgressUpper)

		self.onDragStartLower = function()
			self.pressedMotorLower:setGoal(Otter.spring(1, SPRING_PARAMETERS))
		end

		self.onDragStartUpper = function()
			self.pressedMotorUpper:setGoal(Otter.spring(1, SPRING_PARAMETERS))
		end

		self.onDragEnd = function()
			self.pressedMotorLower:setGoal(Otter.spring(0, SPRING_PARAMETERS))
			self.pressedMotorUpper:setGoal(Otter.spring(0, SPRING_PARAMETERS))
		end
	end

	function appSliderComponent:render()
		local props = self.props
		local sliderProps = {
			min = props.min,
			max = props.max,
			stepInterval = props.stepInterval,
			isDisabled = props.isDisabled,
			width = props.width,
			position = props.position,
			anchorPoint = props.anchorPoint,
			layoutOrder = props.layoutOrder,

			onValueChanged = props.onValueChanged,
			onDragStartLower = self.onDragStartLower,
			onDragStartUpper = self.onDragStartUpper,
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
			knobColorLower = self.knobColorLower,
			knobColorUpper = self.knobColorUpper,
			knobTransparency = self.knobTransparency,

			knobImagePadding = 10,

			knobShadowImage = Images["component_assets/dropshadow_28"],
			knobShadowTransparencyLower = self.knobShadowTransparencyLower,
			knobShadowTransparencyUpper = self.knobShadowTransparencyUpper,
		}

		if isTwoKnobs then
			sliderProps.upperValue = props.upperValue
			sliderProps.lowerValue = props.lowerValue
		else
			sliderProps.lowerValue = props.value
		end

		return Roact.createElement(GenericSlider, sliderProps)
	end

	function appSliderComponent:didMount()
		self.pressedMotorLower:start()
		self.pressedMotorUpper:start()
	end

	function appSliderComponent:didUpdate(prevProps)
		if prevProps.style ~= self.props.style then
			self.setStyle(self.props.style)
		end

		if prevProps.isDisabled ~= self.props.isDisabled then
			self.setDisabled(self.props.isDisabled)

			if self.props.isDisabled then
				self.pressedMotorLower:setGoal(Otter.spring(0, SPRING_PARAMETERS))
				self.pressedMotorUpper:setGoal(Otter.spring(0, SPRING_PARAMETERS))
			end
		end
	end

	function appSliderComponent:willUnmount()
		self.pressedMotorLower:destroy()
		self.pressedMotorUpper:destroy()
	end

	return appSliderComponent
end

return makeAppSlider